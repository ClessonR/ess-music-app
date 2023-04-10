import { Component } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr'
import { AuthService } from '../guard/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  constructor(private builder: FormBuilder, private toastr: ToastrService,
    private authService: AuthService, private router: Router) {
    sessionStorage.clear();
  }

  loginForm = this.builder.group({
    email: this.builder.control('', Validators.compose([Validators.required, Validators.email])),
    password: this.builder.control('', Validators.compose([Validators.required, Validators.minLength(6)]))
  });

  async proceedlogin() {
    const email = this.loginForm.get('email')?.value;
    const password = this.loginForm.get('password')?.value;

    try {
      const response = await this.authService.login(email ?? "", password ?? "");
      if (response) {
        this.router.navigate(['initial-page']);
      } else {
        this.toastr.error('Erro ao efetuar login.');
      }
    } catch (error) {
      this.toastr.error('Erro ao efetuar login.');
          // Se acertar a senha:
          const validPassword = bcrypt.compareSync(this.loginform.value.password ?? '', this.userdata.password);
          if (validPassword) {
            // Se o usuário tiver permissão para entrar:
            if (this.userdata.isactive) {
              localStorage.setItem('username', this.userdata.id);
              localStorage.setItem('userrole', this.userdata.role);
              if(this.userdata.role === 'admin'){
                this.router.navigate(['/userAdmin']);
              } else {
                this.router.navigate(['/initial-page']);
              }
              
            } else {
              this.toastr.error('Por favor, renove seu cadastro na Dizer ou contate nosso suporte');
            }
          } else {
            this.toastr.error('Credênciais Inválidas ou Usuário não existente');
          }
        },
        (error) => {
          if (error.status === 404) {
            this.toastr.error('Credênciais Inválidas ou Usuário não existente');
          } else {
            console.error(error);
          }
        }
      ));
    }
  }

  ngOnDestroy(): void {
    this.subscription.unsubscribe();
  }
}

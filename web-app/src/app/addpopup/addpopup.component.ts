import { Component, OnInit, inject, Inject } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { AuthService } from '../service/auth.service';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-addpopup',
  templateUrl: './addpopup.component.html',
  styleUrls: ['./addpopup.component.css']
})
export class AddpopupComponent {
  constructor(private builder: FormBuilder, private service: AuthService,
    @Inject(MAT_DIALOG_DATA) public data: any, private toastr:ToastrService,
    private dialog:MatDialogRef<AddpopupComponent>) {

  }

  editdata: any;
  ngOnInit(): void {
    this.service.GetAllRole().subscribe(res => {
      this.rolelist = res;
    })
    if (this.data.usercode != null && this.data.usercode != '') {
      this.service.Getbycode(this.data.usercode).subscribe(res => {
        this.editdata = res;
        this.registerform.setValue({id:this.editdata.id, name:this.editdata.name, email:this.editdata.email,
        password:this.editdata.password, role:this.editdata.role, gender:this.editdata.gender,
        isactive:this.editdata.isactive})
      })
    }
  }
  rolelist: any;

  registerform = this.builder.group({
    id: this.builder.control(''),
    name: this.builder.control(''),
    password: this.builder.control(''),
    email: this.builder.control(''),
    gender: this.builder.control(''),
    role: this.builder.control('', Validators.required),
    isactive: this.builder.control(false)
  });

  adduser() {
    if(this.registerform.valid){
      this.service.Adduser(this.registerform.value).subscribe(res=>{
        this.toastr.success('Usuário cadastrado com sucesso!');
        this.dialog.close();
      })
    }else{
      this.toastr.warning('Por favor, selecione um cargo!')
    }
  }
}
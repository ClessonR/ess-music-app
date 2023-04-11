import { Component } from '@angular/core';
import { ResultadosPesquisaService } from '../resultados-pesquisa/resultados-pesquisa.service';

@Component({
  selector: 'app-playlist-user',
  templateUrl: './playlist-user.component.html',
  styleUrls: ['./playlist-user.component.css']
})
export class PlaylistUserComponent {
  constructor(private resultados: ResultadosPesquisaService){}

  pesquisar(){
    this.resultados.pesquisar()
  }
}

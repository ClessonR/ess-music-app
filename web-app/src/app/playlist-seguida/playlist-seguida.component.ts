import { Component } from '@angular/core';
import { ResultadosPesquisaService } from '../resultados-pesquisa/resultados-pesquisa.service';

@Component({
  selector: 'app-playlist-seguida',
  templateUrl: './playlist-seguida.component.html',
  styleUrls: ['./playlist-seguida.component.css']
})
export class PlaylistSeguidaComponent {
  constructor(private resultados: ResultadosPesquisaService){}

  pesquisar(){
    this.resultados.pesquisar()
  }
}

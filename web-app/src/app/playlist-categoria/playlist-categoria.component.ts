import { Component } from '@angular/core';
import { ResultadosPesquisaService } from '../resultados-pesquisa/resultados-pesquisa.service';

@Component({
  selector: 'app-playlist-categoria',
  templateUrl: './playlist-categoria.component.html',
  styleUrls: ['./playlist-categoria.component.css']
})
export class PlaylistCategoriaComponent {
 constructor(private resultados: ResultadosPesquisaService){}

 pesquisar(){
  this.resultados.pesquisar()
}
}

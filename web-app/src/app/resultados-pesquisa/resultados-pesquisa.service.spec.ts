import { TestBed } from '@angular/core/testing';

import { ResultadosPesquisaService } from './resultados-pesquisa.service';

describe('ResultadosPesquisaService', () => {
  let service: ResultadosPesquisaService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ResultadosPesquisaService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});

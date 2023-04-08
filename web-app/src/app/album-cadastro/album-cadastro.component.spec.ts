import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AlbumCadastroComponent } from './album-cadastro.component';

describe('AlbumCadastroComponent', () => {
  let component: AlbumCadastroComponent;
  let fixture: ComponentFixture<AlbumCadastroComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AlbumCadastroComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AlbumCadastroComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

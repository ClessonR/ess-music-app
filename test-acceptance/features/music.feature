Feature: Adicionar uma nova música na plataforma
	Como um funcionário da plataforma
	Eu quero adicionar novas músicas de determinados artistas
	Para que a plataforma se mantenha atualizada e o catálogo dos artistas 
	completos


Scenario: Adicionando uma nova música com sucesso
	Given Estou logado como o usuário Administrador de email "admin@dizer.com" e senha "admin"
	And Estou na página do álbum "Hot Pink" do artista "Doja cat"
	When Clico em "Cadastrar Musicas"
	And Preencho o campo de "Nome da Música" com "Kiss me less"
	And Clico em "Adicionar"
	Then O sistema mostra uma mensagem de "Música cadastrada!"


Scenario: Adicionando música sem nome
	Given Estou logado como o usuário Administrador de email "admin@dizer.com" e senha "admin"
	And Estou na página do álbum "AM" do artista "Arctic Monkeys"
	When Clico em "Cadastrar Musicas"
	And Preencho o campo de "Nome da Música" com ""
	And Clico em "Adicionar"
	Then O sistema mostra uma mensagem de "Campo inválido!"


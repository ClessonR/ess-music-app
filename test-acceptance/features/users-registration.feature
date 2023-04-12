Feature: Registration and maintenance of Users (insert, remove, update)
    As a "Dizer" employee
    I want to insert new users
    And remove existing users
    And update existing users information
    So that users could login at the "Dizer"
    And users could update theirs information at the "Dizer"

Scenario: Administrator wants to remove a User from the system
    Given I am logged in with an admin account with user "admin@dizer.com" and password "admin"
    And I am on the "Lista de Usuários" page
    And I see a list of system users
    And I see the "email" user "pcsb@cin.ufpe.br"
    When I click on the "Remover" button on the "Email" user "pcsb@cin.ufpe.br" line
    And I click "Sim"
    Then I check that the email user "pcsb@cin.ufpe.br" is no longer on the list of system users

Scenario: Administrator wants to edit a user role
    Given I am logged in with an admin account with user "admin@dizer.com" and password "admin"
    And I am on the "Lista de Usuários" page
    And I see a list of system users
    And I see the "Usuario" user "pcsb"
    And I see the "email" user "pcsb@cin.ufpe.br"
    And I see the "Nome" user "Pedro Basilio"
    And I see the "Tipo de Usuario" user "Usuario"
    And I see the "Ativo" user field checked
    When I click on the "Ativar" button on the "Usuario" user "pcsb" line
    And I select "Admin" in "Tipo de Usuario" field
    And I click "Atualizar"
    Then I see a success message "Informação alterada com sucesso!"
    And I see a list of system users
    And I see the "Usuario" user "pcsb"
    And I see the "email" user "pcsb2@cin.ufpe.br"
    And I see the "Nome" user "Pedro Costa"
    And I see the "Tipo de Usuario" user "Admin"
    And I see the "Ativo" user field checked

Scenario: Administrator wants to edit a user role without selecting a role
    Given I am logged in with an admin account with user "admin@dizer.com" and password "admin"
    And I am on the "Lista de Usuários" page
    And I see a list of system users
    And I see the "Usuario" user "pcsb"
    And I see the "email" user "pcsb@cin.ufpe.br"
    And I see the "Nome" user "Pedro Basilio"
    And I see the "Tipo de Usuario" user "Usuario"
    And I see the "Ativo" user field checked
    When I click on the "Ativar" button on the "Usuario" user "pcsb" line
    And I select nothing in "Tipo de Usuario" field
    And I click "Atualizar"
    Then I get a Error message "Por favor, selecione um cargo!"



Scenario: Administrator wants to add a new User with an invalid email
    Given I am logged in with an admin account with user "admin@dizer.com" and password "admin"
    And I am on the "Lista de Usuários" page
    And I see a list of system users with "3" users
    When I click on "Adicionar Novo Usuario"
    And I write "pcsb" in "Usuario" field
    And I write "Pedro Costa" in "Nome" field
    And I write "pcsb02" in "Senha" field
    And I write "pcsb2" in "Email" field
    And I select "Usuario" in "Tipo de Usuario" field
    And I select the checkbox of "Ativo" field
    And I click "Adicionar"
    Then I get a Error message "Por favor, insira um dado válido!"

Scenario: Administrator wants to add a new User with an invalid password
    Given I am logged in with an admin account with user "admin@dizer.com" and password "admin"
    And I am on the "Lista de Usuários" page
    And I see a list of system users with "3" users
    When I click on "Adicionar Novo Usuario"
    And I write "pcsb" in "Usuario" field
    And I write "Pedro Costa" in "Nome" field
    And I write "pcsb0" in "Senha" field
    And I write "pcsb2@cin.ufpe.br" in "Email" field
    And I select "Usuario" in "Tipo de Usuario" field
    And I select the checkbox of "Ativo" field
    And I click "Adicionar"
    Then I get a Error message "Por favor, insira um dado válido!"

Scenario: Administrator wants to add a new User without user field
    Given I am logged in with an admin account with user "admin@dizer.com" and password "admin"
    And I am on the "Lista de Usuários" page
    And I see a list of system users with "3" users
    When I click on "Adicionar Novo Usuario"
    And I write "Pedro Costa" in "Nome" field
    And I write "pcsb02" in "Senha" field
    And I write "pcsb2@cin.ufpe.br" in "Email" field
    And I select "Usuario" in "Tipo de Usuario" field
    And I select the checkbox of "Ativo" field
    And I write nothing in "Usuario" field
    And I click "Adicionar"
    Then I get a Error message "Por favor, insira um dado válido!"

    Scenario: Administrator wants to add a new User without email
    Given I am logged in with an admin account with user "admin@dizer.com" and password "admin"
    And I am on the "Lista de Usuários" page
    And I see a list of system users with "3" users
    When I click on "Adicionar Novo Usuario"
    And I write "pcsb" in "Usuario" field
    And I write "Pedro Costa" in "Nome" field
    And I write "pcsb02" in "Senha" field
    And I select "Usuario" in "Tipo de Usuario" field
    And I select the checkbox of "Ativo" field
    And I write nothing in "Email" field
    And I click "Adicionar"
    Then I get a Error message "Por favor, insira um dado válido!"

    Scenario: Administrator wants to add a new User without password
    Given I am logged in with an admin account with user "admin@dizer.com" and password "admin"
    And I am on the "Lista de Usuários" page
    And I see a list of system users with "3" users
    When I click on "Adicionar Novo Usuario"
    And I write "pcsb" in "Usuario" field
    And I write "Pedro Costa" in "Nome" field
    And I write "pcsb2@cin.ufpe.br" in "Email" field
    And I select "Usuario" in "Tipo de Usuario" field
    And I select the checkbox of "Ativo" field
    And I write nothing in "Senha" field
    And I click "Adicionar"
    Then I get a Error message "Por favor, insira um dado válido!"

    Scenario: Administrator wants to add a new User without role
    Given I am logged in with an admin account with user "admin@dizer.com" and password "admin"
    And I am on the "Lista de Usuários" page
    And I see a list of system users with "3" users
    When I click on "Adicionar Novo Usuario"
    And I write "pcsb" in "Usuario" field
    And I write "Pedro Costa" in "Nome" field
    And I write "pcsb02" in "Senha" field
    And I write "pcsb2@cin.ufpe.br" in "Email" field
    And I select the checkbox of "Ativo" field
    And I write nothing in "Tipo de Usuario" field
    And I click "Adicionar"
    Then I get a Error message "Por favor, insira um dado válido!"
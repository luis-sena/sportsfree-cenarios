#language: pt

Funcionalidade: Doação
  A fim de fazer uma doação e registrar doações realizadas

  @Positivo
  Cenário:Doador sem cadastro iniciando no menu Seja um doador

    Dado que eu não tenha cadastro no site SportFree
    Quando eu clico no menu Seja um Doador
    E clico no botão Clique Aqui por não ter cadastro
    E Na tela de cadastro eu preencho "<tipoPessoa>", "<Nome>", "<Documento>", "<RG>", "<Telefone1>", "<Telefone2>", "<email>", "<CEP>", "<NumeroComplemento>", "<RedeSocial>", "<Observacoes>"
    E eu escolho o perfil Doador
    E eu clico no botão salvar
    Então sou redirecionado para a tela de login
    E insiro meu "<login>" e "<senha>"
    E clico no botão Login
    Então sou redirecionado para a tela de perfil Doador
    E clico no botão Sim para efetuar doação
    Então sou redirecionado para a tela de efetuar doacao
    E preencho os campos "<codDoador>", "<doador>", "<codIntituicao>", "<entidadeBeneficiada>", "<valorDoacao>", "<conferirValorDoacao>"
    E clico no botão Confirmar doacao
    Então recebo mensagem de sucesso "<mensagem>"


  Esquema do Cenario:
    Exemplos:
      | tipoPessoa | Nome | Documento | RG     | Telefone1 | Telefone2 |email |CEP |NumeroComplemento |RedeSocial |Observacoes | login | senha | codDoador | doador |codIntituicao |entidadeBeneficiada |valorDoacao |conferirValorDoacao | mensagem|



  @Positivo
  Cenário:Doador já cadastrado

    Dado que eu tenha cadastro no site SportFree
    Quando eu clico no menu Seja um Doador
    Então sou redirecionado para a tela de login
    E insiro meu "<login>" e "<senha>"
    E clico no botão Login
    Então sou redirecionado para a tela de perfil Doador
    E clico no botão Sim para efetuar doação
    Então sou redirecionado para a tela de efetuar doacao
    E preencho os campos "<codDoador>", "<doador>", "<codIntituicao>", "<entidadeBeneficiada>", "<valorDoacao>", "<conferirValorDoacao>"
    E clico no botão Confirmar doacao
    Então recebo mensagem de sucesso "<mensagem>"

  Esquema do Cenario:
    Exemplos:
    | login | senha | codDoador | doador |codIntituicao |entidadeBeneficiada |valorDoacao |conferirValorDoacao | mensagem|



  @Positivo
  Cenário:Doador sem cadastro iniciando pelo menu Cadastro

    Dado que eu como doador sem cadastro acesse o site SportFree
    Quando eu clico no menu cadastro
    Então sou redirecionado para a tela de cadastro Novo cliente
    E Na tela de cadastro eu preencho "<tipoPessoa>", "<Nome>", "<Documento>", "<RG>", "<Telefone1>", "<Telefone2>", "<email>", "<CEP>", "<NumeroComplemento>", "<RedeSocial>", "<Observacoes>"
    E eu escolho o perfil Doador
    E eu clico no botão salvar
    Então sou redirecionado para a tela de login
    E insiro meu "<login>" e "<senha>"
    E clico no botão Login
    Então sou redirecionado para a tela de perfil de Doador
    E clico no botão Sim para efetuar doação
    Então sou redirecionado para a tela de efetuar doacao
    E preencho os campos "<codDoador>", "<doador>", "<codIntituicao>", "<entidadeBeneficiada>", "<valorDoacao>", "<conferirValorDoacao>"
    E clico no botão Confirmar doacao
    Então recebo mensagem de sucesso "Doação recebida"

  Esquema do Cenario:
    Exemplos:
      | tipoPessoa | Nome | Documento | RG     | Telefone1 | Telefone2 |email |CEP |NumeroComplemento |RedeSocial |Observacoes | login | senha | codDoador | doador |codIntituicao |entidadeBeneficiada |valorDoacao |conferirValorDoacao | mensagem|
   
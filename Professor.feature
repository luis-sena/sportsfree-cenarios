#language: pt

Funcionalidade:  Ações de professor no site
  A fim de cadastrar professor e popular o site com aulas de esportes oferecidas

  @Positivo
  Cenário:Criar um curso novo com professor ainda não cadastrado no site

    Dado que eu como professor acesse o site SportFree
    Quando eu clico no menu cadastro
    Então sou redirecionado para a tela de cadastro Novo cliente
    E Na tela de cadastro eu preencho "<tipoPessoa>", "<Nome>", "<Documento>", "<RG>", "<Telefone1>", "<Telefone2>", "<email>", "<CEP>", "<NumeroComplemento>", "<RedeSocial>", "<Observacoes>"
    E eu escolho o perfil Profissional
    E eu clico no botão salvar
    Então sou redirecionado para a tela de login
    E insiro meu "<login>" e "<senha>"
    E clico no botão Login
    Então sou redirecionado para a tela de perfil de professor
    E clico no botão Sim, desejo oferecer um curso
    Então sou redirecionado para a tela de grade horária de cursos ofertados
    E preencho os campos "<curso>", "<horário>", "<local>", "<quantidadeVagas>"
    E clico no botão Cadastrar novo curso
    Então uma nova linha com o curso é apresentada na grade

  Esquema do Cenario:
    Exemplos:
      | tipoPessoa | Nome | Documento | RG     | Telefone1 | Telefone2 |email |CEP |NumeroComplemento |RedeSocial |Observacoes | login | senha | curso | horário |quantidadeVagas |

  @Positivo
  Cenário:Criar um curso novo com professor já cadastrado no site

    Dado que eu como professor acesse o app EsporteVida
    Quando eu clico no botão login
    Então sou redirecionado para a tela de login
    E insiro meu "<login>" e "<senha>"
    E clico no botão Login
    Então sou redirecionado para a tela de perfil de professor
    E clico no botão Sim, desejo oferecer um curso
    Então sou redirecionado para a tela de grade horária de cursos ofertados
    E preencho os campos "<curso>", "<horário>", "<local>", "<quantidadeVagas>"
    E clico no botão Cadastrar novo curso
    Então uma nova linha com o curso é apresentada na grade

  Esquema do Cenario:
    Exemplos:
      | tipoPessoa | Nome | Documento | RG     | Telefone1 | Telefone2 |email |CEP |NumeroComplemento |RedeSocial |Observacoes | login | senha | curso | horário |quantidadeVagas |


  @Positivo
  Cenário:Criar um curso novo com professor já cadastrado via modalidade de esporte

    Dado que eu como professor acesse o app EsporteVida
    Quando eu clico na modalidade de esporte
    Então sou redirecionado para a tela do esporte escolhido
    E clico no botão Seja um Professor
    Então sou redirecionado para a tela de login
    E insiro meu "<login>" e "<senha>"
    E clico no botão Login
    Então sou redirecionado para a tela de perfil de professor
    E clico no botão Sim, desejo oferecer um curso
    Então sou redirecionado para a tela de grade horária de cursos ofertados
    E preencho os campos "<curso>", "<horário>", "<local>", "<quantidadeVagas>"
    E clico no botão Cadastrar novo curso
    Então uma nova linha com o curso é apresentada na grade

#  @Positivo
#  Cenário:cancelar um curso com professor já cadastrado no site
#
#    Dado que eu como professor acesse o app EsporteVida
#    Quando eu clico no botão login
#    Então sou redirecionado para a tela de login
#    E insiro meu login e senha
#    E clico no botão Login
#    Então sou redirecionado para a tela de perfil de professor
#    E clico no botão Sim desejo cancelar
#    Então sou redirecionado para a tela de grade horária de cursos ofertados dos meus cursos
#    Quando eu clico no botao cancelar da linha do curso
#    Então o curso é cancelado

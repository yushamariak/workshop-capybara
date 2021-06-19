# language: pt
@nova_conta
Funcionalidade: Nova Conta
    Eu como cliente
    Quero poder criar uma conta
    Para conseguir ter acesso a meu histórico e fazer compras

    @criar_conta_valida
    Cenário: Criar uma conta válida
        Dado que vejo a tela de login
        Quando colocar email "valido"
        Então vejo o formulário de registro
 
    @criar_conta_invalida
    Cenário: Criar uma conta inválida
        Dado que vejo a tela de login
        Quando colocar email "invalido"
        Então vejo uma mensagem de erro
    
    @cadastro
    Cenário: Realizar cadastro
        Dado que vejo a tela de login
        Quando preencher o formulario com "campos validos"
        Então crio uma conta com sucesso

    @cadastro_duplicado
    Cenário: Realizar cadastro de email duplicado
        Dado que vejo a tela de login
        Quando colocar email já "cadastrado"
        Então vejo uma mensagem de que o email ja foi registrado

    
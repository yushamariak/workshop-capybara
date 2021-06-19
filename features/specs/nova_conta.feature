# language: pt
@nova_conta
Funcionalidade: Nova Conta
    Eu como cliente
    Quero poder criar uma conta
    Para conseguir ter acesso a meu histórico e fazer compras

    @criar_conta_valida
    Cenário: Criar uma conta válida
        Dado que estou na tela Sign In
        Quando colocar email "valido"
        Então vejo a tela de cadastro
    
    @criar_conta_invalida
    Cenário: Criar uma conta inválida
        Dado que estou na tela Sign In
        Quando colocar email "invalido"
        Então vejo uma mensagem de erro
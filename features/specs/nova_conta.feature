# language: pt
@nova_conta
Funcionalidade: Nova Compra
    Eu como cliente
    Quero poder criar uma conta
    Para conseguir ter acesso a meu histórico e fazer compras

    Cenário: Criar uma conta
        Dado que estou na tela Sign In
        Quando colocar email "valido"
        Então vejo a tela de cadastro
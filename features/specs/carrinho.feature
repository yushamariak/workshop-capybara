# language: pt
@carrinho
Funcionalidade: Carrinho de compras
    Eu como cliente
    Quero poder acessar o carrinho de compras
    Para conseguir realizar a compra de um item

    @add_item
    Cenário: Adicionar item ao carrinho
    Dado que estou vendo detalhes de um produto
    Quando adicionar ao meu carrinho
    Então vejo modal de confirmação

    @escolher_endereco
    Cenário: Ser possível escolher endereço de entrega
    Dado que estou no resumo do carrinho
    Quando passar para o checkout
    Então vejo opções de mudar o endereço de entrega

    @escolher_pagamento
    Cenário: Ser possível escolher opção de pagamento
    Dado que estou na tela de envio da compra
    Quando concordar com os termos de serviço
    E passar para a tela de pagamento
    Então vejo opções de pagamento

    @comprar_item
    Cenário: Comprar item
    Dado que estou vendo detalhes de um produto
    Quando fizer a compra do produto
    Então vejo mensagem de confirmação da compra

############Adicionar item ao carrinho
Dado('que estou vendo detalhes de um produto') do    
    @produto_page = ProdutoPage.new
    @produto_page.load
end

Quando('adicionar ao meu carrinho') do
    @produto_page.find_button('Add to cart').click
end

Então('vejo modal de confirmação') do
    expect(page).to have_content('Product successfully added to your shopping cart')
    sleep(3)
end

############Ser possível escolher endereço de entrega
Dado('que estou no resumo do carrinho') do
    @summary_page = SummaryPage.new
    @summary_page.load
end

Quando('passar para o checkout') do
    find_link('Proceed to checkout').click
end

Então('vejo opções de mudar o endereço de entrega') do
    expect(page).to have_content('Choose a delivery address')
    sleep(3)
end

############Ser possível escolher opção de pagamento
Dado('que estou na tela de envio da compra') do
    expect(page).to have_content('Choose a shipping option for this address')
end

Quando('concordar com os termos de serviço') do
    check('cgv', visible: false)
    sleep(3)
end

Quando('passar para a tela de pagamento') do
    click_button('processCarrier')
end

Então('vejo opções de pagamento') do
    expect(page).to have_content('Pay by bank wire')
end

############Comprar item
Quando('fizer a compra do produto') do
    @produto_page.find_button('Add to cart').click
    @produto_page.proceed_checkout
    
    @summary_page = SummaryPage.new
    @summary_page.proceed_checkout
    
    click_button('processAddress')
    
    check('cgv', visible: false)
    click_button('processCarrier')
    find_link('Pay by bank wire').click

    expect(page).to have_content('BANK-WIRE PAYMENT')
    find_button('I confirm my order').click
end

Então('vejo mensagem de confirmação da compra') do
    expect(page).to have_content('Your order on My Store is complete')
    sleep(3)
end
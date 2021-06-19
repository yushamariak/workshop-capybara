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

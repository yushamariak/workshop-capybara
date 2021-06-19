Before ('@carrinho') do
    @sign_in = SignInPage.new
    @sign_in.load
    @sign_in.login('ys1@tst.com', '123456')
end

Before ('@escolher_endereco') do
    @produto_page = ProdutoPage.new
    @produto_page.load
    @produto_page.find_button('Add to cart').click
    sleep(3)
end

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
    foto = "reports/screenshots/#{scenario_name}.png"
    page.save_screenshot(foto)
    attach(foto, 'image/png')
end

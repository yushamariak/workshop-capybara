Before ('@escolher_endereco') do
    @produto_page = ProdutoPage.new
    @produto_page.load
    @produto_page.find_button('Add to cart').click
end

Before ('@escolher_pagamento') do
    @produto_page = ProdutoPage.new
    @produto_page.load
    @produto_page.find_button('Add to cart').click
    @produto_page.proceed_checkout

    @summary_page = SummaryPage.new
    @summary_page.proceed_checkout

    click_button('processAddress')
end

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
    foto = "reports/screenshots/#{scenario_name}.png"
    page.save_screenshot(foto)
    attach(foto, 'image/png')
end

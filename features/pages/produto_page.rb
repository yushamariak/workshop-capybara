class ProdutoPage < SitePrism::Page
    set_url '/index.php?id_product=1&controller=product'

    element :btn_add_cart, '#add_to_cart'

    def add_carrinho()
        btn_add_cart.click
    end

    def proceed_checkout()
        find_link('Proceed to checkout').click
   end
   
end
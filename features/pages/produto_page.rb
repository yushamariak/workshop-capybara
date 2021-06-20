class ProdutoPage < SitePrism::Page
    set_url '/index.php?id_product=1&controller=product'

    def proceed_checkout()
        find_link('Proceed to checkout').click
    end

end
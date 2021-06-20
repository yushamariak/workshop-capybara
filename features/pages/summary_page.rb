class SummaryPage < SitePrism::Page
    set_url '/index.php?controller=order'
    
    def proceed_checkout()
        find_link('Proceed to checkout').click
    end

end
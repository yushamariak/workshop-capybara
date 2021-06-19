class SignInPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element :input_email, '#email_create'
    element :btn_create, '#SubmitCreate'

    def criar_conta(email)
        input_email.set email
        btn_create.click
    end

end
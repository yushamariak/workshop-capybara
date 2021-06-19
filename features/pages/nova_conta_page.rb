class SignInPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element :input_email_login, '#email'
    element :input_senha_login, '#passwd'
    element :btn_sign_in, '#SubmitLogin'

    element :input_email, '#email_create'
    element :btn_create, '#SubmitCreate'

    element :radio_title, '#id_gender2'
    element :input_first_name, '#customer_firstname'
    element :input_last_name, '#customer_lastname'
    element :input_password, '#passwd'
    element :btn_register, '#submitAccount'
    element :select_day, '#uniform-days'
    element :select_month, '#uniform-months'
    element :select_year, '#uniform-years'
    element :input_company, '#company'
    element :input_address1, '#address1'
    element :input_city, '#city'
    element :select_state, '#uniform-id_state'
    element :input_postcode, '#postcode'
    element :input_phone_mobile, '#phone_mobile'

    def criar_conta(email)
        input_email.set email
        btn_create.click
    end

    def login(email, senha)
        input_email_login.set email
        input_senha_login.set senha
        btn_sign_in.click
    end

    def registrar_conta(title, first_name, last_name, password, day, month, year, company, address1, city, state, postcode, phone_mobile)
        radio_title.choose(option: title)
        input_first_name.set first_name
        input_last_name.set last_name
        input_password.set password
        select_day.select(day, from: 'days', visible: false)
        select_month.select(month, from: 'months', visible: false)
        select_year.select(year, from: 'years', visible: false)
        input_company.set company
        input_address1.set address1
        input_city.set city
        select_state.select(state, from: 'id_state', visible: false)
        input_postcode.set postcode
        input_phone_mobile.set phone_mobile
        btn_register.click
    end

end
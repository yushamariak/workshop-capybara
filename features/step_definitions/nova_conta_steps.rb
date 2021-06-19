Dado('que vejo a tela de login') do
    @sign_in = SignInPage.new
    @sign_in.load
end

############Email
Quando('colocar email {string}') do |email|
  @sign_in = SignInPage.new

    case email
    when 'valido'
        @sign_in.criar_conta 'ys2@tst.com'
    when 'invalido'
        @sign_in.criar_conta 'ys1tst.com'
    end
    sleep(2)

end

Então('vejo a tela de registro') do
    expect(page).to have_content('YOUR PERSONAL INFORMATION') 
end

Então('vejo uma mensagem de erro') do
    expect(page).to have_content('Invalid email address.')
    expect(page).to have_content('An account using this email address has already been registered. Please enter a valid password or request a new one.')
end

############Cadastro
Quando('preencher o formulario com {string}') do |campos|
    @sign_in = SignInPage.new
    
    @sign_in.criar_conta 'ys2@tst.com'
    @sign_in.registrar_conta('Mrs.', 'Yusha', 'Silva', '123456', '23', 'February', '1990', 'TestCo', '721 Broadway, New York, NY 10003, USA', 'New York', 'Alabama', '10003', '11998787877') 

    sleep(2)
end

Então('crio uma conta com sucesso') do
    expect(page).to have_content('Welcome to your account. Here you can manage all of your personal information and orders.')
end

############Cadastro de email duplicado
Quando('colocar email já {string}') do |email_cadastrado|
    @sign_in.criar_conta 'ys1@tst.com'
end

Então('vejo uma mensagem de que o email ja foi registrado') do
    expect(page).to have_content('An account using this email address has already been registered. Please enter a valid password or request a new one.')
end
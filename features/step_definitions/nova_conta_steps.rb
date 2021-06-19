Dado('que estou na tela Sign In') do
    @sign_in = SignInPage.new
    @sign_in.load
end

Quando('colocar email {string}') do |email|
  @sign_in = SignInPage.new

    case email
    when 'valido'
        @sign_in.criar_conta 'ys1@tst.com'
    when 'invalido'
        @sign_in.criar_conta 'ys1tst.com'
    end
    sleep(2)

end

Então('vejo a tela de cadastro') do
  expect(page).to have_content('YOUR PERSONAL INFORMATION') 
end

Então('vejo uma mensagem de erro') do
    expect(page).to have_content('Invalid email address.')
end
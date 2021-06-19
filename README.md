CONFIGURAÇÃO DOS ARQUIVOS


GEM FILE

source 'http://rubygems.org'

gem 'cucumber'
gem 'rspec'
gem 'capybara'
gem 'selenium-webdriver'


ENV.RB

require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://automationpractice.com'
    config.default_max_wait_time = 10
end

Capybara.page.driver.browser.manage.window.maximize



Comandos a serem executados após configurar e salvar o Gem File:

- gem install bundle

- bundle install



UTILIZAÇÃO DE TAGS


As tags servem como um agrupamento, fazendo com que apenas sejam executados os cenários com elas.

Podemos escolher qualquer nome para as tags, contanto que façam sentido para aqueles cenários escolhidos.



No arquivo login.feature, em cima da palavra "Funcionalidade", adicionar a tag @login. Ou seja, todos cenários dentro
daquele arquivo, serão executados. Se a tag for colocada em cima de um cenário específico, apenas ele será.

Execução dos cenários

- cucumber -t @login

Se houver algum erro na execução do comando acima, tentar este:

- bundle exec cucumber -t @login



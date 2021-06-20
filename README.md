# README

 Verificar documentação abaixo para configuração do ambiente
 
  <https://github.com/lorainegarutti/setup-capybara>

## Configuração do Gemfile

source <http://rubygems.org>

```gemfile
gem 'cucumber'
gem 'rspec'
gem 'capybara'
gem 'selenium-webdriver'
```

## Configuração do ENV

```env
require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://automationpractice.com'
    config.default_max_wait_time = 10
end

Capybara.page.driver.browser.manage.window.maximize
```

## Comandos a serem executados após configurar e salvar o Gem File

```command
gem install bundle
ou
bundle install
```

## Execução dos cenários

```command
cucumber -t @login
```

Se houver algum erro na execução do comando acima, tentar este:

```command
bundle exec cucumber -t @login
```

## Site utilizado no projeto

<http://automationpractice.com/>

## Extensões do VSCode

- Ruby (por Peng Lv)

- Ruby Solargraph
(por Castwide)

- Cucumber (Gherkin) Full Support
(por Alexander Krechik)

- Snippets and Syntax Highlight for Gherkin (Cucumber)
(por Euclidity)

- Gherkin Indent
(por Aravind Kumar)

- vscode-icons

- Dracula Official

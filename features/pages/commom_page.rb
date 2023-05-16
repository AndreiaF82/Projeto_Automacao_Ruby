# comum  ao clicar tudo que for comum  criar metodos  e colocar aqui. 
# neste caso é a pagina qa coders, entao voce site  a url que foi sitada na env.rb e descriminada na environments

class Commom < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    set_url '/'


end




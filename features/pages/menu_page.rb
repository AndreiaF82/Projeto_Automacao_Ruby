#steps da automação, onde vamos mapear os elementos

class Menu < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL


# elemento, nome e atributo
    element :button_sobre_nos, 'a[href="/#sobre-nos"]'
    element :text_sobre_nos, :xpath, './/h3[contains(text(),"Sobre nós")]'

    element :button_depoimentos, 'a[href="/#depoimentos"]'
    element :text_depoimentos, :xpath, '//*[@id="depoimentos"]/div[1]/div/h3'
    #'.//h3[contains(text(),"Depoimentos")]'

    element :button_parceiros, 'a[href="/#parceiros"]'
    element :text_parceiros, './/h3[contains(text(),"Parceiros")]'

    element :button_fale_conosco, 'a[href="/#faleConosco"]'
    element :text_fale_conosco, :xpath, './/h3[contains(text(),"Fale Conosco")]'

    set_url '/'

    def sobre_nos
       button_sobre_nos.click
    end

    def depoimentos
        button_depoimentos.click
    end
    
    def parceiros 
        button_parceiros.click
    end
    
     def fale_conosco
        button_fale_conosco.click
    end

    def texto_sobre_nos
        expect(page).to have_selector(:xpath, './/h3[contains(text(),"Sobre nós")]',visible: true)
    end

    def texto_depoimentos
        expect(page).to have_selector(:xpath, './/*[@id="depoimentos"]/div[1]/div/h3',visible: true)
    end

    def texto_parceiros
        expect(page).to have_selector(:xpath, './/h3[contains(text(),"Parceiros")]',visible: true)
    end

    def texto_fale_conosco
        expect(page).to have_selector(:xpath, './/h3[contains(text(),"Fale Conosco")]', visible: true)
    end
end



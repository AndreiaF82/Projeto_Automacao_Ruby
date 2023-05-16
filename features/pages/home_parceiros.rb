class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    # element :text_parceiros, './/h3[contains(text(),"Parceiros")]'


    element :soluevo, 'a[href="https://soluevo.com.br/"]'

    element :vincit, 'a[href="https://www.faculdadevincit.edu.br/"]'
  
    element :brightest, 'a[href="https://brightest.org/pt/"]'
  
    element :simplesmenteuse, 'a[href="https://simplesmenteuse.com/"]'

    element :libellebr, 'a[href="https://www.linkedin.com/company/libellebr/"]'

    element :lovepeople, 'a[href="https://www.lovepeople.com.br/"]'

    element :valtech, 'a[href="https://www.valtech.com/pt-br/"]'
  
    element :stackspot, 'a[href="https://stackspot.com/"]'
 
    element :primecontrol, 'a[href="https://www.primecontrol.com.br//"]'

    element :wf_contabilidade, 'a[href=" https://www.linkedin.com/company/wf-contabilidade/about/"]'


    def click_link_parceiros(parceiro)
        case parceiro
        when 'soluevo'
          soluevo.click
        when 'vincit'
          vincit.click
        when 'brightest'
          brightest.click
        when 'simplesmenteuse'
          simplesmenteuse.click
        when 'libellebr'
          libellebr.click
        when 'lovepeople'
          lovepeople.click
        when 'valtech'
          valtech.click
        when 'stackspot'
          stackspot.click
        when 'primecontrol'
          primecontrol.click
        when 'wf_contabilidade'
          wf_contabilidade.click
        else
          puts "Parceiro desconhecido: #{parceiro}"
        end
    end       


    def validate_site_parceiros(main_url)
      expect(page).to have_selector(:css, 'a[href="https://soluevo.com.br/')
    end

end


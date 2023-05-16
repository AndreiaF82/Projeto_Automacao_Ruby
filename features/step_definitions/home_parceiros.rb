
Dado('que eu esteja na sessão Parceiros') do
  visit'https://www.qacoders.com.br/#parceiros/'
  end

  Quando('eu clico no link do parceiro {string}') do |parceiros|
   home.click_link_parceiros(parceiros)
  end

  Então('sou direcionado para o site  {string} do Parceiro') do |main_url|
    home.validate_site_parceiros(main_url)
  end




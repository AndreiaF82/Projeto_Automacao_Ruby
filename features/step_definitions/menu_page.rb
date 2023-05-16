Dado('que esteja na home page') do
     commom.load
end

#VALIDAR  BOTÃO SOBRE NOS 
Quando('eu clico no botão Sobre Nós') do
        menu.sobre_nos
  end
  
  Então('sou direcionado para a sessão Sobre Nós') do
       menu.texto_sobre_nos
  end

    #VALIDAR BOTAO DEPOIMENTOS
  Quando('eu clico no botão Depoimentos') do
        menu.depoimentos
  end


  Então('sou direcionado para a sessão Depoimentos') do
      menu.texto_depoimentos
  end

#VALIDAR BOTAO PARCEIROS 
Quando('eu clico no botão Parceiros') do
     menu.parceiros
end

Então('sou direcionado para a sessão Parceiros') do
    menu.texto_parceiros
   end
   

#VALIDAR BOTAO FALE CONOSCO
 Quando('eu clico no botão Fale Conosco') do
      menu.fale_conosco
  end

  Então('sou direcionado para a sessão Fale Conosco') do
       menu.texto_fale_conosco
  end


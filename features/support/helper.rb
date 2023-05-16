module Helper
    
    def print_screen(file_name, result)
        time = Time.new
        date = time.strftime("%Y-%m-%d")
        hour = time.strftime("%I-%M")

            file_path = "reports/screenshots/tests_#{result}"
            screenshots = "#{file_path}/#{date}/#{hour}/#{file_name}.png"
            page.save_screenshot{screenshots}
            attach(screenshots, 'image/png')
    end

    end



# metodo  que vai tirar print screen da tela hora data pega um diretorio nome do arquivo /foto  
# e anexa ela dentro do reports, criamos todos os métodos utilitários para nossa automação de teste
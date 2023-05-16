# apagar registros de cookies  PERTINENTE A EXECUÇÃO DOS CENARIOS 



Before do |scenario|
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    Capybara.page.driver.quit
end

# tira print  do sucesso  ou da falha, só steps de execução

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/', '_')   ##transforma tudo que tem barra espaço para anderline _

    if scenario.failed?
        print_screen(scenario_name.downcase!,'Failed')
    else
       print_screen(scenario_name.downcase!,'Success')
    end
end

#criar todas execuções " codigo " que serão realizadas antes e depois de cada teste.
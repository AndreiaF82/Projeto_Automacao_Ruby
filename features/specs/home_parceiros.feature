            #language: pt

            @parte2
            Funcionalidade: Links de Parceiros

            Esquema do Cenario: Validar links dos Parceiros 

            Dado que eu esteja na sessão Parceiros 
            Quando eu clico no link do parceiro "<parceiros>"
            Então sou direcionado para o site  "<main_url>" do Parceiro

        Exemplos:
            | parceiros        | main_url                                                |
            | Soluevo          | https://soluevo.com.br                                  |
            | Vincit           | https://www.faculdadevincit.edu.br                      |
            | Brightest        | https://brightest.org/pt                                |
            | SimplesmenteUse  | https://simplesmenteuse.com                             |
            | Libelle          | https://www.linkedin.com/company/libellebr              |
            | Lovepeople       | https://www.lovepeople.com.br                           |
            | Valtech          | https://www.valtech.com/pt-br                           |
            | Stackspot        | https://stackspot.com/pt                                |
            | Prime Control    | https://www.primecontrol.com.br//                       |
            | WF Contabilidade | https://www.linkedin.com/company/wf-contabilidade/about |




## Objetivo

Neste desafio, você deve criar e publicar uma imagem Docker que execute uma aplicação desenvolvida em Go Lang. A imagem final publicada deve ter menos de 2MB e estar publicada e pública no Docker Hub.


## Comportamento Esperado

Ao executarmos o container baseado na sua imagem publicada no Docker Hub, o resultado deve ser exatamente a impressão da mensagem abaixo no terminal:

* Full Cycle Rocks!!
 

## ## ##    ## ## ## ##     ## ## ##    ## ## ## ##


## Executando a Aplicação:

1. Clone o repositório: git clone https://github.com/LuizAlves01/FullCycle_DesafioGO.git
2. Acesse o diretório: cd FullCycle_DesafioGO
3. Contrua a imagem Docker: docker build -t <seu-user>/fullcycle-desafio-go:latest .
4. Inicie o container: docker run  <seu-user>/fullcycle-desafio-go


## Executando a Aplicação via Download da Imagem no Docker Hub

1. docker pull luizalves091/fullcycle-desafio-go:latest

2. docker run luizalves091/fullcycle-desafio-go:latest


:computer: Desenvolvido por **Luiz Alves**  :computer:
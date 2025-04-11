# Microsserviço: Tarefas Back-end

Projeto feito para a disciplina de T.E.S.I. (Desenvolvimento de Sistemas de Informação), ministrada  pelo professor Bruno Catão.

Este back-end utiliza um Dockerfile para criar um container para uma aplicação CRUD de tarefas

## Como utilizar

### 1. `docker build -t tarefas-back .`

Realiza a criação da imagem docker com o nome especificado.

*O titulo definido por `-t tarefas-bakc` não é obrigatório, se for utiliza-lo deve substituir `tarefas-back` pelo nome desejado, em que tarefas-back é um nome sugerido.*

### 2. `docker run -p {porta_local}:5500 {nome_da_imagem}`

Inicia o container, partindo da imagem docker com nome especificado. Deve-se substituir `{nome_da_imagem}` pelo nome do container que foi definido no passo 1.

É possível utilizar as flags `-p` para mapear a aplicação para uma porta específica na sua máquina, a aplicação dentro do container expõe a porta 5500 por padrão, mas isso pode ser alterado usando `-e PORTA={porta_desejada}` (substituindo o valor pela porta desejada). Deve-se substituir `{porta_local}` pela porta desejada para permitir o acesso através desta porta em específico.

Exemplo: `docker run -p 5500:5500 tarefas-back`\
Nesse exemplo a aplicação estará acessível em: `http://localhost:5500`

## Informações importantes

Lembre-se de iniciar seu banco de dados antes de iniciar esse container.

É possível utilizar a flag `-e` para alterar as variáveis de ambiente referentes a PORTA da aplicação dentro do container e a url do banco de dados, isso pode ser feito alterando os valores das variáveis a seguir:

- `URL_BANCO_DE_DADOS` é uma variável de ambiente que tem como valor padrão: `mongodb://host.docker.internal/tarefas` (caso alterado, precisa ser uma url para um banco mongodb)

- `PORTA` é uma variável de ambiente que tem como valor padrão: 5500

Exemplo: `docker run -e PORTA=5000 -p 5500:5000 tarefas-back`

## Imagem no Docker HUB

Essa imagem está disponível em: [liviabrito/tarefas-back-end](https://hub.docker.com/r/liviabrito/tarefas-back-end).


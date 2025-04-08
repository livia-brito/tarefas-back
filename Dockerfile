FROM node:23

# Define pasta padrão da api no container
WORKDIR /api

# Tira proveito do sistema incremental
# Baixa dependências
COPY ./package*.json ./
RUN npm install

# Copia arquivos da aplicação para o WORKDIR
COPY ./ ./

# Configurações por variável de ambiente
ENV PORTA=5500
ENV URL_BANCO_DE_DADOS="mongodb://host.docker.internal/tarefas"

# Expõe porta para acesso da aplicação
EXPOSE 5500

# Comando executado ao iniciar container (inicia a aplicação)
CMD ["npm", "start"]

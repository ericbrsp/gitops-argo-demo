# Dockerfile

# Usando uma imagem base do Python
FROM python:3.9-slim

# Definindo o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiando os arquivos da aplicação para o contêiner
COPY ./app /app

# Instalando as dependências necessárias
RUN pip install --no-cache-dir -r requirements.txt

# Expondo a porta que o Flask vai rodar
EXPOSE 8080

# Comando para rodar o servidor Flask
CMD ["python", "app.py"]

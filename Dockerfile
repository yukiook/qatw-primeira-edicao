# Usando a imagem base playwright
FROM mcr.microsoft.com/playwright:v1.50.1-noble

# Instalando dependências e o OpenJDK 21
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    openjdk-21-jdk \
    && apt-get clean

# Configurando a variável de ambiente JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"
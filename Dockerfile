# Especificar uma versão estável específica do Golang.
FROM golang:1.18-alpine AS builder

# Define o diretório de trabalho dentro do container.
WORKDIR /app

# Copia seu arquivo de código fonte Go para o diretório de trabalho.
COPY main.go .

# Inicializa o módulo Go e baixa as dependências.
RUN go mod init main
RUN go mod tidy

# Compila o código Go. O resultado será um executável.
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo_disable -o /go/bin/main

# Cria a imagem final a partir de uma imagem base mínima.
FROM scratch

# Copia o executável compilado do estágio de construção para a imagem final.
COPY --from=builder /go/bin/main /go/bin/main

# Expõe a porta que o aplicativo Go irá usar. Certifique-se de que esta porta corresponda à porta que seu aplicativo está configurado para usar.
EXPOSE 8080

# Define o comando que será executado quando o container iniciar.
CMD ["/go/bin/main"]
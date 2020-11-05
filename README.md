# Jenkins para IaaC e CI/CDs!

Esse repositório possui algumas das ferramentas de deployment comumente usadas para os pipelines em:

* Docker;
* Kubernetes;
* IaaC em terraform.

## Observações Importantes

Essa imagem está em estágio embrionário (hahaha) contendo alguns bugs. Esse Jenkins Dockerizado para usos pessoais

## Requisitos

* Docker
* Docker-compose

## Como Usar...

Basta baixar o repositório e rodar o docker compose:

```bash
docker-compose up
```

Caso quiser rodar o mesmo em segundo plano incluir o parâmetro -d após o comando anterior:

```bash
docker-compose up -d
```

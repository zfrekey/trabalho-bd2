## Trabalho BD2 - Chinook (PostgreSQL)

Este repositorio prepara o schema e os dados do Chinook para uso em PostgreSQL.

### Integrantes

- Ana Laura
- Estéfani
- Filype
- Isabela
- Lucas
- Sandy

### Basico do schema

O Chinook modela uma loja digital de midia, com tabelas como `Artist`, `Album`, `Track`, `Customer`, `Invoice` e `InvoiceLine`.

### Como carregar o schema

O script principal esta em [ChinookDatabase/DataSources/Chinook_PostgreSql.sql](ChinookDatabase/DataSources/Chinook_PostgreSql.sql).

#### Caso 1: voce ja tem um container PostgreSQL rodando

1) Rode o loader via docker compose
```bash
PG_CONTAINER_NAME=chinook_pg docker compose -f docker-compose.existing.yml up --abort-on-container-exit
```

2) Se precisar, ajuste usuario/senha/banco
```bash
PG_CONTAINER_NAME=chinook_pg PGUSER=chinook PGPASSWORD=chinook PGDATABASE=postgres docker compose -f docker-compose.existing.yml up --abort-on-container-exit
```

#### Caso 2: voce nao tem container

1) Suba o PostgreSQL com init automatico
```bash
docker compose up -d
```

### Creditos

Schema e dados baseados no projeto Chinook Database, de Luis Rocha (https://github.com/lerocha/chinook-database).

### Ambiente do trabalho

Container usado: `chinook_pg` (imagem `postgres:16`).
Usuario: `chinook`.
Banco criado pelo script: `chinook`.


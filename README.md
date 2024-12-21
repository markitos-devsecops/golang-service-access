# Markitos SVC Access

Markitos SVC Access es un servicio de acceso que permite la gestión de usuarios a través de una API RESTful.

## Estructura del Proyecto

```
.
├── .gitignore
├── Dockerfile
├── go.mod
├── go.sum
├── internal/
│   ├── domain/
│   │   ├── errors.go
│   │   ├── helper.go
│   │   ├── inmemory.repository.go
│   │   ├── models.go
│   │   ├── repository.go
│   │   └── types.go
│   ├── infrastructure/
│   │   ├── api/
│   │   │   ├── handlers.go
│   │   │   └── server.go
│   │   └── database/
│   │       └── postgres.repository.go
│   └── services/
│       ├── create.go
│       ├── list.go
│       ├── one.go
│       ├── search.go
│       └── update.go
├── LICENSE
├── main.go
├── Makefile
├── README.md
└── testsuite/
    ├── internal/
    │   ├── domain/
    │   │   ├── inmemory.repository_test.go
    │   │   ├── main_test.go
    │   │   ├── models_test.go
    │   │   └── mtools_test.go
    │   ├── infrastructure/
    │   │   ├── api/
    │   │   │   ├── create_test.go
    │   │   │   ├── list_test.go
    │   │   │   ├── main_test.go
    │   │   │   ├── one_test.go
    │   │   │   └── search_test.go
    │   │   └── database/
    │       └── postgres.repository_test.go
    └── services/
        ├── create_test.go
        ├── list_test.go
        ├── main_test.go
        ├── one_test.go
        └── update_test.go
```

## Instalación

1. Clona el repositorio:
    ```sh
    git clone https://github.com/tu-usuario/markitos-service-access.git
    cd markitos-service-access
    ```

2. Instala las dependencias:
    ```sh
    go mod download
    ```

## Uso

### Ejecutar el servidor

Para ejecutar el servidor, usa el siguiente comando:
```sh
go run .
```

El servidor estará disponible en `http://localhost:3000`.

### Rutas de la API

- **Crear un usuario**
    ```http
    POST /users
    ```
    **Body:**
    ```json
    {
        "message": "Test User"
    }
    ```

- **Listar todos los usuarios**
    ```http
    GET /users/all
    ```

- **Obtener un usuario por ID**
    ```http
    GET /users/:id
    ```

- **Actualizar un usuario**
    ```http
    PUT /users/:id
    ```
    **Body:**
    ```json
    {
        "message": "Updated User"
    }
    ```

- **Buscar usuarios**
    ```http
    GET /users?search=Test&page=1&size=10
    ```

### Pruebas

Para ejecutar las pruebas, usa el siguiente comando:
```sh
go test ./...
```

## Docker

Para construir y ejecutar la imagen Docker, usa los siguientes comandos:

1. Construir la imagen:
    ```sh
    docker build -t markitos-service-access .
    ```

2. Ejecutar el contenedor:
    ```sh
    docker run -p 3000:3000 markitos-service-access
    ```

## Contribuir

Si deseas contribuir a este proyecto, por favor sigue los siguientes pasos:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/nueva-funcionalidad`).
3. Realiza tus cambios y haz commit (`git commit -am 'Añadir nueva funcionalidad'`).
4. Sube tus cambios (`git push origin feature/nueva-funcionalidad`).
5. Abre un Pull Request.

## Licencia

Este proyecto está licenciado bajo la Licencia GNU General Public License v3.0. Consulta el archivo [LICENSE](LICENSE) para más detalles.
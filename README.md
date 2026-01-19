# 📈 Microservicio CRM

Este microservicio desarrollado con **Spring Boot** actúa como como la capa de acceso a los datos de una base de datos SQL, que simula un CRM. 

## 💻 Funcionalidades Principales

## 🔧 Descripción Técnica 

#### Dependencias de maven (`pom.xml`)

Las siguientes dependencias son las que se seleccionaron en Spring Initializr y son esenciales para el funcionamiento del microservicio:

| Componente | Herramienta |
| :--- | :--- |
| `spring-boot-starter-web` | Soporte para construir aplicaciones web y RESTful. |
| `spring-boot-starter-data-jpa` | Soporte para Spring Data JPA (incluye Hibernate). |
| `mysql-connector-java` | Driver necesario para la conexión física a la base de datos MySQL. |
| `lombok` | Generación automática de getters, setters y constructores (boilerplate code). |

#### Estrcutura del modelo de datos

El microservicio gestiona una base de datos (`crm`) relacional compuesta por 4 tablas principales:

| Tabla | Descripción |
| :--- | :--- |
| `Users` | Almacena al personal interno  que gestiona las ventas. |
| `Clients` | Contiene la información de las empresas o cuentas corporativas.|
| `Contact` | Puntos de contacto específicos dentro de cada cliente.|
| `Opportunities` | La tabla central que registra los procesos de venta y sus estados.|

## ⚡ Ejuctar el servicio

1. **Situarse en el Directorio**: Abre tu terminal y navega hasta el directorio raíz del proyecto.

2. **Compilar y Arrancar**: Ejecuta el siguiente comando para limpiar compilaciones previas, descargar las dependencias necesarias e iniciar el servidor:

```bash
.\mvnw.cmd clean spring-boot:run
```
3. **Acceder a la API**: El microservicio estará accesible en el puerto `8082` (definido en el docker-compose.yml). Utiliza tu navegador o una herramienta como cURL o Postman para realizar las siguientes peticiones:

| Endpoint | URL Ejemplo |
| :--- | :--- |
| Listado global | `http://localhost:8083/opportunities` |
| Filstro por usuario | `http://localhost:8083/opportunities/user/1` |
| Filstro por cliente | `http://localhost:8083/opportunities/client/3` |






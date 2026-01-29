# 🎯 Microservicio de Enlace CRM

**Componente del Trabajo de Fin de Máster (TFM)** > *Máster en Ingeniería de Software y Sistemas Informáticos (MSSI)*

Microservicio desarrollado con **Spring Boot** que actúa como capa de acceso a una base de datos MySQL para la gestión y extracción de perfiles de clientes e historial de oportunidades.

## 🛠️ Stack 
El microservicio está desarrollado con las siguientes tecnologías y librerías clave:

* **Spring Boot**: ramework base para la creación de la aplicación.
* **Spring Data JPA**: Módulo para la persistencia de datos y el mapeo objeto-relacional (ORM).
* **MySQL Connector**: Driver para la conectividad con el motor de base de datos MySQL.
* **H2 Database**: Base de datos en memoria para entornos de desarrollo y pruebas.
* **Netflix Eureka Client**: Integración para el registro y descubrimiento de servicios.
* **Lombok**: Librería para la reducción de código repetitivo mediante anotaciones.
* **Spring Cloud**: Soporte para la configuración y gestión de sistemas distribuidos.
* **Maven**: Motor de construcción y gestión de dependencias del proyecto.



## 💻 Funcionalidades Principales

## 🔧 Descripción Técnica 



| Componente | Herramienta |
| :--- | :--- |

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






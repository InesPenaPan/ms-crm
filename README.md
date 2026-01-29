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

## 🧬 Modelo de Datos 

| Tabla | Descripción | Atributos |
| :--- | :--- | :--- |
| `User` | Personal interno encargado de la gestión comercial. | `id` (PK), `full_name`, `e-mail`, `password` |
| `Client` | Registro de empresas y cuentas corporativas. | `id` (PK), `company_name`, `ticker`, `sector`, `tax_id`, `website` |
| `Contact` | Puntos de contacto específicos en cada cliente.| `id` (PK), `client_id` (FK), `full_name`, `email`, `phone` |
| `Opportunity` | Gestión de procesos de venta y transacciones. | `id` (PK), `client_id` (FK), `user_id` (FK), `title`, `description`,  `amount_value`, `stage`, `created_at` |

## 🌐 Endpoints





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






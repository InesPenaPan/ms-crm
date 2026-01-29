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

| Endpoint | Descripción | 
| :--- | :--- | 
| `GET /clients` | Lista todas las entidades corporativas registradas en el CRM. |
| `GET /opportunities` | Lista global de oportunidades con nombres de cliente y gestor vinculados. |
| `GET /opportunities/user/{userId}` | Métricas de rendimiento y oportunidades asignadas a un usuario específico. |
| `GET /opportunities/client/{clientId}` | Listado de oportunidades del cliente. |
| `GET /opportunities/clients/user/{userId}` | Relación de clientes únicos que integran la cartera de un usuario. |

## ⚡ Ejecucción

Navega hasta el directorio raíz del proyecto y ejecuta el siguiente comando en tu terminal:

```bash
docker compose up --build -d
```
Una vez levantado el contenedor, la API estará disponible en el puerto `8083`. Puedes verificar el funcionamiento realizando peticiones a través de tu navegador, cURL o Postman:

| Endpoint | URL Ejemplo |
| :--- | :--- |
| Listado de clientes | `http://localhost:8083/clients` |
| Listado de oportunidades | `http://localhost:8083/opportunities` |
| Oportunidades por usuario | `http://localhost:8083/opportunities/user/1` |
| Oportunidades por cliente | `http://localhost:8083/opportunities/client/1` |
| Clientes por usuario | `http://localhost:8083/opportunities/clients/user/1` |






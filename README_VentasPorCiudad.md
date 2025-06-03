
# 📊 Proyecto 2 — Ventas Totales por Ciudad

## 📝 Descripción general
Este proyecto analiza las ventas realizadas por una empresa simulada, agrupando los resultados por ciudad de origen de los clientes. Utilizando consultas SQL con JOINs y funciones agregadas, se obtiene una visión clara de qué regiones generan mayores ingresos.

## 🎯 Objetivo
- Obtener el total de ventas por ciudad.
- Aplicar conceptos como JOIN, GROUP BY y SUM en SQL.
- Visualizar cuáles ciudades aportan más al total de ingresos.

## 🧰 Tecnologías usadas
- **MySQL** (SQL Workbench)
- **Base de datos simulada** (`clientes` y `ventas`)
- **GitHub** para almacenamiento del proyecto

## 🗂️ Estructura de la base de datos

### Tabla: clientes

| Campo           | Tipo         | Descripción                     |
|-----------------|--------------|---------------------------------|
| id              | INT          | Identificador único del cliente|
| nombre_cliente  | VARCHAR(100) | Nombre completo del cliente     |
| ciudad          | VARCHAR(50)  | Ciudad donde reside             |

### Tabla: ventas

| Campo        | Tipo         | Descripción                         |
|--------------|--------------|-------------------------------------|
| id           | INT          | ID único de la venta                |
| cliente_id   | INT          | ID del cliente que hizo la compra   |
| fecha        | DATE         | Fecha en la que se realizó la venta |
| total_venta  | INT          | Valor total de la venta             |

## 🧾 Consulta SQL utilizada

```sql
SELECT 
    c.ciudad,
    SUM(v.total_venta) AS ventas_totales
FROM 
    clientes c
JOIN 
    ventas v ON c.id = v.cliente_id
GROUP BY 
    c.ciudad
ORDER BY 
    ventas_totales DESC;
```

## 📊 Resultados esperados (ejemplo)

| Ciudad       | Ventas Totales |
|--------------|----------------|
| Bogotá       | 3,250,000      |
| Medellín     | 2,890,000      |
| Cali         | 1,750,000      |

## 🧠 Conclusiones
- La ciudad con mayor generación de ingresos fue Bogotá.
- Esta consulta es útil para equipos de ventas, marketing y estrategia territorial.
- Permite tomar decisiones basadas en el rendimiento regional del negocio.

## 📎 Recursos del proyecto
- `proyecto_ventas_clientes.sql` – Script para cargar la base de datos simulada
- `consulta_ventas_por_ciudad.sql` – Consulta usada para el análisis

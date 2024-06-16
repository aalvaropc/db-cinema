# Base de Datos de CineFlix

Este repositorio contiene el esquema de la base de datos y los scripts necesarios para gestionar las operaciones del cine CineFlix ubicado en Ica. La base de datos está diseñada para manejar diversas funcionalidades, incluyendo proyecciones de películas, reservas de asientos y compras de boletos. A continuación, encontrarás una explicación detallada del caso, análisis de requisitos y el diseño de la base de datos.

## Caso Base

Un cliente decide visitar el cine "CineFlix" en la sede principal de la ciudad de Ica. Al llegar, es recibido por un empleado de la taquilla, quien le brinda una cálida bienvenida y le muestra las funciones disponibles para el día. Durante esta interacción, el cliente expresa su interés en la última película de acción, y el empleado le presenta las opciones de funciones, detallando la fecha y hora de cada proyección. Para facilitar la elección del cliente, el empleado muestra la disponibilidad de asientos en las diferentes salas. Después de tomar una decisión, el cliente elige un asiento específico y procede a realizar el pago por su boleto.

## Análisis de Requerimientos

1. **Interacción con el Cliente**: El cliente es recibido e informado sobre las funciones disponibles.
2. **Detalles de Películas**: Información sobre las últimas películas, incluyendo horarios.
3. **Disponibilidad de Asientos**: Detalles sobre los asientos disponibles en diferentes salas.
4. **Compra de Boletos**: Selección y compra de un asiento específico para una función elegida.

## Entidades

La base de datos incluye las siguientes entidades:

1. **Cliente**: Detalles del cliente que visita el cine.
2. **Sede**: Información sobre las ubicaciones del cine.
3. **Empleado**: Datos sobre los empleados que atienden en la taquilla.
4. **Funciones**: Detalles de las proyecciones de películas.
5. **Película**: Información sobre las películas que se proyectan.
6. **Asientos**: Disponibilidad y estado de reserva de los asientos.
7. **Salas**: Información sobre las diferentes salas dentro del cine.
8. **Boleto**: Detalles de los boletos comprados.

## Diseño de la Base de Datos

### Diseño Conceptual
<img src="https://github.com/aalvaropc/db-cinema/blob/main/models/conceptual-model.png" alt="Diseño Conceptual" width="500" height="300">

### Diseño Lógico
<img src="https://github.com/aalvaropc/db-cinema/blob/main/models/logical-model.png" alt="Diseño Lógico" width="500" height="300">

### Diseño Físico
<img src="https://github.com/aalvaropc/db-cinema/blob/main/models/physical-model.jpg" alt="Diseño Físico" width="500" height="300">

## Presentación del Proyecto

Puedes ver la presentación del proyecto en Canva [aquí](https://www.canva.com/design/DAF-0wk27no/inX66uzcZ66oq0I4O8lw6A/edit).

## Scripts

- [**Script de Creación de la Base de Datos**](https://github.com/aalvaropc/db-cinema/blob/main/scripts/create.sql): Este script crea las tablas y relaciones necesarias para la base de datos de CineFlix.
- [**Script de Reversión de la Base de Datos**](https://github.com/aalvaropc/db-cinema/blob/main/scripts/revert.sql): Este script revierte la base de datos a su estado inicial eliminando todas las tablas y relaciones.

## Cómo Usar

1. **Clonar el Repositorio**:
   ```bash
   git clone https://github.com/username/CineFlixDatabase.git

2. **Navegar al Repositorio**:
   ```bash
   cd CineFlixDatabase

3. **Ejecutar el Script de Creación de la Base de Datos**:
   ```bash
   sqlcmd -S servidor -U usuario -P contraseña -d nombre_base_datos -i creation_script.sql

4. **Ejecutar el Script de Reversión de la Base de Datos (si es necesario)**:
   ```bash
   sqlcmd -S servidor -U usuario -P contraseña -d nombre_base_datos -i reversion_script.sql


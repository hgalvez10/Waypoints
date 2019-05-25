# Waypoints

* Ruby version
ruby 2.3.3

* System dependencies
Ejecutar el comando *bundle install* para instalar las gemas necesarias.

## Configuration

* Database creation
    1. Configurar los parámetros de conexión a la base de datos en el directorio: */config/database.yml*.
    2. Se debe llenar los parámetros de *username* y *password* con las credenciales correspondientes.
    3. Finalmente ejecutamos el comando *rails db:create* para crear el esquema de base de datos.
     

* Database initialization
    1. Para inicializar la base de datos debemos ejecutar el siguiente comando *rails db:migrate*.

## Endpoints
La plataforma cuenta con 4 endpoints principalmente:

1. **/waypoints**: Muestra un histórico de *waypoints* que se han registrado.
2. **/vehicle**: Muestra una vista que permite agregar *waypoints* a un vehículo en particular.
3. **/show**: Muestra los *waypoints* más recientes por cada vehículo registrado.
4. **/api/v1/gps**: Almacena los *waypoints* enviados como petición desde */vehicle*
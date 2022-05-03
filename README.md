# Challenge Ilogica

Desafío asignado por Ilógica para medir capacidades creativas y resolutivas de una app web de un postulante. 

Aplicación fue subida a los servidores de Heroku, al cual podrán acceder en el siguiente link:  https://ilogicachallenge.herokuapp.com/

## Primeros pasos:

Pre-requisitos

-	Hacer `git clone` al proyecto, en el siguiente enlace https://github.com/ruizender/ilogica_challenge.git

-	Se deberá instalar en tu equipo las siguientes versiones de Ruby on Rails:
`Ruby 2.6.3`
`Rails 5.2.7`

- En el editor de texto, correr el comando `Bundle install` para instalar las gemas correspondientes al proyecto.

- En la terminal crear las bases de datos, con el comando:   `rails db: create` y Posteriormente correr las migraciones pendientes con `rails db:migrate`

- En la terminal, se ejecuta el comando `rails server`. Y se podrá acceder al proyecto, en el explorador por medio de la siguiente  URL:   http://localhost:3000/


## Descripción y Funcionalidades de la aplicación:

Se mostrarán dos vistas informativas en la aplicación Home y Contact.

Vista home: información relevante sobre la empresa, sus clientes y aplicación móvil para manejo de finanzas personales.

Vista contact: información de contacto de la empresa como números y correos electrónicos y además tendremos un formulario de contacto, en el cual se podrá hacer consultas y solicitudes de información a los administradores de la pagina web a través de un correo electrónico. 

- El formulario: Para el envío del mensaje, el formulario tendrá campos obligatorios, excepto el numero telefónico, que se deberán completar para poder enviar la información a los administrados y posteriormente llegará un correo electrónico a la empresa con los datos del cliente y su consulta.



## Los usuarios:

Existen 3 tipos de roles para definir los usuarios:

-	Visitantes = Aquellos que acceder a la pagina y al formulario sin registrarse
-	Usuarios no admin  = Después de loguearse, podrán acceder a contenidos específicos.
-	Usuario admin =  Después de loguearse, podrán acceder a todo tipo de contenidos y además administrar la tabla de consulta de clientes.

-	Registro de usuarios: Los usuarios se podrán registrar e iniciar sesión en la barra superior de la vista, con el botón Sign up, se desplegará una vista en formal de modal que le pedirá completar los campos email, password y confirmación de password.

-	Inicio de sesión: En el botón Sign in de la misma barra superior, se desplegará una vista en formal de modal en la que podrá ingresar con su email y password.

**El administrador:**

Una vez logueado en la vista index podrá ver un botón llamado See Article que al pulsarlo se abrirá un modal con fotos interactivas relacionadas a la empresa, de tipo carousel.

En la vista contact el administrador podrá hacerle seguimiento a los clientes que anteriormente enviaron sus consultas por el formulario de contacto. A través de una tabla que solo podrá visualizar él, por su rol de administrador. 

Esta tabla mostrara toda la información del cliente y sus mensajes. También podrá ingresar individualmente a cada uno de ellos y posteriormente borrarlo si así lo requiere, una vez finalizada la solicitud.

La tabla tendrá paginación por cada 6 mensajes que reciba según orden por fecha de creación y además tendrá un buscador que filtrará con alguna palabra existente en el contenido del mensaje.

**Adicionales:**

Se aplicaron algunas mejoras a las vistas, para hacer mas interactiva sus funcionalidades. Por ejemplo, el logo de la empresa, al darle click llevara a la pagina principal. En la vista contact en la sección de contacto al darle click a email y location redirigirá a esa sección de la vista de manera suave y agradable gracias a funcionales de Javascript. 

**Credenciales de acceso:**

**Por defecto, el correo electrónico al que llegarán las consultas será: camilo@ilogica.cl**

Teniendo en cuenta que dicho repositorio es privado y, exclusivamente para esta prueba, definí tres usuarios:

**Usuario Administradores**
User: camilo@ilogica.cl
Password: 123456
User: jaime@ilogica.cl
Password: 123456

**Usuario no admin:**

User: example@gmail.com
Password: 123456

# Plataforma de Compartir Experiencias de Lectura

## Descripción del Proyecto
Esta aplicación es una plataforma diseñada para que los usuarios puedan publicar y compartir sus experiencias al leer libros. Los usuarios pueden escribir publicaciones sobre los libros que han leído, comentar las publicaciones de otros usuarios, y seguir a personas con intereses similares. El objetivo principal es fomentar la lectura y ayudar a los usuarios a descubrir libros de su interés a través de recomendaciones y experiencias compartidas.

## Características Principales

- **Publicaciones:** Los usuarios pueden crear publicaciones para compartir sus opiniones, experiencias o reseñas sobre los libros que han leído.
- **Comentarios:** Los usuarios pueden comentar en las publicaciones de otros para discutir y compartir ideas.
- **Seguimiento de Usuarios(En Desarrollo):** Los usuarios pueden seguir a otras personas para mantenerse actualizados con sus publicaciones.
- **Sistema de Reacciones(En Desarrollo y Pruebas):** Permite a los usuarios reaccionar a las publicaciones para expresar su interés o aprecio.
- **Autenticación de Usuarios:** Implementada con Devise, permite el registro e inicio de sesión seguro para los usuarios.

## Tecnologías Utilizadas

- **Ruby on Rails:** Framework principal para el desarrollo de la aplicación.
- **RSpec:** Utilizado para escribir pruebas automatizadas y garantizar la calidad del código.
- **Tailwind CSS:** Framework de CSS para diseñar una interfaz de usuario moderna y responsiva.
- **Devise:** Gem utilizada para la autenticación y gestión de usuarios.
- **PostgreSQL:** Base de datos utilizada para almacenar la información de la aplicación (dependiendo del entorno).

## Instalación y Configuración

### Requisitos Previos
- Ruby (versión 3.0 o superior)
- Rails (versión 7.0 o superior)
- Base de datos PostgreSQL

### Pasos para Instalar

1. Clona este repositorio:
   ```bash
   git clone git@github.com:hector98/Book-Hub.git
   cd Book-Hub
   ```

2. Instala las dependencias:
   ```bash
   bundle install
   yarn install
   ```

3. Configura la base de datos:
   ```bash
   rails db:create
   rails db:test:prepare
   rails db:migrate
   ```

4. Inicia el servidor:
   ```bash
   ./bin/dev
   ```

5. Abre tu navegador y ve a `http://localhost:3000`.

## Uso

1. Regístrate y crea un perfil.
2. Comparte tus experiencias al leer un libro creando una publicación.
3. Explora las publicaciones de otros usuarios y coméntalas.
4. Sigue a otros usuarios para descubrir más contenido (en desarrollo).

## Contribución

Si deseas contribuir a este proyecto:

1. Haz un fork del repositorio.
2. Crea una rama para tu funcionalidad o corrección:
   ```bash
   git checkout -b nombre-rama
   ```
3. Realiza tus cambios y haz un commit:
   ```bash
   git commit -m "Descripción de tus cambios"
   ```
4. Sube los cambios a tu repositorio:
   ```bash
   git push origin nombre-rama
   ```
5. Crea un Pull Request en este repositorio.

## Licencia
Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.

## Contacto
Para cualquier duda o sugerencia, puedes contactar al creador del proyecto a través de [barrioshector13@gmail.com](barrioshector13@gmail.com).

¡Gracias por utilizar mi plataforma de compartir experiencias de lectura!

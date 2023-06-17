# Creación de proyecto Ruby on Rails con integración de PostgreSQL

Pproyecto Ruby on Rails con la integración de PostgreSQL como base de datos. Además, veremos cómo vincularlo a un repositorio en GitHub utilizando la terminal y SSH.

## Pasos

### 1. Creación de proyecto Ruby on Rails

Para crear un nuevo proyecto Ruby on Rails con PostgreSQL, sigue estos pasos:

1. Abre la terminal y navega hasta el directorio donde deseas crear el proyecto.
2. Ejecuta el siguiente comando para generar un nuevo proyecto Rails con PostgreSQL:

```bash
rails new pets_to_home -T -D=postgresql
```

Esto creará un nuevo proyecto Rails llamado "pets_to_home" con PostgreSQL como base de datos.

### 2. Vinculación con repositorio GitHub mediante terminal y SSH

Para vincular el proyecto con un repositorio en GitHub, sigue estos pasos:

1. Abre la terminal y navega hasta el directorio raíz de tu proyecto.
   ```bash
cd pets_to_home
```
3. Ejecuta los siguientes comandos para inicializar un repositorio Git, agregar los archivos y realizar el primer commit:

```bash
echo "# pets_to_home" >> README.md
git init
git add README.md
git commit -m "Proyecto Ruby on rails con postgresql"
git branch -M main
git push -u origin main
```

3. En GitHub, crea un nuevo repositorio vacío.
4. Copia la URL SSH del repositorio creado.
5. Vuelve a la terminal y ejecuta el siguiente comando, reemplazando `[URL SSH]` por la URL que copiaste:

```bash
git remote add origin [URL SSH]
git remote add origin git@github.com:jorgitsss/pets_to_home.git
```

Esto vinculará tu repositorio local con el repositorio remoto en GitHub.

### 3. Tablas contempladas en el proyecto y creación de scaffold

En este proyecto, se contemplarán las siguientes tablas:

- City
- User
- Pet
- Proprietary
- Kindergarten

Para crear un scaffold para cada una de estas tablas, sigue estos pasos:

1. Abre la terminal y navega hasta el directorio raíz de tu proyecto.
2. Ejecuta el siguiente comando para generar un scaffold para la tabla "Usuarios":

```bash
# Generación de los scaffolds para las tablas
rails generate scaffold City name:string location:string city:string
rails generate scaffold User name:string email:string password:string id_city:integer
rails generate scaffold Pet name:string type:string size:string gender:string id_user:integer id_city:integer
rails generate scaffold Proprietary name:string email:string password:string
rails generate scaffold Kindergarten name:string description:string photo:string id_city:integer price:decimal phone:integer published:boolean id_proprietary:integer
```

### 4. Gemas incluidas en el Gemfile

En este proyecto, se incluirán las siguientes gemas en el Gemfile:

```ruby
gem 'paperclip', # Gema para la gestión de archivos adjuntos
gem 'devise', github: 'heartcombo/devise', branch: 'main' # Gema para el manejo de usuarios
gem 'faker', # Gema para crear datos 
gem 'ransack', # Gema para orden y filtrado
gem 'kaminari', # Gema para la paginacion
gem 'image_processing', # Gema para el manejo de imagenes
```

Recuerda ejecutar el comando `bundle install` después de modificar el Gemfile para instalar las gemas.

## 5. Creadas las vistas y completado el model mvc mejoramos las vistas incluyendo bootstrap a nuestra plantilla

## 6. Creamos nuestra barra de navegacion

## 7. vamos por cada paso gerendao un commit o y actualizamos el repositorio

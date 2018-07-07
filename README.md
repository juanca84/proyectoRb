# Prueba Backend

Aplicación fue realizada con el framework Ruby on Rails

## Tecnologías usadas
- Ruby v2.3.1p112
- Ruby on Rails v5.2.0
- Postgresql v9.4

## Instalación

##  Instalar RVM
Para hacer correr ruby debe instalar rvm dentro de su equipo, haga correr el siguientes lineas  para instalar rvm(para más información ver https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-on-ubuntu-14-04-using-rvm):

```sh
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails
```
tambien ejecute la siguiente linea:
```sh
source ~/.rvm/scripts/rvm
```
## Instalación de ruby

Instalar la version 2.4.1 de ruby con la siguiente linea:
```sh
rvm install 2.4.1
```

## Instalación de la aplicación

Copiar y renombrar el archivo config/database.yml.sample por config/database.yml, dentro del archivo:
reemplazar
   - [USUARIO BASE DE DATOS] el nombre de usuario de su base de datos de postgresql (sin comillas).
   - [PASSWORD BASE DE DATOS] el password de su base de datos de datos de postgresql (sin comillas).

Instalar las gemas de la aplicación con los siguientes comandos:
```sh
gem install bundler
bundle install
```
Crear las base de datos con el siguiente comando:
```sh
rake db:create
```
Hacer correr las migraciones:
```sh
rake db:migrate
```
Hacer correr los seeders:
```sh
rake db:seed
```
## ejecutar la aplicación
La aplicación será lanzada en la siguiente dirección http://localhost:3000

```sh
rails s
```

## REST 1
- http://localhost:3000/agencias

respuesta:
```javascript
[
{
"agencia": "Vino Tinto",
"departamento": "La Paz"
},
{
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"agencia": "Aeropuerto",
"departamento": "Santa Cruz"
}
]
```

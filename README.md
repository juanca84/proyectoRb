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
## Ejecutar la aplicación
La aplicación será lanzada en la siguiente dirección http://localhost:3000

```sh
rails s
```

## Generar el archivo resultado
El archivo resultado seŕa generado, con el siguiente comando

```sh
rake db:genera
```

## REST 1: lista de agencias
- http://localhost:3000/agencias

respuesta:
```json
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

## REST 2: lista de personal
- http://localhost:3000/personal

respuesta:
```json
[
    {
      "nombre": "Miss Tia Becker",
      "cargo": "Cajero",
      "agencia": "Vino Tinto",
      "departamento": "La Paz"
    },
    {
      "nombre": "Mortimer Raynor",
      "cargo": "Cajero",
      "agencia": "Vino Tinto",
      "departamento": "La Paz"
    },
    {
      "nombre": "Lonie Bosco",
      "cargo": "Cajero",
      "agencia": "Vino Tinto",
      "departamento": "La Paz"
    },
    ...
]
```
## REST 3: presupuesto total en personal de una agencia al año
- http://localhost:3000/presupuesto?a=camacho

respuesta:
```json
{
  "agencia": "Camacho",
  "presupuesto_anual": "1562880.00 Bs"
}
```

## REST 4: presupuesto total de todas las agencias de cada departamento al año
- http://localhost:3000/presupuesto?d=cochabamba

respuesta:
```json
{
  "departamento": "Cochabamba",
  "presupuesto_anual": "1468320.00 Bs"
}
```

## REST 5: presupuesto total en personal del banco al año

- http://localhost:3000/presupuesto

respuesta:
```json
{
  "Banco": "AGETIC",
  "presupuesto_anual": "6600480.00 Bs"
}
```

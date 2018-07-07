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

## REST 2
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
{
"nombre": "Dr. Brenda Stark",
"cargo": "Cajero",
"agencia": "Vino Tinto",
"departamento": "La Paz"
},
{
"nombre": "Miss Shanon Lubowitz",
"cargo": "Cajero",
"agencia": "Vino Tinto",
"departamento": "La Paz"
},
{
"nombre": "Sienna Kris II",
"cargo": "Cajero",
"agencia": "Vino Tinto",
"departamento": "La Paz"
},
{
"nombre": "Isom Ebert",
"cargo": "Cajero",
"agencia": "Vino Tinto",
"departamento": "La Paz"
},
{
"nombre": "Shania Bauch DVM",
"cargo": "Gerente",
"agencia": "Vino Tinto",
"departamento": "La Paz"
},
{
"nombre": "Deonte Grady",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Calista Yundt",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Mr. Rae Hirthe",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Ms. Victoria Emard",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Derrick Hahn",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Simeon Ondricka",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Ms. Easter Fahey",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Erna Renner",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Mr. Cielo Simonis",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Glenda Kirlin",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Laurence Armstrong MD",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Naomie Dicki Sr.",
"cargo": "Cajero",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Bonnie Hartmann",
"cargo": "Gerente",
"agencia": "San Miguel",
"departamento": "La Paz"
},
{
"nombre": "Antonio Medhurst",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Norris Gaylord",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Mr. Clemens Heaney",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Torey Jaskolski",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Verla Denesik",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Lesley Schulist IV",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Jeramie Haag",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Brycen Abshire",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Jayce Langosh V",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Denis Harvey IV",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Maud Schneider",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Layla Hammes",
"cargo": "Cajero",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Aliza Cartwright",
"cargo": "Gerente",
"agencia": "Cementerio",
"departamento": "La Paz"
},
{
"nombre": "Jeffrey Anderson",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Mrs. Leif Windler",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Jeanie Swift",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Adam O'Kon",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Ms. Lavonne Hilpert",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Jesus Daniel II",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Alycia Lueilwitz PhD",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Allison Russel PhD",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Kacie Lueilwitz",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Barbara Turcotte",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Mrs. Lew McDermott",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Cielo Denesik",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Beryl Kuhlman Jr.",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Dr. Roosevelt Emmerich",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Hanna Stehr",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Eino Hintz",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Benedict Gulgowski",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Chaz Jerde",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Violette Metz IV",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Jamal Harvey MD",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Leone Raynor",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Anais Reichert",
"cargo": "Cajero",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Marisol Marks",
"cargo": "Gerente",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Emmy Hackett V",
"cargo": "Director",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Ms. Al Waters",
"cargo": "Administrativo",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Miss Zander Maggio",
"cargo": "Administrativo",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Maverick Bailey",
"cargo": "Administrativo",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Kirk Conroy",
"cargo": "Administrativo",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Josefa Hegmann",
"cargo": "Administrativo",
"agencia": "Camacho",
"departamento": "La Paz"
},
{
"nombre": "Deondre Turcotte",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Enid Bauch",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Stefanie Macejkovic PhD",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Richmond Hettinger",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Efren Maggio",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Jermain Mitchell",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Miss Laurie Zboncak",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Ms. Magali Beer",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Ellen Pollich",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Naomie Lemke",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Sadye Graham",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Mr. Fern Kuhlman",
"cargo": "Cajero",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Dr. Maximilian Ernser",
"cargo": "Gerente",
"agencia": "Cala Cala",
"departamento": "Cochabamba"
},
{
"nombre": "Jillian Wunsch",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Ms. Hayden Daugherty",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Dr. Jamarcus Wuckert",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Jayden Gerhold",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Mrs. Amie Hammes",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Ms. Horacio Cremin",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Bernhard Swaniawski",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Ms. Seamus Schmeler",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Shanny Morar",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Leatha Senger",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Naomie Connelly",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Ms. Camren Ritchie",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Mrs. Margaretta Heller",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Kenyon Kutch",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Michael Stamm",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Mr. Cindy Kunde",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Rashawn O'Reilly Jr.",
"cargo": "Cajero",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Grayson Ebert",
"cargo": "Gerente",
"agencia": "Casco Viejo",
"departamento": "Cochabamba"
},
{
"nombre": "Vincent Bailey",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Ayla Rosenbaum",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Ms. Rebeka Romaguera",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Shaylee Cremin",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Yesenia Heathcote",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Ashleigh Schultz",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Enos Reichel II",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Flossie Kirlin",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Harvey Lehner",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Henri Ortiz",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Joannie Larson",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Blanca Smitham",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Ms. Marlin Shields",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Denis Abernathy",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Dalton Kshlerin",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Christina Lindgren",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Jeffery Larson",
"cargo": "Cajero",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Carlos Langworth PhD",
"cargo": "Gerente",
"agencia": "Segundo Anillo",
"departamento": "Santa Cruz"
},
{
"nombre": "Javon Satterfield V",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Scarlett Bosco III",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Mrs. Willard Schuster",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Akeem Torp",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Johnathan Morar I",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Marlon Harber",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Ulices D'Amore",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Miss Saul Kuhn",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Lessie Lesch MD",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Jakob Kuhlman",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Ephraim Ernser DDS",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Ms. Anastacio Metz",
"cargo": "Cajero",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Tevin Schaefer",
"cargo": "Gerente",
"agencia": "Jardin Botanico",
"departamento": "Santa Cruz"
},
{
"nombre": "Kimberly Sanford",
"cargo": "Cajero",
"agencia": "Aeropuerto",
"departamento": "Santa Cruz"
},
{
"nombre": "Sydnee Bruen",
"cargo": "Cajero",
"agencia": "Aeropuerto",
"departamento": "Santa Cruz"
},
{
"nombre": "Darien Cartwright",
"cargo": "Cajero",
"agencia": "Aeropuerto",
"departamento": "Santa Cruz"
},
{
"nombre": "Jannie Welch I",
"cargo": "Cajero",
"agencia": "Aeropuerto",
"departamento": "Santa Cruz"
},
{
"nombre": "Noble Boehm",
"cargo": "Cajero",
"agencia": "Aeropuerto",
"departamento": "Santa Cruz"
},
{
"nombre": "Daisha Stehr",
"cargo": "Gerente",
"agencia": "Aeropuerto",
"departamento": "Santa Cruz"
}
]
```

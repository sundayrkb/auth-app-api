# README

rails new auth-app-api

rvm gemset create auth-app-api

rvm list gemsets

cd auth-app-api/

rvm --rvmrc ruby-2.6.2@auth-app-api

cd ..

cd auth-app-api/

accept the config

rvm list gemsets

find ruby-2.6.2@auth-app-api selected for the project

bundle install

atom .  /editor used

rake/rails db:migrate

rails s

bundle install

Add bcrypt to use Active Model has_secure_password by adding the gem 'bcrypt'

Add rack-cors to provides support for Cross-Origin Resource Sharing (CORS) for Rack compatible web applications

we need a cors.rb and session_store.rb in the initialize folder

 touch config/initilizers/cor.rb

 Accept the domin at cors or white list the domin

 touch config/initilizers/session_store.rb

   Implementing HTTP only cookie authentication.

 rails g User name email password_digest


 User Model
   name
   email
   password_digest

   rails g migration add_column_role__to_users role

   role

 rails db:migrate

 touch app/controller/session_controller.rb
   Session Managed
   created session
   logged in
   logged out

RegistrationsController
   User registration
module CurrentUserConcern used for current_user

routes defined accordingly .

Test the api

used postman

roles = ['Admin', 'Doctor', 'Patient']

http://localhost:3000/registrations  ---- Action POST ----- JSON

http://localhost:3000/sessions  ---- Action POST ----- JSON

http://localhost:3000/logged_in ---- Action GET

http://localhost:3000/logout    ---- Action DELTE

http://localhost:3000/search    ---- Action GET ----- JSON

http://localhost:3000/destroy   ---- Action DELTE ----- JSON





http://localhost:3000/registrations  ---- Action POST ----- JSON


1
{"user":
{
"name": "admin",
"email": "admin@email.com",
"role": "Admin",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

2

 {"user":
{
"name": "adminone",
"email": "adminone@email.com",
"role": "Admin",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

 3

 {"user":
{
"name": "doctor",
"email": "doctor@email.com",
"role": "Doctor",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

4

 {"user":
{
"name": "doctorone",
"email": "doctorone@email.com",
"role": "Doctor",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

 5

 {"user":
{
"name": "patient",
"email": "patient@email.com",
"role": "Patient",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

 6

 {"user":
{
"name": "patientone",
"email": "patientone@email.com",
"role": "Patient",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}


7

 {"user":
{
"name": "findme",
"email": "findme@email.com",
"role": "Role",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}


Create Session

http://localhost:3000/sessions  ---- Action POST ----- JSON
{"user":
{
"email": "admin@email.com",
"password": "0123456789@a"
}
}

LOgged in and list the records as per the roles

http://localhost:3000/logged_in ---- Action GET

Logged out

http://localhost:3000/logout    ---- Action DELTE


Search the record with id or name or email

http://localhost:3000/search    ---- Action GET ----- JSON

{"user":
{
"id": "9",
"email": "findme@email.com",
"name": "man"
}
}




Delete the record with id or name or email

http://localhost:3000/destroy   ---- Action DELTE ----- JSON
{"user":
{
"id": "8",
"email": "findme@email.com",
"name": "man"
}
}



heroku
heroku login
heroku create

Logged in as email@hotmail.com
Creating app... done, ⬢ desolate-retreat-47951
https://desolate-retreat-47951.herokuapp.com/ | https://git.heroku.com/desolate-retreat-47951.git

git config --list --local | grep heroku

remote.heroku.url=https://git.heroku.com/desolate-retreat-47951.git
remote.heroku.fetch=+refs/heads/*:refs/remotes/heroku/*

heroku stack

heroku stack:set heroku-18

add production pg gem in gemfile

bundle

heroku run rake db:migrate


https://desolate-retreat-47951.herokuapp.com




https://desolate-retreat-47951.herokuapp.com/registrations  ---- Action POST ----- JSON
https://desolate-retreat-47951.herokuapp.com/sessions  ---- Action POST ----- JSON
https://desolate-retreat-47951.herokuapp.com/logged_in ---- Action GET
https://desolate-retreat-47951.herokuapp.com/logout    ---- Action DELTE
https://desolate-retreat-47951.herokuapp.com/search    ---- Action GET ----- JSON
https://desolate-retreat-47951.herokuapp.com/destroy   ---- Action DELTE ----- JSON





https://desolate-retreat-47951.herokuapp.com/registrations  ---- Action POST ----- JSON

1
{"user":
{
"name": "admin",
"email": "admin@email.com",
"role": "Admin",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

2

 {"user":
{
"name": "adminone",
"email": "adminone@email.com",
"role": "Admin",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

 3

 {"user":
{
"name": "doctor",
"email": "doctor@email.com",
"role": "Doctor",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

4

 {"user":
{
"name": "doctorone",
"email": "doctorone@email.com",
"role": "Doctor",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

 5

 {"user":
{
"name": "patient",
"email": "patient@email.com",
"role": "Patient",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}

 6

 {"user":
{
"name": "patientone",
"email": "patientone@email.com",
"role": "Patient",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}


7

 {"user":
{
"name": "findme",
"email": "findme@email.com",
"role": "Role",
"password": "0123456789@a",
"password_confirmation": "0123456789@a"
}
}


Create Session

https://desolate-retreat-47951.herokuapp.com/sessions  ---- Action POST ----- JSON
{"user":
{
"email": "admin@email.com",
"password": "0123456789@a"
}
}

LOgged in and list the records as per the roles

https://desolate-retreat-47951.herokuapp.com/logged_in ---- Action GET

Logged out

https://desolate-retreat-47951.herokuapp.com//logout    ---- Action DELTE


Search the record with id or name or email

https://desolate-retreat-47951.herokuapp.com/search    ---- Action GET ----- JSON

{"user":
{
"id": "9",
"email": "findme@email.com",
"name": "man"
}
}




Delete the record with id or name or email

https://desolate-retreat-47951.herokuapp.com/destroy   ---- Action DELTE ----- JSON
{"user":
{
"id": "8",
"email": "findme@email.com",
"name": "man"
}
}

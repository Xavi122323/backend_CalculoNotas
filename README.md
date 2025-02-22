# Minicore cálculo de progresos

El proyecto a realizar es un cálculo de la nota necesaria para aprobar el tercer progreso, este utiliza una base de datos en PostgreSQL, un backend desarrollado en Ruby on Rails y un frontend en Angular. El proyecto permite que el usuario ingrese la información de las fechas de primero, segundo y tercer progreso, en base a estas fechas se cálcula la cantidad de notas en estos y con los datos ingresados se calcula en base al peso de cada progreso el aporte a la calificación final de cada uno y en progreso 3 el mínimo para llegar al 6.

## link código en git

backend: https://github.com/Xavi122323/backend_CalculoNotas.git

frontend: https://github.com/Xavi122323/frontend_CalculoNotas.git

## link código deployado

backend: https://minicorebackend-seqp.onrender.com

frontend: frontend-calculo-notas.vercel.app

## Información de apoyo

Documentación Ruby: https://guides.rubyonrails.org

Documentación Angular: https://angular.io/docs

## Link al video de explicación

https://youtu.be/s4fdyssmdcA

## Información de contacto

xavier.ramos@udla.edu.ec

xaviramos10@hotmail.com

# Guia de comandos de Ruby

## rails básico

rails new backend_CalculoNotas --api -d=postgresql

rails generate model Alumno nombre:string

rails generate model Nota nota:float fecha:date alumno:references

rails generate controller api/v1/calculo_nota index --skip-routes

## Postgresql

psql -Upostgres

create user minicore;

alter user minicore with password 'miniCore2024';

alter user minicore with NOSUPERUSER CREATEDB CREATEROLE INHERIT LOGIN REPLICATION;

## rails

rails db:create

rails db:migrate

rails db:seed

bundle install

bundle

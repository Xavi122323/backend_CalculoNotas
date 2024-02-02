## Guia de Ruby

## --------------------------------------------------------------- -> rails

rails new backend_CalculoNotas --api -d=postgresql

rails generate model Alumno nombre:string

rails generate model Nota nota:float fecha:date alumno:references

rails generate controller api/v1/calculo_nota index --skip-routes

## --------------------------------------------------------------- -> postgresql

psql -Upostgres

create user minicore;

alter user minicore with password 'miniCore2024';

alter user minicore with NOSUPERUSER CREATEDB CREATEROLE INHERIT LOGIN REPLICATION;

## --------------------------------------------------------------- -> rails

rails db:create

rails db:migrate

rails db:seed

bundle install
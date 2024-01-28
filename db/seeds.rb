# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

alumnos_data = [
  { nombre: 'Fabian' },
  { nombre: 'Amanda' },
  { nombre: 'Bernardo' },
  { nombre: 'Isabella' }
]

alumnos_data.each do |alumno|
  Alumno.find_or_create_by(nombre: alumno[:nombre])
end

notas_data = [
  { nota: 10, fecha: '2023-10-01', alumno_id: 1 },
  { nota: 9, fecha: '2023-11-12', alumno_id: 1 },
  { nota: 6, fecha: '2023-10-05', alumno_id: 2 },
  { nota: 1, fecha: '2023-12-20', alumno_id: 2 },
  { nota: 9, fecha: '2023-10-15', alumno_id: 3 },
  { nota: 6, fecha: '2023-11-22', alumno_id: 3 },
  { nota: 2, fecha: '2023-12-10', alumno_id: 4 },
  { nota: 8, fecha: '2023-10-18', alumno_id: 4 },
  { nota: 9, fecha: '2023-11-05', alumno_id: 1 },
  { nota: 3, fecha: '2023-12-15', alumno_id: 1 },
  { nota: 10, fecha: '2023-10-20', alumno_id: 2 },
  { nota: 5, fecha: '2023-11-25', alumno_id: 2 },
  { nota: 2, fecha: '2023-12-30', alumno_id: 3 },
  { nota: 9, fecha: '2023-10-22', alumno_id: 3 },
  { nota: 4, fecha: '2023-11-30', alumno_id: 4 },
  { nota: 8, fecha: '2023-12-05', alumno_id: 1 }
]

notas_data.each do |nota|
  Nota.find_or_create_by(nota: nota[:nota], fecha: nota[:fecha], alumno_id: nota[:alumno_id])
end

puts 'Seeds created successfully!'

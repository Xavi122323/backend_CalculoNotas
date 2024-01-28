class Alumno < ApplicationRecord
    has_many :notas , class_name: 'Nota'
    def self.calculoNotas(progreso1_dates, progreso2_dates, progreso3_dates, notas_count_progreso1, notas_count_progreso2, notas_count_progreso3)

        return 'Invalid dates or notas counts' unless progreso1_dates[:start] < progreso1_dates[:end] && progreso1_dates[:end] < progreso2_dates[:start] && progreso2_dates[:start] < progreso2_dates[:end] && progreso2_dates[:end] < progreso3_dates[:start] && progreso3_dates[:start] < progreso3_dates[:end] && notas_count_progreso1 > 0 && notas_count_progreso2 > 0 && notas_count_progreso3 > 0

        Alumno.all.map do |alumno|

        progreso1_grade = calculoNotasProgreso(alumno, progreso1_dates, notas_count_progreso1, 0.25)
        progreso2_grade = calculoNotasProgreso(alumno, progreso2_dates, notas_count_progreso2, 0.35)
        progreso3_grade = 6 - (progreso1_grade + progreso2_grade)

        # Return structured results
        { alumno_id: alumno.id, nombre: alumno.nombre, progreso1_grade: progreso1_grade, progreso2_grade: progreso2_grade, progreso3_grade: progreso3_grade }
        end
    end

    private

    def self.calculoNotasProgreso(alumno, dates, notas_count, weight)
        notas = alumno.notas.where(fecha: dates[:start]..dates[:end])
        total_notas = notas.sum(:nota)
        (total_notas / notas_count) * weight
    end

end

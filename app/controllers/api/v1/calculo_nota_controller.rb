class Api::V1::CalculoNotaController < ApplicationController
    def calcular_progresos
        progreso1_dates = { start: params[:progreso1_start], end: params[:progreso1_end] }
        progreso2_dates = { start: params[:progreso2_start], end: params[:progreso2_end] }
        progreso3_dates = { start: params[:progreso3_start], end: params[:progreso3_end] }
    
        grades = Alumno.calculate_progress_grades(progreso1_dates, progreso2_dates, progreso3_dates)
    
        render json: grades
      end

    def index
        @notas = Nota.joins(:alumno).select('nota.*, alumnos.nombre as alumno_nombre')
        render json: @notas.as_json(only: [:id, :nota, :fecha, :alumno_id], methods: [:alumno_nombre])
    end
    
end

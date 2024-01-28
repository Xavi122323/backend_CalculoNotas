class CreateNota < ActiveRecord::Migration[7.0]
  def change
    create_table :nota do |t|
      t.float :nota
      t.date :fecha
      t.references :alumno, null: false, foreign_key: true

      t.timestamps
    end
  end
end

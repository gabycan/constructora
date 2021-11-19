class CreateOficinas < ActiveRecord::Migration[6.1]
  def change
    create_table :oficinas do |t|
      t.integer :number
      t.references :edificio_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end

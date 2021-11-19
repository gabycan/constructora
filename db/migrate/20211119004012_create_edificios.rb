class CreateEdificios < ActiveRecord::Migration[6.1]
  def change
    create_table :edificios do |t|
      t.string :name
      t.string :adress

      t.timestamps
    end
  end
end

class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :code
      t.string :icon
      t.boolean :statut, default: false

      t.timestamps
    end
  end
end

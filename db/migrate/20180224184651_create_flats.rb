class CreateFlats < ActiveRecord::Migration[5.1]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.integer :zip_code
      t.string :city
      t.integer :capacity
      t.string :picture
      t.float :pk
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

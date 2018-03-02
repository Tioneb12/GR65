class CreateFlats < ActiveRecord::Migration[5.1]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.string :adress2
      t.integer :zip_code
      t.string :city
      t.string :phone_number
      t.string :mobil_phone
      t.integer :capacity
      t.string :picture
      t.float :pk
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

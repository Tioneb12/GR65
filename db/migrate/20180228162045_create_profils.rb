class CreateProfils < ActiveRecord::Migration[5.1]
  def change
    create_table :profils do |t|
      t.string :first_name
      t.string :last_name
      t.string :pseudo
      t.string :city
      t.string :country
      t.string :description
      t.string :avatar
      t.date :birth_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

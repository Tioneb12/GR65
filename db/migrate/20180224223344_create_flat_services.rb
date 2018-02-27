class CreateFlatServices < ActiveRecord::Migration[5.1]
  def change
    create_table :flat_services do |t|
      t.references :flat, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end

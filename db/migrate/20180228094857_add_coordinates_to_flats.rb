class AddCoordinatesToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :latitude, :float
    add_column :flats, :longitude, :float
  end
end

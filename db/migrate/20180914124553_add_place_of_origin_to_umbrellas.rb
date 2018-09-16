class AddPlaceOfOriginToUmbrellas < ActiveRecord::Migration[5.2]
  def change
    add_column :umbrellas, :origin, :string
  end
end

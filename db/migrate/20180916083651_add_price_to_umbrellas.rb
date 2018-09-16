class AddPriceToUmbrellas < ActiveRecord::Migration[5.2]
  def change
    add_column :umbrellas, :price, :integer.to_f
  end
end

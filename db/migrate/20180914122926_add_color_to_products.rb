class AddColorToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :umbrellas, :color, :string
    add_column :umbrellas, :size, :string
  end
end

class RenameOriginInUmbrellas < ActiveRecord::Migration[5.2]
  def change
    rename_column :umbrellas, :origin, :material # [name of table, old name of column, new name]
  end
end

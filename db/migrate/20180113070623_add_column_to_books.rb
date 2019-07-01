class AddColumnToBooks < ActiveRecord::Migration
  def change
    add_column :books, :date, :date
    add_column :books, :star, :string
    add_column :books, :impression, :string
  end
end

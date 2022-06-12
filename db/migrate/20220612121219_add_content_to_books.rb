class AddContentToBooks < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :price, :integer
    add_column :books, :content, :string
  end
end

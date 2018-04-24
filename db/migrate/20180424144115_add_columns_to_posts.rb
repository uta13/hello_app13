class AddColumnsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :first, :string
    add_column :posts, :second, :string
    add_column :posts, :third, :string
  end
end

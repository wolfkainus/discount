class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_name, :string
    add_column :users, :address, :text
    add_column :users, :avatar, :string
    add_column :users, :role, :integer
  end
end

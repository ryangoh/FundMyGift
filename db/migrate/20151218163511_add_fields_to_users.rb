class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :text
    add_column :users, :postcode, :string
    add_column :users, :country, :string
    add_column :users, :phone_no, :string
  end
end

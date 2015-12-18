class AddFkToPinFunding < ActiveRecord::Migration
  def change
    add_foreign_key :fundings, :users
    add_foreign_key :fundings, :pins
    add_foreign_key :pins, :users
  end
end

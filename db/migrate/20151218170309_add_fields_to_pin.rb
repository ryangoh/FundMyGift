class AddFieldsToPin < ActiveRecord::Migration
  def change
    add_column :pins, :goal, :decimal, :precision => 8, :scale=> 2
    add_column :pins, :amount, :decimal, :precision => 8, :scale=> 2
    add_column :pins, :donate_physical, :boolean
    add_column :pins, :status, :string
    add_column :pins, :awb_no, :string
    add_column :pins, :delivery_mode, :string
  end
end

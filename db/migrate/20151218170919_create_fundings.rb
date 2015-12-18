class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.integer :pin_id
      t.integer :user_id
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end

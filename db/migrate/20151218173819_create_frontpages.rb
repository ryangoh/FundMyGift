class CreateFrontpages < ActiveRecord::Migration
  def change
    create_table :frontpages do |t|

      t.timestamps null: false
    end
  end
end

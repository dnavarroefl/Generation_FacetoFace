class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :price
    	t.text :name
    	t.string :description
    	t.string :rating

      t.timestamps null: false
    end
  end
end

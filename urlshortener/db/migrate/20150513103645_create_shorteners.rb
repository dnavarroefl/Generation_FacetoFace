class CreateShorteners < ActiveRecord::Migration
  def change
    create_table :shorteners do |t|
    	t.string :url
    	t.integer :visits, default = 0

      	t.timestamps null: false
    end
  end
end

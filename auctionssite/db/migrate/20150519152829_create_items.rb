class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :user
    	t.string :email
    	t.string :bid
    	t.string :date
    
      t.timestamps null: false
    end
  end
end

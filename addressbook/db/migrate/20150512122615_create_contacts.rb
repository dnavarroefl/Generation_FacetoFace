class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.text :name
    	t.text :address
    	t.string :phonenumber
    	t.string :email

      t.timestamps null: false
    end
  end
end

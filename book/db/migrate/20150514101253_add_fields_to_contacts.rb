class AddFieldsToContacts < ActiveRecord::Migration
  	def change
  		change_table :contacts do |t|
  			t.string :name
  			t.string :address
  			t.string :phone
  			t.string :email
  			end
	end
end 
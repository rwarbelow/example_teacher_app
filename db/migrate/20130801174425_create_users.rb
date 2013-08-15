class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :username
  		t.string :password_digest
  		t.string :email
  		t.string :cell_phone
  		t.string :phone1
  		t.string :phone2
  		t.text :note1
  		t.text :note2
  		t.text :note3

  		t.timestamps
  	end
  end
end

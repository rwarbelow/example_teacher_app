class CreateEvents < ActiveRecord::Migration
  def change
  	create_table :events do |t|
  		t.string :title
  		t.string :date
  		t.string :time
  		t.string :location
  		t.integer :status, default: 1
  		t.references :user

  		t.timestamps
  	end
  end
end

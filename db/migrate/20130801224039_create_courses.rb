class CreateCourses < ActiveRecord::Migration
  def change
  	create_table :courses do |t|
  		t.integer :grade_level
  		t.string :title
  		t.integer :period
  		t.references :teacher_profile

  		t.timestamps
  	end
  	
  end
end

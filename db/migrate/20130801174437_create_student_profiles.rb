class CreateStudentProfiles < ActiveRecord::Migration
  def change
  	create_table :student_profiles do |t|
  		t.string :gender
  		t.string :birthday
  		t.string :address
  		t.string :ccsd_id
  		t.string :grade_level
  		t.references :student_role

  		t.timestamps
  	end
  end
end

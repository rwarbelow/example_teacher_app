class CreateStudentGuardianRelationships < ActiveRecord::Migration
  def change
  	create_table :student_guardian_relationships do |t|
  		t.references :student_profile
  		t.references :parent_profile

  		t.timestamps
  	end
  end
end

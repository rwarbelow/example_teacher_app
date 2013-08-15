class CreateTeacherProfiles < ActiveRecord::Migration
  def change
  	create_table :teacher_profiles do |t|
  		t.string :title
  		t.references :teacher_role

  		t.timestamps
  	end
  end
end

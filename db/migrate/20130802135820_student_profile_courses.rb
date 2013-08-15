class StudentProfileCourses < ActiveRecord::Migration
  def change
  	create_table :student_profile_courses do |t|
  		t.references :student_profile
  		t.references :course

  		t.timestamps
  	end
  end
end

class StudentProfileCourse < ActiveRecord::Base
  # Remember to create a migration!

  belongs_to :student_profile
  belongs_to :course
end

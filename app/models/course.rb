class Course < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :teacher_profile
  belongs_to :student_profile
  has_many :student_profile_courses
  has_many :student_profiles, through: :student_profile_courses
end

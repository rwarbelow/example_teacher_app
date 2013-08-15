class TeacherProfile < ActiveRecord::Base
  # Remember to create a migration!
  has_many :courses
  has_many :student_profiles_courses, through: :courses
  has_one :teacher_profile

  def has_courses?
  	if self.courses.count > 0
  		true
  	else
  		false
  	end
  end
end


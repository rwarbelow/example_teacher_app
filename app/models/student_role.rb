class StudentRole < Role
  # Remember to create a migration!
  has_one :student_profile
end

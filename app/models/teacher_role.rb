class TeacherRole < Role
  # Remember to create a migration!
  has_one :teacher_profile
end

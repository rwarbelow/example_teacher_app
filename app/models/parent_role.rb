class ParentRole < Role
  # Remember to create a migration!
  has_one :parent_profile
end

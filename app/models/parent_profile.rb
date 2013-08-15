class ParentProfile < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :parent_role
  has_many :student_guardian_relationships
  has_many :student_profiles, through: :student_guardian_relationships
end

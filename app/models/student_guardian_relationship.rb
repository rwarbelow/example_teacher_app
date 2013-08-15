class StudentGuardianRelationship < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :student_profile
  belongs_to :parent_profile
  validates :student_profile_id, :uniqueness => { :scope => :parent_profile_id }
end

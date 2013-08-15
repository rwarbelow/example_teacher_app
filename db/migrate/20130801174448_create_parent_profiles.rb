class CreateParentProfiles < ActiveRecord::Migration
  def change
  	create_table :parent_profiles do |t|
  		t.string :relationship_to_student
  		t.string :preferred_language
  		t.references :parent_role

  		t.timestamps
  	end
  end
end

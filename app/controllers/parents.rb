get '/ParentRole/:user_id' do
	if current_user
		@parent = User.find(params[:user_id])
		erb :'/parents/parent_dashboard'
	else
		redirect '/page_does_not_exist'
	end
end

post "/ParentRole/parent_profile/:user_id" do
		@parent = User.find(params[:user_id])
		@build = @parent.roles.first.build_parent_profile(preferred_language: params[:preferred_language], relationship_to_student: params[:relationship_to_student])
		@build.save
		redirect "/ParentRole/#{@parent.id}"
end


post "/ParentRole/:parent_id/add_student" do
	@parent = User.find(params[:user_id])
	@student_profile = StudentProfile.find_by_ccsd_id((params[:ccsd_id]).student_role_id)
	@parent.roles.first.parent_profile.student_profiles << @student_profile
	redirect "/parents/#{@parent.id}"
end
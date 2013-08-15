get '/StudentRole/:user_id' do
	if current_user
		@student = User.find(params[:user_id])
		erb :'/students/student_dashboard'
	else
		redirect '/page_does_not_exist'
	end
end

post '/StudentRole/student_profile/:user_id' do
		@student = User.find(params[:user_id])
		@build = @student.roles.first.build_student_profile(grade_level: params[:grade_level], birthday: params[:birthday], address: params[:address], gender: params[:gender], ccsd_id: params[:ccsd_id])
		@build.save
		redirect "/StudentRole/#{@student.id}"
end


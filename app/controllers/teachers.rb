get '/TeacherRole/:user_id' do
	if current_user
		@teacher = User.find(params[:user_id])
		erb :'/teachers/teacher_dashboard'
	else
		redirect '/page_does_not_exist'
	end
end


post "/TeacherRole/teacher_profile/:user_id" do
	@teacher = User.find(params[:user_id])
	@build = @teacher.roles.first.build_teacher_profile(title: params[:title])
	@build.save
	redirect "/TeacherRole/#{@teacher.id}"
end


post "/TeacherRole/:user_id/courses/new_course" do
	p params
	@course = Course.new(params[:course])
	@course.teacher_id = params[:teacher_id]
	if @course.save
		redirect "/teachers/#{@course.teacher_id}"
	else
		erb :'teachers/teacher_profile'
	end

end

get '/TeacherRole/:user_id/courses/:course_id' do
end

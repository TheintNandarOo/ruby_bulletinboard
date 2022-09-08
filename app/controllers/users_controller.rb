class UsersController < ApplicationController
# function : users
# show all users list
# return : @users
	def index
		@users = UserService.getAllUserList
	end

# function : search users
# search all users list
# return : @users
	def search_users
		@users = UserService.searchUsers(params)
		Rails.logger.info("userssssss in controller #{@users.inspect}")
		render :index, status: :unprocessable_entity
	end

# function : new
# show new user create form
# return : @user
	def new
		@user = User.new
	end

# function : create
# create new user
# return : @user
	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to users_path, notice: 'User Created Successfully'
		else 
			render :new
		end
	end

	def show
		@user = UserService.getUserById(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to users_path
		else
			render edit
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		reset_session
		redirect_to users_path
	end

	private
	def user_params
		params.require(:user).permit(:id, :name, :email, :password, :address, :phone, :dob, :gender, :role, :created_id, :updated_id)
	end
end

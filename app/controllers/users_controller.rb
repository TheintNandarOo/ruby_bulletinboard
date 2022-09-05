class UsersController < ApplicationController
	#function : users
	#show all users list
	#return : @users
	def index
		@users = UserService.getAllUserList
	end

	def search_users
		@users = User.where(deleted_id: nil)
		if params[:name] && params[:name] != ""
			@users = @users.where(name: params[:name])
		end
		if params[:email] && params[:email] != ""
			@users = @users.where(email: params[:email])
		end
		if params[:address] && params[:address] != ""
			@users = @users.where(address: params[:address])
		end
		if params[:phone] && params[:phone] != ""
			@users = @users.where(phone: params[:phone])
		end
		if (params[:from_date] && params[:from_date] != "" && params[:to_date] && params[:to_date] != "")
			@users = @users.where('created_at BETWEEN ? AND ?', params[:from_date], params[:to_date])
		end
	  	render "users/index"
	end

	def new
		@user = User.new()
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else 
			render :"users/new"
		end
	end

	private
		def user_params
		params.require(:user).permit(:id, :name, :email, :password, :address, :phone, :dob, :gender, :role, :created_id, :updated_id)
		end
end

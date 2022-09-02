class UsersController < ApplicationController
  #function : users
  #show all users list
  #return : @users
  def index
    @users = UserService.getAllUserList
  end

  def search_users
    @users = User.search(params[:search])
  end
end

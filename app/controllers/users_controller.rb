class UsersController < ApplicationController
  # def users
  #   @users = UserService.getAllUserList
  # end

  #function : users
  #show all users list
  #return : @users
  def index
    @users = UserService.getAllUserList
  end
end

class UserService
  class << self
    # function : getAllUserList
    # Show all user list
    # return @users
    def getAllUserList
      @users = UserRepository.getAllUserList
    end

    def searchUsers(params)
      @users = UserRepository.searchUsers(params)
      @users
    end

    def getUserById(id)
      @user = UserRepository.getUserById(id)
    end
  end
end

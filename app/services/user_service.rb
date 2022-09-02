class UserService
    class << self
        #function : getAllUserList
        #Show all user list
        #return @users
        def getAllUserList
            @users = UserRepository.getAllUserList
        end
    end
end
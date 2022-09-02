class UserRepository
    class << self
        #function : getAllUserList
        #show all user list
        #return : @users
        def getAllUserList
            @users = User.where(deleted_id: nil)
        end
    end
end
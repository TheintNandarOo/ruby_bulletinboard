class UserRepository
  class << self
    #function : getAllUserList
    #show all user list
    #return : @users
    def getAllUserList
        @users = User.where(deleted_id: nil)
    end

    def searchUsers(params)
      @users = User.where(deleted_id: nil)
      Rails.logger.info("userssssss in repo #{@users.inspect}")
      if params
        if params[:name].present?
          @users = @users.where('name LIKE ?', "%#{params[:name]}%")
        end
        if params[:email].present?
          @users = @users.where('email LIKE ?', "%#{params[:email]}%")
        end
        if params[:address].present?
          @users = @users.where('address LIKE ?', "%#{params[:address]}%")
        end
        if params[:phone].present?
          @users = @users.where('phone LIKE ?', "%#{params[:phone]}%")
        end
        if params[:from_date].present? && params[:to_date].present? 
          @users = @users.where('created_at BETWEEN ? AND ?', params[:from_date], params[:to_date])
        end
      end
      @users
    end

    def getUserById(id)
      @user = User.find(id)
    end
  end
end
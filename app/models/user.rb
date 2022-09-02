class User < ApplicationRecord
    before_save :email_downcase
    private

    def email_downcase
        self.email = email.downcase
    end
end

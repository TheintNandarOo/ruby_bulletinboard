class Post < ApplicationRecord
  belongs_to :created_user, class_name: "Users", foreign_key: "created_id"
  belongs_to :updated_user, class_name: "Users", foreign_key: "updated_id"

  validates :title, presence: true
  validates :description, presence: true
end

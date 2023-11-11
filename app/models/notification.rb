class Notification < ApplicationRecord
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i , message: "Please enter a valid email address" }
end

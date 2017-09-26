class User < ApplicationRecord
    has_secure_password
    has_many :lists
    has_many :tasks
    validates :email, :name, presence: true
    validates :email, uniqueness: true
end

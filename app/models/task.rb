class Task < ApplicationRecord
    belongs_to :user
    belongs_to :list
    validates :body, presence: true
end

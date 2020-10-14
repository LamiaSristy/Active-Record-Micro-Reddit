class Post < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :body, presence: true
    # validates :user_id


    belongs_to :user
    has_many :comments, dependent: :destroy
end

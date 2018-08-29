class User < ApplicationRecord
    
    validates :user, presence: true
end

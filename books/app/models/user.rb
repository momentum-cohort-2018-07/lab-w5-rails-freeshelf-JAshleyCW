class User < ApplicationRecord

    has_secure_password
    has_many :books
    validates :email, :password_digest, presence: true, uniqueness: true

end
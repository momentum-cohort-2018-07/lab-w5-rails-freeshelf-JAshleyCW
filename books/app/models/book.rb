class Book < ApplicationRecord
    attr_accessor :title, :author, :publisher, :genre, :URL

    validates :title, presence: true
    validates :author, presence: true

end

class Article < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :body, presence: true, length: {minimum:20, maximum:100}
end

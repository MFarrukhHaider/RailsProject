class User < ApplicationRecord
    has_many :posts
    delegate :amount, to: :posts, prefix: true

end
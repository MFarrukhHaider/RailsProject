class Post < ApplicationRecord
    validates :title, presence: true
    validates :context, presence: true

    scope:published_posts, ->{where(published:true)}

    def format_title
        title.capitalize
    end
end
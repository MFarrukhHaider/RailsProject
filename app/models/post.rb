class Post < ApplicationRecord
    # belongs_to :user
    # has_many :quantities
    validates :title, presence: true
    validates :context, presence: true

    scope :published_posts, ->{where(published:true)}

    def format_title
        self.title = self.title.capitalize
    end

end
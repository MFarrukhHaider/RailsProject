require 'rails_helper'

RSpec.describe Post, type: :model do
    it "invalid without title" do
      post=Post.new(title:nil,context:"hashds",published:true)
      expect(post).to_not be_valid
      expect(post.errors[:title]).to include("can't be blank")
    end
    it "is valid with title and context both" do
    post=Post.new(title:"dsadsadas",context:"hello")
    expect(post).to be_valid
  end
end



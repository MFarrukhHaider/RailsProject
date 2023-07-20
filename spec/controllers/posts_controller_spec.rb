require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe  '#index' do
    before { get :index}
    it 'should render a template' do
      # byebug
      # get :index
      # expect(response).to have_http_status(:success)

      expect(response).to render_template(:index)
    end
  end

  describe '#new' do
    it 'should render new page successfully' do
      get :new

      # it{ expect(response).to have_http_status(:ok)}
      expect(response).to render_template(:new)
    end
  end

  describe '#create' do
    before { post :create, params:{post:{title:"hello",context:"khan",published:true}}}

    it 'should create a new post' do
      expect(response).to redirect_to('/all_posts')
    end
  end

end


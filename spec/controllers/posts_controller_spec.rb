require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    describe '#new' do
        context 'renders new page successfully' do
          before { get :new }
    
          it { expect(response).to have_http_status(:ok) }
          it { expect(response).to assert_redirected_to posts_create_path }
        end
      end

end
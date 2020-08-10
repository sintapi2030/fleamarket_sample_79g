require 'rails_helper'
require 'support/payjp_mock'
describe CreditController, type: :controller do
  let(:user) { create(:user) }
  let(:credit) { create(:credit)}
  describe 'GET #new' do
      context 'ログイン時' do
        before do
          sign_in user
        end
        it "newアクションのページに遷移するか" do
          get :new
          expect(response).to render_template :new
        end
      end
    end
  end
end
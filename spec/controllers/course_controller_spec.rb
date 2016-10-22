require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
  # 期待 index action ，要撈出所有站上所有的 courses，assigns 到 @courses 並顯示出來。
  # https://www.relishapp.com/rspec/rspec-rails/docs/matchers/render-template-matcher
  # GET index
  # POST create
  # PUT update
  # DELETE destroy
  describe 'GET index' do
    it 'assigns @courses and render template' do
      course1 = Course.create(title: 'foo', description: 'bar')
      course2 = Course.create(title: 'bar', description: 'foo')

      get :index

      expect(assigns[:courses]).to eq([course1, course2])
      expect(response).to render_template('index')
    end
  end
end

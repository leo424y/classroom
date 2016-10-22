require 'rails_helper'

RSpec.describe CourseController, type: :controller do
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

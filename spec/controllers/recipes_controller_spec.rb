require 'rails_helper'

describe RecipesController, type: :controller do
  
  describe 'POST #search' do
    subject { post :search }

    context 'with existing ingredients' do
    end

    context 'without existing ingredients' do
    end
  end

  describe 'GET #show' do
    subject { get :show, params: { id: recipe_id } }
  end
end

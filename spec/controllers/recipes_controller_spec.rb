require 'rails_helper'

describe RecipesController, type: :controller do
  
  describe 'POST #search' do
    let(:recipe) { create(:recipe) }

    context 'with params[:ingredients]' do
      it "populates an array of recipes containing given ingredients" do
        ingredients = "flour sugar"
        post :search, params: { search: { ingredients: ingredients } }
        expect(assigns(:matching_recipes)).to match_array([recipe])
      end

      it "renders the :index template" do
        ingredients = "flour, sugar"
        post :search, params: { search: { ingredients: ingredients } }
        expect(response).to render_template :index
      end
    end

    context 'without params[:ingredients]' do
      it "renders the :index template" do
        get :index
        expect(response).to render_template :index
      end
    end
  end

  describe 'GET #show' do
    let(:recipe) { create(:recipe) }

    it "assigns the requested recipe to @recipe" do
      get :show, params: { id: recipe }
      expect(assigns(:recipe)).to eq recipe
    end

    it "renders the :show template" do
      get :show, params: { id: recipe }
      expect(response).to render_template :show
    end
  end
end

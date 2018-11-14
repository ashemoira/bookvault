# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookshelvesController, type: :controller do
  let(:valid_session) { {} }
  let(:bookshelf) { create(:bookshelf) }

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #edit' do
    it 'returns http success' do
      get :edit, params: { id: bookshelf.to_param }, session: valid_session
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: { id: bookshelf.id }
      expect(response).to have_http_status(:success)
    end
  end
end

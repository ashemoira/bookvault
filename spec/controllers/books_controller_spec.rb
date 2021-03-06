# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  let(:valid_session) { {} }

  let(:book) { FactoryBot.create(:book) }

  describe 'GET #index' do
    it 'returns a success response' do
      book
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    let(:book) { create(:book) }

    it 'returns a success response' do
      get :show, params: { id: book.id }
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      get :edit, params: { id: book.to_param }
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Book' do
        expect do
          post :create, params: { book: valid_attributes }, session: valid_session
        end.to change(Book, :count).by(1)
      end

      it 'redirects to the created book' do
        post :create, params: { book: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Book.last)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { book: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'updates the requested book' do
        book
        put :update, params: { id: book.to_param, book: book.attributes }
        book.reload
      end

      it 'redirects to the book' do
        book
        put :update, params: { id: book.to_param, book: book.attributes }
        expect(response).to redirect_to books_path
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        book
        book.title = 'テスト' * 100
        put :update, params: { id: book.to_param, book: book.attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested book' do
      book = Book.create! valid_attributes
      expect do
        delete :destroy, params: { id: book.to_param }, session: valid_session
      end.to change(Book, :count).by(-1)
    end

    it 'redirects to the books list' do
      book = Book.create! valid_attributes
      delete :destroy, params: { id: book.to_param }, session: valid_session
      expect(response).to redirect_to(books_url)
    end
  end
end

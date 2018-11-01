# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Books', type: :request do
  describe 'GET /books' do
    it 'is 200 status code at new_book_path' do
      get '/books/new'
      expect(response).to have_http_status(200)
    end

    it 'is 200 status code at book_path' do
      post '/books', params: { book: FactoryBot.create(:book) }
      expect(response).to have_http_status(200)
    end
  end
end

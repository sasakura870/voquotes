class QuotesController < ApplicationController
  def index
    @result = Pixabay.get_pictures query: 'city'
    @quotes = Quote.limit 10
  end

  def show; end

  def new; end

  def create; end
end

class QuotesController < ApplicationController
  def index
    @quotes = Quote.limit 10
  end

  def show; end

  def new; end

  def create; end
end

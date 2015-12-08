class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    Quote.create(quote_params)
    redirect_to(quotes_path)
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    quote = Quote.find(params[:id])
    quote.update(quote_params)
    redirect_to(quotes_path)
  end

  def destroy
    quote = Quote.find(params[:id])
    quote.destroy
    redirect_to(quotes_path)
  end
  
  def upvote
    quote = Quote.find(params[:id])
    quote.rating += 1
    quote.save
    redirect_to(quotes_path)
  end

  def downvote
    quote = Quote.find(params[:id])
    quote.rating -= 1
    quote.save
    redirect_to(quotes_path)
  end
  
  private

  def quote_params
    #permits these elements in the params to be accessed
    params.require(:quote).permit(:quote, :source, :character, :actor, :year, :photo, :rating)
  end

end
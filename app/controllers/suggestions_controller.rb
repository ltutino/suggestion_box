class SuggestionsController < ApplicationController
  
  def new
    @suggestion = Suggestion.new
  end
  
  def create
    @suggestion = Suggestion.new(suggestion_params)
    if @suggestion.save
      flash[:notice] = "Todo was created successfully!"
      redirect_to new_suggestion_path
    else
      render 'new'
    end
  end
  
  private
  
  def suggestion_params
    params.require(:suggestion).permit(:name, :office, :suggestion)
  end
  
end
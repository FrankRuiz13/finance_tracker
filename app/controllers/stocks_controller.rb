class StocksController < ApplicationController


  def search
    if params[:stock].present?
      @stock = Stock.new_from_lookup(params[:stock])
      if @stock
        render 'users/my_portfolio'
      else
        flash[:warning] = "You have entered and incorrect symbol"
        redirect_to root_path
      end
    else
      flash[:warning] = "You have entered an empty search string"
      redirect_to root_path
    end

  end

end
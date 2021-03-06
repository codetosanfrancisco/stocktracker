class StocksController < ApplicationController
  def search
    if params[:stock].blank?
      flash.now[:danger] = "You have enter an invalid empty string."
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "You have enter an incorrect symbol." unless @stock
    end
    respond_to do |format|
          format.js { render partial:"users/results"}
    end
  end
end

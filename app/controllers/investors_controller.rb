class InvestorsController < ApplicationController
  def index
    @investors = Investor.page(params[:page]).per(10)
  end

  def show
    @investor = Investor.find(params[:id])
  end
end

class HomeController < ApplicationController
  def index
  end

  def exchange
    debugger
    value = Currency::exchange(
      params[:currency],
      params[:currency_location],
      params[:quantity].to_f
    )

    render json: {
      'value': value
    }
  end
end

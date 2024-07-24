class DummiesController < ApplicationController
  def index
    render json: { dummies: [1, 2, 3] }
  end
end

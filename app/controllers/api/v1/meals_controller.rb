# frozen_string_literal: true

module Api::V1
  class MealsController < ApplicationController
    def index
      @meals = Meal.all
      render json: @meals
    end
  end
end

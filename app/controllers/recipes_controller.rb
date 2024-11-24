class RecipesController < ApplicationController
  def index
    recipes = Recipe.all.page(params[:page]).per(10)
    render json: recipes
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: recipe, status: :created
    else
      render json: { error: recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :image, :cuisine, :cooking_time, :instructions, ingredients: [])
  end
end

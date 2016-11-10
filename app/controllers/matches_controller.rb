class MatchesController < ApplicationController

  before_action :find_match, only: [:edit, :update, :show, :destroy]
  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)

    if @match.save
      redirect_to matches_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @match.update(match_params)
      redirect_to match_path(@match)
    else
      render :edit
    end
  end

  def destroy
    
  end

  private

  def match_params
    params.require(:match).permit(:title)
  end

  def find_match
    @match = Match.find(params[:id])
  end
end

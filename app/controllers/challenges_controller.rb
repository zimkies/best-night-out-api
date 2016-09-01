class ChallengesController < ApplicationController
  def index
    render json: Challenge.all
  end

  def show
    render json: Challenge.find(params[:id])
  end

  # get /api/challenges/random?level=
  def random
    render json: Challenge.where(level: params[:level]).all.sample
  end
end

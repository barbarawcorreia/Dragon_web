# frozen_string_literal: true

class TamagoshiController < ApplicationController

  def start
  end

  def new
    @dragon = Tamagoshi.new
  end

  def create
    @dragon = Tamagoshi.new(dragon_params)
    if @dragon.save
      redirect_to exibicao_path(@dragon.id)
    end
  end

  def show
    @dragon = Tamagoshi.find(params[:id]) # ou @dragon.id
  end

  def index
    @dragon = Tamagoshi.all
  end

  def destroy
    @dragon = Tamagoshi.find(params[:id])
    @dragon.destroy
    redirect_to tamagoshis_path
  end

  def play
    @dragon = Tamagoshi.find(params[:id])
  end

  private
  def dragon_params
    params.require(:tamagoshi).permit(:name, :owner_name)
  end
end

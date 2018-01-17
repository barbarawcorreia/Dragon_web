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
    @dragon = Tamagoshi.find(params[:id]) # ou @dragon.id params[:id]
  end

  def index
    @dragons = Tamagoshi.all
  end

  def destroy
    @dragon = Tamagoshi.find(params[:id])

    if @dragon.present?
      @dragon.destroy
    end
    redirect_to exibe_todos_path
  end

  def play
    @dragon = Tamagoshi.find(params[:id])
  end

  private
  def dragon_params
    params.require(:tamagoshi).permit(:name, :owner_name)
  end
end

# frozen_string_literal: true

class PlayController < ActionController::Base
  before_filter :instance_manager

  def feed
    @manager.feed
    # if @manager.feed
    #   flash[:notice] = "Your Baby Dragon has been feeded."
    # else
    #   flash[:error] = "Your Baby Dragon hasn't been feeded."
    # end
    redirect_to play_path(params[:id])
  end

  def rock
    @manager.rock
    if @manager.rock
      redirect_to play_path(params[:id])
      flash[:notice] = "Your Baby Dragon has been rocked."
    else
      flash[:error] = "Your Baby Dragon hasn't been rocked."
    end
  end

  def put_to_bed
    @manager.put_to_bed
    if @manager.put_to_bed
      redirect_to play_path(params[:id])
      flash[:notice] = "Your Baby Dragon has been put to bed."
    else
      flash[:error] = "Your Baby Dragon hasn't been put to bed."
    end
  end

  def toss
    @manager.toss
    if @manager.toss
      redirect_to play_path(params[:id])
      flash[:notice] = "Your Baby Dragon has been tossed."
    else
      flash[:error] = "Your Baby Dragon hasn't been tossed."
    end
  end

  private

  def instance_manager
    dragon = Tamagoshi.find(params[:id])
    @manager = Dragon.new(dragon.name, dragon.owner_name)
  end

end

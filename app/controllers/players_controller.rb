class PlayersController < ApplicationController
  before_filter :set_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.all
    respond_with(@players)
  end

  def show
    respond_with(@player)
  end

  def new
    @player = Player.new
    respond_with(@player)
  end

  def edit
  end

  def create
    @player = Player.new(params[:player])
    @player.save
    respond_with(@player)
  end

  def update
    @player.update_attributes(params[:player])
    respond_with(@player)
  end

  def destroy
    @player.destroy
    respond_with(@player)
  end

  private
    def set_player
      @player = Player.find(params[:id])
    end
end

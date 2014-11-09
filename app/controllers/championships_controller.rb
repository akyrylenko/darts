class ChampionshipsController < ApplicationController
  before_filter :set_championship, only: [:show, :edit, :update, :destroy]

  def index
    @championships = Championship.all
    respond_with(@championships)
  end

  def show
    respond_with(@championship)
  end

  def new
    @championship = Championship.new
    respond_with(@championship)
  end

  def edit
  end

  def create
    @championship = Championship.new(params[:championship])
    @championship.save
    respond_with(@championship)
  end

  def update
    @championship.update_attributes(params[:championship])
    respond_with(@championship)
  end

  def destroy
    @championship.destroy
    respond_with(@championship)
  end

  private
    def set_championship
      @championship = Championship.find(params[:id])
    end
end

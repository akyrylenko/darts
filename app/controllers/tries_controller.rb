class TriesController < ApplicationController
  before_filter :set_try, only: [:show, :edit, :update, :destroy]

  def index
    @tries = Try.all
    respond_with(@tries)
  end

  def show
    respond_with(@try)
  end

  def new
    @try = Try.new
    respond_with(@try)
  end

  def edit
  end

  def create
    @try = Try.new(params[:try])
    @try.save
    respond_with(@try)
  end

  def update
    @try.update_attributes(params[:try])
    respond_with(@try)
  end

  def destroy
    @try.destroy
    respond_with(@try)
  end

  private
    def set_try
      @try = Try.find(params[:id])
    end
end

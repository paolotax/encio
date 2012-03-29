class RuoliController < ApplicationController

  def index
    @ruoli = Ruolo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ruoli }
    end
  end

  def show
    @ruolo = Ruolo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ruolo }
    end
  end

  def new
    @ruolo = Ruolo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ruolo }
    end
  end

  def edit
    @ruolo = Ruolo.find(params[:id])
  end

  def create
    @ruolo = Ruolo.new(params[:ruolo])

    respond_to do |format|
      if @ruolo.save
        format.html { redirect_to ruoli_url, notice: 'Ruolo creato.' }
        format.json { render json: @ruolo, status: :created, location: @ruolo }
      else
        format.html { render action: "new" }
        format.json { render json: @ruolo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @ruolo = Ruolo.find(params[:id])

    respond_to do |format|
      if @ruolo.update_attributes(params[:ruolo])
        format.html { redirect_to ruoli_url, notice: 'Ruolo modificato.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ruolo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ruolo = Ruolo.find(params[:id])
    @ruolo.destroy

    respond_to do |format|
      format.html { redirect_to ruoli_url }
      format.json { head :no_content }
    end
  end
end

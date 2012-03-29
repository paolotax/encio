class DipendentiController < ApplicationController

  def index
    @dipendenti = Dipendente.per_ruolo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dipendenti }
    end
  end

  def show
    @dipendente = Dipendente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dipendente }
    end
  end

  def new
    @dipendente = Dipendente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dipendente }
    end
  end

  def edit
    @dipendente = Dipendente.find(params[:id])
  end

  def create
    @dipendente = Dipendente.new(params[:dipendente])

    respond_to do |format|
      if @dipendente.save
        format.html { redirect_to dipendenti_url, notice: 'Dipendente creato.' }
        format.json { render json: @dipendente, status: :created, location: @dipendente }
      else
        format.html { render action: "new" }
        format.json { render json: @dipendente.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @dipendente = Dipendente.find(params[:id])

    respond_to do |format|
      if @dipendente.update_attributes(params[:dipendente])
        format.html { redirect_to dipendenti_url, notice: 'Dipendente modificato.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dipendente.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dipendente = Dipendente.find(params[:id])
    @dipendente.destroy

    respond_to do |format|
      format.html { redirect_to dipendenti_url }
      format.json { head :no_content }
    end
  end
end

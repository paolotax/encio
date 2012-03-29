class DipendentiController < ApplicationController
  # GET /dipendenti
  # GET /dipendenti.json
  def index
    @dipendenti = Dipendente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dipendenti }
    end
  end

  # GET /dipendenti/1
  # GET /dipendenti/1.json
  def show
    @dipendente = Dipendente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dipendente }
    end
  end

  # GET /dipendenti/new
  # GET /dipendenti/new.json
  def new
    @dipendente = Dipendente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dipendente }
    end
  end

  # GET /dipendenti/1/edit
  def edit
    @dipendente = Dipendente.find(params[:id])
  end

  # POST /dipendenti
  # POST /dipendenti.json
  def create
    @dipendente = Dipendente.new(params[:dipendente])

    respond_to do |format|
      if @dipendente.save
        format.html { redirect_to @dipendente, notice: 'Dipendente was successfully created.' }
        format.json { render json: @dipendente, status: :created, location: @dipendente }
      else
        format.html { render action: "new" }
        format.json { render json: @dipendente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dipendenti/1
  # PUT /dipendenti/1.json
  def update
    @dipendente = Dipendente.find(params[:id])

    respond_to do |format|
      if @dipendente.update_attributes(params[:dipendente])
        format.html { redirect_to @dipendente, notice: 'Dipendente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dipendente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dipendenti/1
  # DELETE /dipendenti/1.json
  def destroy
    @dipendente = Dipendente.find(params[:id])
    @dipendente.destroy

    respond_to do |format|
      format.html { redirect_to dipendenti_url }
      format.json { head :no_content }
    end
  end
end

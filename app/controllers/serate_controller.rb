class SerateController < ApplicationController
  # GET /serate
  # GET /serate.json
  def index
    @serate = Serata.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @serate }
    end
  end

  # GET /serate/1
  # GET /serate/1.json
  def show
    @serata = Serata.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @serata }
    end
  end

  # GET /serate/new
  # GET /serate/new.json
  def new
    @serata = Serata.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @serata }
    end
  end

  # GET /serate/1/edit
  def edit
    @serata = Serata.find(params[:id])
  end

  # POST /serate
  # POST /serate.json
  def create
    @serata = Serata.new(params[:serata])

    respond_to do |format|
      if @serata.save
        format.html { redirect_to @serata, notice: 'Serata was successfully created.' }
        format.json { render json: @serata, status: :created, location: @serata }
      else
        format.html { render action: "new" }
        format.json { render json: @serata.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /serate/1
  # PUT /serate/1.json
  def update
    @serata = Serata.find(params[:id])

    respond_to do |format|
      if @serata.update_attributes(params[:serata])
        format.html { redirect_to @serata, notice: 'Serata was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @serata.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serate/1
  # DELETE /serate/1.json
  def destroy
    @serata = Serata.find(params[:id])
    @serata.destroy

    respond_to do |format|
      format.html { redirect_to serate_url }
      format.json { head :no_content }
    end
  end
end

class SerateController < ApplicationController

  def index
    @serate = Serata.order("id desc").all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @serate }
    end
  end


  def show
    @serata = Serata.includes(:pagamenti => [:dipendente]).find(params[:id])
    @staff  = @serata.pagamenti
    
    respond_to do |format|
      format.html # show.html.erb
      format.xls
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

  def edit
    @serata = Serata.find(params[:id])
  end

  def create
    @serata = Serata.new(params[:serata])

    respond_to do |format|
      if @serata.save
        format.html { redirect_to @serata, notice: 'Serata creata.' }
        format.json { render json: @serata, status: :created, location: @serata }
      else
        format.html { render action: "new" }
        format.json { render json: @serata.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @serata = Serata.find(params[:id])

    respond_to do |format|
      if @serata.update_attributes(params[:serata])
        format.html { redirect_to @serata, notice: 'Serata modificata.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @serata.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @serata = Serata.find(params[:id])
    @serata.destroy

    respond_to do |format|
      format.html { redirect_to serate_url }
      format.json { head :no_content }
    end
  end
end

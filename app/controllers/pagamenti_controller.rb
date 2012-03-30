class PagamentiController < ApplicationController

  def index
    @pagamenti = Pagamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pagamenti }
    end
  end

  def show
    @pagamento = Pagamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pagamento }
    end
  end

  def new
    @serata     = Serata.find(params[:serata])
    @dipendente = Dipendente.find(params[:dipendente])
    @pagamento  = @serata.pagamenti.build(dipendente: @dipendente)
  end

  def edit
    # @dipendente = Dipendente.find(params[:dipendente])
    #     @pagamento  = @serata.pagamenti.build(dipendente: @dipendente)
    @pagamento = Pagamento.find(params[:id])
  end

  def create
    @pagamento = Pagamento.new(params[:pagamento])

    respond_to do |format|
      if @pagamento.save
        format.html { redirect_to @pagamento.serata, notice: "Il baggiano e' stato pagato." }
        format.json { render json: @pagamento, status: :created, location: @pagamento }
      else
        format.html { render action: "new" }
        format.json { render json: @pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @pagamento = Pagamento.find(params[:id])

    respond_to do |format|
      if @pagamento.update_attributes(params[:pagamento])
        format.html { redirect_to @pagamento.serata, notice: "Il baggiano e' stato pagato." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagamenti/1
  # DELETE /pagamenti/1.json
  def destroy
    @pagamento = Pagamento.find(params[:id])
    @pagamento.destroy

    respond_to do |format|
      format.html { redirect_to @pagamento.serata }
      format.json { head :no_content }
    end
  end
end

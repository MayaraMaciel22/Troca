class PontodetrocasController < ApplicationController
  before_action :set_pontodetroca, only: [:show, :edit, :update, :destroy]

  # GET /pontodetrocas
  # GET /pontodetrocas.json
  def index
    @pontodetrocas = Pontodetroca.all
  end

  # GET /pontodetrocas/1
  # GET /pontodetrocas/1.json
  def show
  end

  # GET /pontodetrocas/new
  def new
    @pontodetroca = Pontodetroca.new
  end

  # GET /pontodetrocas/1/edit
  def edit
  end

  # POST /pontodetrocas
  # POST /pontodetrocas.json
  def create
    @pontodetroca = Pontodetroca.new(pontodetroca_params)

    respond_to do |format|
      if @pontodetroca.save
        format.html { redirect_to @pontodetroca, notice: 'Pontodetroca was successfully created.' }
        format.json { render :show, status: :created, location: @pontodetroca }
      else
        format.html { render :new }
        format.json { render json: @pontodetroca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pontodetrocas/1
  # PATCH/PUT /pontodetrocas/1.json
  def update
    respond_to do |format|
      if @pontodetroca.update(pontodetroca_params)
        format.html { redirect_to @pontodetroca, notice: 'Pontodetroca was successfully updated.' }
        format.json { render :show, status: :ok, location: @pontodetroca }
      else
        format.html { render :edit }
        format.json { render json: @pontodetroca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pontodetrocas/1
  # DELETE /pontodetrocas/1.json
  def destroy
    @pontodetroca.destroy
    respond_to do |format|
      format.html { redirect_to pontodetrocas_url, notice: 'Pontodetroca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pontodetroca
      @pontodetroca = Pontodetroca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pontodetroca_params
      params.require(:pontodetroca).permit(:nome, :endereco, :email)
    end
end

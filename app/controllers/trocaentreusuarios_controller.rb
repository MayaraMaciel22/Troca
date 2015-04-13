class TrocaentreusuariosController < ApplicationController
  before_action :set_trocaentreusuario, only: [:show, :edit, :update, :destroy]

  # GET /trocaentreusuarios
  # GET /trocaentreusuarios.json
  def index
    @trocaentreusuarios = Trocaentreusuario.all
  end

  # GET /trocaentreusuarios/1
  # GET /trocaentreusuarios/1.json
  def show
  end

  # GET /trocaentreusuarios/new
  def new
    @trocaentreusuario = Trocaentreusuario.new
  end

  # GET /trocaentreusuarios/1/edit
  def edit
  end

  # POST /trocaentreusuarios
  # POST /trocaentreusuarios.json
  def create
    @trocaentreusuario = Trocaentreusuario.new(trocaentreusuario_params)

    respond_to do |format|
      if @trocaentreusuario.save
        format.html { redirect_to @trocaentreusuario, notice: 'Trocaentreusuario was successfully created.' }
        format.json { render :show, status: :created, location: @trocaentreusuario }
      else
        format.html { render :new }
        format.json { render json: @trocaentreusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trocaentreusuarios/1
  # PATCH/PUT /trocaentreusuarios/1.json
  def update
    respond_to do |format|
      if @trocaentreusuario.update(trocaentreusuario_params)
        format.html { redirect_to @trocaentreusuario, notice: 'Trocaentreusuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @trocaentreusuario }
      else
        format.html { render :edit }
        format.json { render json: @trocaentreusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trocaentreusuarios/1
  # DELETE /trocaentreusuarios/1.json
  def destroy
    @trocaentreusuario.destroy
    respond_to do |format|
      format.html { redirect_to trocaentreusuarios_url, notice: 'Trocaentreusuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trocaentreusuario
      @trocaentreusuario = Trocaentreusuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trocaentreusuario_params
      params.require(:trocaentreusuario).permit(:usuario_id, :pontodetroca_id, :pontoorigem, :pontodestino, :estado, :datatroca)
    end
end

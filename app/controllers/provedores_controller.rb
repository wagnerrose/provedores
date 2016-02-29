class ProvedoresController < ApplicationController
  before_action :set_provedor, only: [:show, :edit, :update, :destroy]

  # GET /provedores
  # GET /provedores.json
  def index
    @provedores = Provedor.all
  end

  # GET /provedores/1
  # GET /provedores/1.json
  def show
  end

  # GET /provedores/new
  def new
    @provedor = Provedor.new
  end

  # GET /provedores/1/edit
  def edit
  end

  # POST /provedores
  # POST /provedores.json
  def create
    @provedor = Provedor.new(provedor_params)

    respond_to do |format|
      if @provedor.save
        format.html { redirect_to @provedor, notice: 'Provedor was successfully created.' }
        format.json { render :show, status: :created, location: @provedor }
      else
        format.html { render :new }
        format.json { render json: @provedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provedores/1
  # PATCH/PUT /provedores/1.json
  def update
    respond_to do |format|
      if @provedor.update(provedor_params)
        format.html { redirect_to @provedor, notice: 'Provedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @provedor }
      else
        format.html { render :edit }
        format.json { render json: @provedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provedores/1
  # DELETE /provedores/1.json
  def destroy
    @provedor.destroy
    respond_to do |format|
      format.html { redirect_to provedores_url, notice: 'Provedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provedor
      @provedor = Provedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provedor_params
      params.require(:provedor).permit(:uf, :municipio, :microRegiao, :razaoSocial, :numAto, :termo, :endereco, :telefone)
    end
end

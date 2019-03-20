class PerfisController < ApplicationController
  before_action :set_perfi, only: [:show, :edit, :update, :destroy]

  # GET /perfis
  # GET /perfis.json
  def index
    @perfis = Perfil.all
  end

  # GET /perfis/1
  # GET /perfis/1.json
  def show
  end

  # GET /perfis/new
  def new
    @perfi = Perfil.new
  end

  # GET /perfis/1/edit
  def edit
  end

  # POST /perfis
  # POST /perfis.json
  def create
    @perfi = Perfil.new(perfi_params)

    respond_to do |format|
      if @perfi.save
        format.html { redirect_to @perfi, notice: 'Perfil was successfully created.' }
        format.json { render :show, status: :created, location: @perfi }
      else
        format.html { render :new }
        format.json { render json: @perfi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfis/1
  # PATCH/PUT /perfis/1.json
  def update
    respond_to do |format|
      if @perfi.update(perfi_params)
        format.html { redirect_to @perfi, notice: 'Perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @perfi }
      else
        format.html { render :edit }
        format.json { render json: @perfi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfis/1
  # DELETE /perfis/1.json
  def destroy
    @perfi.destroy
    respond_to do |format|
      format.html { redirect_to perfis_url, notice: 'Perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfi
      @perfi = Perfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perfi_params
      params.require(:perfi).permit(:nome, :descricao)
    end
end

class OnlineServicesController < ApplicationController
  before_action :set_online_service, only: [:show, :edit, :update, :destroy]

  # GET /online_services
  # GET /online_services.json
  def index
    @online_services = OnlineService.all
  end

  # GET /online_services/1
  # GET /online_services/1.json
  def show
  end

  # GET /online_services/new
  def new
    @online_service = OnlineService.new
  end

  # GET /online_services/1/edit
  def edit
  end

  # POST /online_services
  # POST /online_services.json
  def create
    @online_service = OnlineService.new(online_service_params)

    respond_to do |format|
      if @online_service.save
        format.html { redirect_to @online_service, notice: 'Online service was successfully created.' }
        format.json { render action: 'show', status: :created, location: @online_service }
      else
        format.html { render action: 'new' }
        format.json { render json: @online_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /online_services/1
  # PATCH/PUT /online_services/1.json
  def update
    respond_to do |format|
      if @online_service.update(online_service_params)
        format.html { redirect_to @online_service, notice: 'Online service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @online_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /online_services/1
  # DELETE /online_services/1.json
  def destroy
    @online_service.destroy
    respond_to do |format|
      format.html { redirect_to online_services_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_online_service
      @online_service = OnlineService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def online_service_params
      params.require(:online_service).permit(:name, :platform, :price, :quantity, :emailed, :instore)
    end
end

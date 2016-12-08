class Admin::ProjectPhasesController < AdminController
  before_action :set_project_phase, only: [:show, :edit, :update, :destroy, :sort]

  def sort  
    # @project_phase = ProjectPhase.find(params[:id])
    @project_phase.attributes = params.require(:project_phase).permit(:phase_order_position)
    @project_phase.save
    # this action will be called via ajax
    render nothing: true
  end
  # GET /project_phases
  # GET /project_phases.json
  def index
    @project_phases = ProjectPhase.all
  end

  # GET /project_phases/1
  # GET /project_phases/1.json
  def show
  end

  # GET /project_phases/new
  def new
    @project_phase = ProjectPhase.new
  end

  # GET /project_phases/1/edit
  def edit
  end

  # POST /project_phases
  # POST /project_phases.json
  def create
    @project_phase = ProjectPhase.new(project_phase_params)

    respond_to do |format|
      if @project_phase.save
        format.html { redirect_to admin_project_phase_path(@project_phase), notice: 'Project phase was successfully created.' }
        format.json { render :show, status: :created, location: @project_phase }
      else
        format.html { render :new }
        format.json { render json: @project_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_phases/1
  # PATCH/PUT /project_phases/1.json
  def update
    respond_to do |format|
      if @project_phase.update(project_phase_params)
        format.html { redirect_to admin_project_phase_path(@project_phase), notice: 'Project phase was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_phase }
      else
        format.html { render :edit }
        format.json { render json: @project_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_phases/1
  # DELETE /project_phases/1.json
  def destroy
    @project_phase.destroy
    respond_to do |format|
      format.html { redirect_to admin_project_phases_url, notice: 'Project phase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_phase
      @project_phase = ProjectPhase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_phase_params
      params.require(:project_phase).permit(:title, :description, :project_id)
    end
end

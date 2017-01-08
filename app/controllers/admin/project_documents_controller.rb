class Admin::ProjectDocumentsController < AdminController
  before_action :set_project_document, only: [:show, :edit, :update, :destroy]

  # GET /project_documents
  # GET /project_documents.json
  def index
    @project_documents = ProjectDocument.all
  end

  # GET /project_documents/1
  # GET /project_documents/1.json
  def show
  end

  # GET /project_documents/new
  def new
    @project_document = ProjectDocument.new
  end

  # GET /project_documents/1/edit
  def edit
  end

  # POST /project_documents
  # POST /project_documents.json
  def create
    @project_document = ProjectDocument.new(project_document_params)

    respond_to do |format|
      if @project_document.save
        format.html { redirect_to @project_document, notice: 'Project document was successfully created.' }
        format.json { render :show, status: :created, location: @project_document }
      else
        format.html { render :new }
        format.json { render json: @project_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_documents/1
  # PATCH/PUT /project_documents/1.json
  def update
    respond_to do |format|
      if @project_document.update(project_document_params)
        format.html { redirect_to @project_document, notice: 'Project document was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_document }
      else
        format.html { render :edit }
        format.json { render json: @project_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_documents/1
  # DELETE /project_documents/1.json
  def destroy
    @project_document.destroy
    respond_to do |format|
      format.html { redirect_to project_documents_url, notice: 'Project document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_document
      @project_document = ProjectDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_document_params
      params.require(:project_document).permit(:project_id, :title, :doc)
    end
end

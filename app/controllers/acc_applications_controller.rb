class AccApplicationsController < ApplicationController
  before_action :set_acc_application, only: [:show, :edit, :update, :destroy]

  # GET /acc_applications
  # GET /acc_applications.json
  def index
    @acc_applications = AccApplication.all
  end

  # GET /acc_applications/1
  # GET /acc_applications/1.json
  def show
  end

  # GET /acc_applications/new
  def new
    @acc_application = AccApplication.new
  end

  # GET /acc_applications/1/edit
  def edit
  end

  # POST /acc_applications
  # POST /acc_applications.json
  def create
    @acc_application = AccApplication.new(acc_application_params)

    respond_to do |format|
      if @acc_application.save
        format.html { redirect_to @acc_application, notice: 'Acc application was successfully created.' }
        format.json { render action: 'show', status: :created, location: @acc_application }
      else
        format.html { render action: 'new' }
        format.json { render json: @acc_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acc_applications/1
  # PATCH/PUT /acc_applications/1.json
  def update
    respond_to do |format|
      if @acc_application.update(acc_application_params)
        format.html { redirect_to @acc_application, notice: 'Acc application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @acc_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acc_applications/1
  # DELETE /acc_applications/1.json
  def destroy
    @acc_application.destroy
    respond_to do |format|
      format.html { redirect_to acc_applications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acc_application
      @acc_application = AccApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acc_application_params
      params.require(:acc_application).permit(:appform_field_1, :appform_field_2, :appform_field_3, :appform_field_4, :appform_field_5, :appform_field_6,
                                              :appform_field_7, :appform_field_8, :appform_field_9, :appform_field_10)
    end
end

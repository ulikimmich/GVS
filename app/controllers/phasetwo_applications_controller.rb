class PhasetwoApplicationsController < ApplicationController
  before_action :set_phasetwo_application, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user

  # GET /phasetwo_application
  # GET /phasetwo_application.json
  def index
    if current_user.admin?
      #read all users
      @users = User.all

      #save all users applications in array
      phasetwo_applications = @users.map do |usr|
        usr.phasetwo_application
      end

      #remove nil objects from array
      a = phasetwo_applications.compact
      @phasetwo_applications = a.sort {|x,y|  y.updated_at <=> x.updated_at }
    else
      redirect_to root_path
    end
  end

  # GET /phasetwo_application/1
  # GET /phasetwo_application/1.json
  def show
    respond_to do |format|
      format.html { render "layouts/_phasetwo_application" }
      format.pdf do
        pdf = PhasetwoApplicationPdf.new(@phasetwo_application)
        send_data pdf.render, filename: "#{@phasetwo_application.user.acc_application.appform_field_1}_Phase_2.pdf",
                  type: "application/pdf"
      end
    end
  end

  # GET /phasetwo_application/new
  def new
    #only show application form if user hasn't submitted one already
    if current_user.phasetwo_application.nil?
      @phasetwo_application = PhasetwoApplication.new
    else
      redirect_to current_user
    end

  end

  # GET /phasetwo_application/1/edit
  def edit
  end

  # POST /phasetwo_application
  # POST /phasetwo_application.json
  def create
    # returns only one Acc_Application object vs. has_many which returns an array.
    # see http://guides.rubyonrails.org/association_basics.html#methods-added-by-has-one
    @phasetwo_application = current_user.build_phasetwo_application(acc_phasetwo_params)

    respond_to do |format|
      if @phasetwo_application.save
        format.html { redirect_to @phasetwo_application }
        flash[:success] = 'Application was successfully created.'
        format.json { render action: 'show', status: :created, location: @phasetwo_application }
      else
        format.html { render action: 'new' }
        format.json { render json: @phasetwo_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phasetwo_application/1
  # PATCH/PUT /phasetwo_application/1.json
  def update
    respond_to do |format|
      # checks which button got clicked and sets the boolean draft field to false when application is submitted
      if params[:commit] == "Save as Draft"
        if @phasetwo_application.update(acc_phasetwo_params)
          format.html { redirect_to @phasetwo_application }
          flash[:success] = 'Application was successfully saved.'
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @phasetwo_application.errors, status: :unprocessable_entity }
        end
      else
        if @phasetwo_application.update(acc_phasetwo_params)
          @phasetwo_application.update_attribute(:draft, false)
          format.html { redirect_to @phasetwo_application }
          flash[:success] = 'Application was successfully submitted.'
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @phasetwo_application.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /phasetwo_application/1
  # DELETE /phasetwo_application/1.json
  def destroy
    @phasetwo_application.destroy
    respond_to do |format|
      format.html { redirect_to acc_applications_url }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phasetwo_application
      @phasetwo_application = PhasetwoApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acc_phasetwo_params
      params.require(:phasetwo_application).permit(:status, :appform_field_20, :appform_field_21, :appform_field_22, :appform_field_23, :appform_field_24, :appform_field_25,
                                              :appform_field_26, :appform_field_27, :appform_field_28, :appform_field_29, :appform_field_30, :appform_field_31,
                                              :appform_field_32, :appform_field_33, :appform_field_34, :appform_field_35, :appform_field_36, :appform_field_37, :appform_field_38)
    end
end

class AccApplicationsController < ApplicationController
  before_action :set_acc_application, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user

  # GET /acc_applications
  # GET /acc_applications.json
  def index
    if current_user.admin?
      #read all users
      @users = User.all

      #save all users applications in array
      applications = @users.map do |usr|
        usr.acc_application
      end

      #remove nil objects from aray
      a = applications.compact
      @acc_applications = a.sort {|x,y|  y.created_at <=> x.created_at }
    else
      redirect_to root_path
    end
  end

  # GET /acc_applications/1
  # GET /acc_applications/1.json
  def show
    respond_to do |format|
      format.html { render "layouts/_acc_application" }
      format.pdf do
        pdf = ApplicationPdf.new(@acc_application)
        send_data pdf.render, filename: "#{@acc_application.appform_field_1}.pdf",
                              type: "application/pdf"
      end
    end
  end

  # GET /acc_applications/new
  def new
    #only show application form if user hasn't submitted one already
    if current_user.acc_application.nil?
      @acc_application = AccApplication.new
    else
      redirect_to current_user
    end

  end

  # GET /acc_applications/1/edit
  def edit
  end

  # POST /acc_applications
  # POST /acc_applications.json
  def create
    # returns only one Acc_Application object vs. has_many which returns an array.
    # see http://guides.rubyonrails.org/association_basics.html#methods-added-by-has-one
    @acc_application = current_user.build_acc_application(acc_application_params)

    respond_to do |format|
      if @acc_application.save
        format.html { redirect_to @acc_application }
        flash[:success] = 'Application was successfully created.'
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
        format.html { redirect_to @acc_application }
        flash[:success] = 'Application was successfully updated.'
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
      params.require(:acc_application).permit(:status, :appform_field_1, :appform_field_2, :appform_field_3, :appform_field_4, :appform_field_5, :appform_field_6,
                                              :appform_field_7, :appform_field_8, :appform_field_9, :appform_field_10, :appform_field_11, :appform_field_12,
                                              :appform_field_13, :appform_field_14, :appform_field_15, :appform_field_16, :appform_field_17, :appform_field_18)
    end
end

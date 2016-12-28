class EarlySignupsController < ApplicationController
  before_action :set_early_signup, only: [:show, :edit, :update, :destroy]

  # GET /early_signups
  # GET /early_signups.json
  def index
    @early_signups = EarlySignup.all
  end

  # GET /early_signups/1
  # GET /early_signups/1.json
  def show
  end

  # GET /early_signups/new
  def new
    @early_signup = EarlySignup.new
  end

  # GET /early_signups/1/edit
  def edit
  end

  # POST /early_signups
  # POST /early_signups.json
  def create
    @early_signup = EarlySignup.new(early_signup_params)
    
    if @early_signup.save
      flash[:success] = "You are signed up to get updates! Check out our Design Wizard."
    else
      flash[:danger] = @early_signup.errors.full_messages.join(", ").html_safe
    end
    redirect_to root_path
  end
    """
    respond_to do |format|
      if @early_signup.save
        format.html { redirect_to @early_signup, notice: 'Early signup was successfully created.' }
        format.json { render :show, status: :created, location: @early_signup }
      else
        format.html { render :new }
        format.json { render json: @early_signup.errors, status: :unprocessable_entity }
      end
    end
    """
  
  # PATCH/PUT /early_signups/1
  # PATCH/PUT /early_signups/1.json
  def update
    respond_to do |format|
      if @early_signup.update(early_signup_params)
        format.html { redirect_to @early_signup, notice: 'Early signup was successfully updated.' }
        format.json { render :show, status: :ok, location: @early_signup }
      else
        format.html { render :edit }
        format.json { render json: @early_signup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /early_signups/1
  # DELETE /early_signups/1.json
  def destroy
    @early_signup.destroy
    respond_to do |format|
      format.html { redirect_to early_signups_url, notice: 'Early signup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_early_signup
      @early_signup = EarlySignup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def early_signup_params
      params.require(:early_signup).permit(:email, :signed_up)
    end
end

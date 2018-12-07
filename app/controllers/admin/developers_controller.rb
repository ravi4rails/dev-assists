class Admin::DevelopersController < AdminController
  before_action :set_developer, only: [:show, :edit, :update, :destroy]

  def index
    @developers = Developer.all
  end

  def show
  end

  def new
    @developer = Developer.new
  end

  def edit
  end

  def create
    @developer = Developer.new(developer_params)
    respond_to do |format|
      if @developer.save
        format.html { redirect_to admin_developer_path(@developer), notice: 'Developer was successfully created.' }
        format.json { render :show, status: :created, location: @developer }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @developer.update(developer_params)
        format.html { redirect_to admin_developer_path(@developer), notice: 'Developer was successfully updated.' }
        format.json { render :show, status: :ok, location: @developer }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @developer.destroy
    respond_to do |format|
      format.html { redirect_to admin_developers_url, notice: 'Developer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_developer
      @developer = Developer.find(params[:id])
    end

    def developer_params
      params.require(:developer).permit(:first_name, :last_name, :contact_number, :email, :profile_photo, :date_of_birth, :permanent_address, :developer_type, :about, :city, :state, :country, :zipcode, :latitude, :longitude)
    end
end
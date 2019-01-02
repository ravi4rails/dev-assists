class Developer::SiteController < DeveloperController

  before_action :set_current_developer

  def developer_profile
  end

  def update_profile
    if @developer.update(developer_params)
      redirect_to developer_profile_edit_path, flash: { success: 'Profile has been updated successfully' }
    end
  end

  private 

    def set_current_developer
      @developer = current_developer
    end

    def developer_params
      params.require(:developer).permit(:first_name, :last_name, :contact_number, :profile_photo, :email, :password, :password_confirmation, :permanent_address, :city, :state, :country, :zipcode, :about, :latitude, :longitude)
    end

end

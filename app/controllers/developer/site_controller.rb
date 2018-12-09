class Developer::SiteController < DeveloperController

  before_action :set_current_developer

  def developer_profile
  end

  private 

    def set_current_developer
      @developer = current_developer
    end

end

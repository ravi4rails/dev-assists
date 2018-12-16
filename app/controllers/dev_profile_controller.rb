class DevProfileController < ApplicationController

  def profile
    @developer = Developer.find(params[:id])
    puts @developer.skills.pluck(:name)
  end

end

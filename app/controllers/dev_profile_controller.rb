class DevProfileController < ApplicationController

  def profile
    @developer = Developer.find(params[:id])
  end

end

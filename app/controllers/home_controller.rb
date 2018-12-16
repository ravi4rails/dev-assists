class HomeController < ApplicationController
  
  def index
  end

  def autocomplete
    @skills = Skill.all.map {|s| s.name}.flatten.compact.uniq
    respond_to do |format| 
      format.json { render json: @skills.map {|value| value.capitalize} }
    end
  end

  def search 
    if params[:search][:skill].present?
      @skills = Skill.where("name LIKE '%#{params[:search][:skill]}%'")
      @developers = @skills.map {|skill| skill.developers }.flatten.uniq
    elsif params[:search][:latitude].present? && params[:search][:longitude].present?
      lat = params[:search][:latitude]
      long = params[:search][:longitude]
      @developers = Developer.near([lat, long], 50, units: :km)
    end
  end

end

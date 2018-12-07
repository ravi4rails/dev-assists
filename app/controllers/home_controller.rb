class HomeController < ApplicationController
  def index
  end

  def autocomplete
    @skills = Skill.all.map {|s| s.name}.flatten.compact.uniq
    respond_to do |format| 
      format.json { render json: @skills.map {|value| value.capitalize} }
    end
  end

end

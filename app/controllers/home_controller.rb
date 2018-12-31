class HomeController < ApplicationController
  def index
    @search = Skill.search(params[:q])
    @skills = @search.result.uniq

    # skill = params[:q]
    # location = params[:p]
    # @skill_search = Skill.search(name_cont: skill)
    # @developer_search = Developer.search(permanent_address_or_city_or_state_or_country_cont: location)
    # @search = Skill.search(params[:q])
    # @skills = @search.result(distinct: true)
    # @developers = @developer_search.result(distinct: true)
  end

  def autocomplete
    @skills = Skill.all.map {|s| s.name}.flatten.compact.uniq
    respond_to do |format| 
      format.json { render json: @skills.map {|value| value.capitalize} }
    end
  end

end

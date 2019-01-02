module ApplicationHelper

  def skill_list
    Skill.all.map {|skill| [skill.name, skill.id]}
  end
  
end

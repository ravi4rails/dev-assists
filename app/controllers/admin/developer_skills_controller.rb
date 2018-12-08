class Admin::DeveloperSkillsController < AdminController

  def destroy
    @developer_skill = DeveloperSkill.find(params[:id])
    @developer = Developer.find(params[:developer_id])
    @developer_skill.destroy
    redirect_to admin_developer_path(@developer), flash: { success: "Skill has been removed successfully from your profile." }
  end

end

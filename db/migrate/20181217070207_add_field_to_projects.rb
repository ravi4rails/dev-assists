class AddFieldToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :link_to_git_Repo, :string
  end
end

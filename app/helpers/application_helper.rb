module ApplicationHelper
  def developer_list
    Developer.all.map {|developer| [developer.first_name, developer.id] }
  end
end

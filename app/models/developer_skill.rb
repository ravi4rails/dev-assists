class DeveloperSkill < ApplicationRecord

  validates :skill_id, uniqueness: { scope: [:skill_id, :developer_id] }

  belongs_to :skill, optional: true
  belongs_to :developer, optional: true
  
end

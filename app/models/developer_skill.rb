class DeveloperSkill < ApplicationRecord
  belongs_to :skill, optional: true
  belongs_to :developer, optional: true
  
end

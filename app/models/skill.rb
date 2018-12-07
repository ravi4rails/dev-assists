class Skill < ApplicationRecord

  validates :name, presence: true, uniqueness: true

  has_many :developer_skills
  has_many :developers, through: :developer_skills
  
end

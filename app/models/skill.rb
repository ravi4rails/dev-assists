class Skill < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  
  has_many :questions
  has_many :developer_skills
  has_many :developers, through: :developer_skills
  
  paginates_per 10
end

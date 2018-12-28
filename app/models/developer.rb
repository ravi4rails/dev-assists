class Developer < ApplicationRecord
  has_many :developer_skills
  has_many :skills, through: :developer_skills
  mount_uploader :profile_photo, ImageUploader
end

class Developer < ApplicationRecord

  validates :first_name, :last_name, :contact_number, presence: true

  has_many :developer_skills
  has_many :skills, through: :developer_skills
  mount_uploader :profile_photo, ImageUploader

  def name
    "#{self.first_name} #{self.last_name}"
  end

end

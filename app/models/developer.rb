class Developer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :contact_number, presence: true
  
  has_many :projects
  has_many :developer_skills
  has_many :skills, through: :developer_skills
  mount_uploader :profile_photo, ImageUploader

  paginates_per 10
  geocoded_by :permanent_address
  after_validation :geocode

  def name
    "#{self.first_name} #{self.last_name}"
  end

end

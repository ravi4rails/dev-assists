class Project < ApplicationRecord
  belongs_to :developer, optional: true
end

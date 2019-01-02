class Question < ApplicationRecord
  belongs_to :skill, optional: true
end

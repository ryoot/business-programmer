class Programmer < ApplicationRecord
  belongs_to :user
  attachment :image
end

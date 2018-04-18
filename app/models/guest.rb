class Guest < ApplicationRecord
  belongs_to :user
  belongs_to :link_up
end

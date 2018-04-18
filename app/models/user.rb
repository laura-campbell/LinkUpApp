class User < ApplicationRecord
  has_many :hosts
  has_many :host_link_ups, through: :hosts, source: :link_up
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :guests
  has_many :guest_link_ups, through: :guests, source: :link_up

end

class Site < ApplicationRecord
  acts_as_votable
  belongs_to :theme
  belongs_to :menu
  belongs_to :temp
  belongs_to :user
end

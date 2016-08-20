class Site < ApplicationRecord
  belongs_to :theme
  belongs_to :menu
  belongs_to :temp
end

class Penguin < ActiveRecord::Base
  validates :name, presence: true
end

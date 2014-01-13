class Alert < ActiveRecord::Base
  validates :name, presence: true
end

class Sensor < ActiveRecord::Base
  has_many :alerts, -> {order('published_at DESC')}
  has_one :home
end

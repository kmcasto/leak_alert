class User < ActiveRecord::Base
  belongs_to :agent
  has_one :home
end

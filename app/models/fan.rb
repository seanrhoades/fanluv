class Fan < ActiveRecord::Base
  has_secure_password
  has_many :artists, :through => :luvs
end

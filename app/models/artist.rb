class Artist < ActiveRecord::Base
  has_secure_password
  has_many :fans, :through => :luvs
end

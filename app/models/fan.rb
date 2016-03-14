class Fan < ActiveRecord::Base
  has_many :luvs
  has_many :artists, through: :luvs


  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 100 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # Returns the hash digest of the given string.
  def Fan.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def create_luv(artist, fan)
    Luv.create(artist_id: artist.id, fan_id: fan)
  end

  def destroy_luv(artist, fan)
    Luv.destroy(artist_id: artist.id, fan_id: fan)
  end

  def luvs?(artist)
    Luv.exists?(fan:self, artist:artist)
  end


end

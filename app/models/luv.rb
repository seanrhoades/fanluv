class Luv < ActiveRecord::Base
  belongs_to :artist,
  dependent:   :destroy

  belongs_to :fan,
  dependent:   :destroy

end

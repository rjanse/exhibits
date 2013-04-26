class Artwork < ActiveRecord::Base
  has_many :exhibits
  has_many :exhibitions, :through => :exhibitions
end

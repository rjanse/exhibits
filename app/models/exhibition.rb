class Exhibition < ActiveRecord::Base
  has_many :exhibits
  has_many :artworks, :through => :exhibits

  accepts_nested_attributes_for :artworks
  accepts_nested_attributes_for :exhibits

  scope :future,  -> { where("start_date > ?", Date.today) }
  scope :past,    -> { where("end_date < ?", Date.today) }
  scope :current, -> { where("start_date <= ? AND end_date >= ?", Date.today, Date.today)}
end

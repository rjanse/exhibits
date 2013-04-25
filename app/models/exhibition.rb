class Exhibition < ActiveRecord::Base
  scope :future,  -> { where("start_date > ?", Date.today) }
  scope :past,    -> { where("end_date < ?", Date.today) }
  scope :current, -> { where("start_date <= ? AND end_date >= ?", Date.today, Date.today)}
end

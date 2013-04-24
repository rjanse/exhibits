class Exhibition < ActiveRecord::Base
  scope :future, -> { where("start_date > ?", Date.today) }
end

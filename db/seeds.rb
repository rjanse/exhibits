artworks  = ['Aquis submersus', 'Chapeau de Paille', 'Configuration', 'Cut with the Kitchen Knife', 'Dadaville', 'Feathers', 'Forest', 'Legend']

artworks.each do |title|
  Artwork.create(title: title)
end

# Past Exhibitions
5.times do |index|
  gallery = "Gallery ##{index + 1}"
  start_month = (index + 2).months
  end_month = (index + 1).months
  Exhibition.create(gallery: gallery, start_date: start_month.ago.beginning_of_month, end_date: end_month.ago.end_of_month)
  Exhibition.create(gallery: gallery, start_date: start_month.from_now.beginning_of_month, end_date: end_month.from_now.end_of_month)
end

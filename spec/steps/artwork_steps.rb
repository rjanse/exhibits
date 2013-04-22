module ArtworkSteps
  step "I have :amount artwork(s)" do |amount|
    Artwork.count.should eq amount.to_i
  end

  step "I vist the new artwork path" do
    visit new_artwork_path
  end
  
  step "I fill in the form" do
    fill_in('Title', :with => 'Mask')
  end
  
  step "I submit the form" do
    click_button('Create Artwork')
  end
end
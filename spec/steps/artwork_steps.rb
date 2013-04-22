module ArtworkSteps
  
  def artwork
    @artwork ||= Artwork.create(title: "Flower")
  end
  
  step "I have :amount artwork(s)" do |amount|
    Artwork.count.should eq amount.to_i
  end

  step "I visit the new artwork path" do
    visit new_artwork_path
  end

  step "I visit the edit artwork path" do
    visit edit_artwork_path(artwork)
  end
  
  step "I fill in the form with :title" do |title|
    fill_in('Title', with: title)
  end
  
  step "I submit the new form" do
    click_button('Create Artwork')
  end

  step "I submit the edit form" do
    click_button('Update Artwork')
  end

  step "I created an artwork with the title Flower" do
    artwork
  end

  step "I should have a updated artwork with the title Power" do
    Artwork.exists?(title: "Power").should be_true
  end

end
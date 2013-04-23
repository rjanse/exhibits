module ArtworkSteps
  
  def create_artwork
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
  
  step "I fill in the artwork form with title :title" do |title|
    fill_in('Title', with: title)
  end
  
  step "I submit the new artwork form" do
    click_button('Create Artwork')
  end

  step "I submit the edit artwork form" do
    click_button('Update Artwork')
  end

  step "I created an artwork with the title Flower" do
    create_artwork
  end

  step "I should have an updated artwork with the title Power" do
    Artwork.exists?(title: "Power").should be_true
  end

end
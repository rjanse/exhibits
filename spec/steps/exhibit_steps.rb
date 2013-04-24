module ExhibitSteps
  step "I have :amount exhibit(s)" do |amount|
    Exhibit.count.should eq amount.to_i
  end

  step "I visit the new exhibit path" do
    visit new_exhibit_path
  end

  step "I fill in the exhibit form" do
    select @artwork.title, from: "exhibit_artwork_id"
    select @exhibition.gallery, from: "exhibit_exhibition_id"
    fill_in "Price", with: 100
  end

  step "I submit the new exhibit form" do
    click_button 'Create Exhibit'
  end
end
module ExhibitionSteps

  def create_exhibition
    @exhibition ||= create(:future_exhibition)
  end

  step "I have :amount exhibition(s)" do |amount|
    Exhibition.count.should eq amount.to_i
  end

  step "I visit the new exhibition path" do
    visit new_exhibition_path
  end

  step "I visit the exhibitions path" do
    visit exhibitions_path
  end

  step "I visit the edit exhibition path" do
    visit edit_exhibition_path(@exhibition)
  end 

  step "I fill in the exhibition form with gallery :gallery" do |gallery|
    fill_in('Gallery', with: gallery)
    select('2013',    from: 'exhibition_start_date_1i')
    select('January', from: 'exhibition_start_date_2i')
    select('1',       from: 'exhibition_start_date_3i')

    select('2013',      from: 'exhibition_end_date_1i')
    select('December',  from: 'exhibition_end_date_2i')
    select('31',        from: 'exhibition_end_date_3i')
  end

  step "I submit the new exhibition form" do
    click_button('Create Exhibition')
  end

  step "I submit the edit exhibition form" do
    click_button('Update Exhibition')
  end  

  step "I created an exhibition" do
    create_exhibition
  end

  step "I should have an updated exhibition with gallery Bar" do
    Exhibition.exists?(gallery: "Bar").should be_true
  end

  step "I created exhibitions that are in the past and future" do
    create(:future_exhibition)
    create(:past_exhibition)
  end

  step "I click the :filter exhibition filter" do |filter|
    click_link filter.capitalize
  end

  step "I only should see future exhibitions" do
    page.should have_content("White")
    page.should_not have_content("Black")
  end

  step "I only should see past exhibitions" do
    page.should have_content("Black")
    page.should_not have_content("White")
  end
end
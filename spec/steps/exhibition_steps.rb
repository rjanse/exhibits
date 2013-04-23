module ExhibitionSteps

  def create_exhibition
    @exhibition ||= Exhibition.create(gallery: "Foo", start_date: 2.weeks.from_now, end_date: 4.weeks.from_now)
  end

  step "I have :amount exhibition(s)" do |amount|
    Exhibition.count.should eq amount.to_i
  end

  step "I visit the new exhibition path" do
    visit new_exhibition_path
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
end
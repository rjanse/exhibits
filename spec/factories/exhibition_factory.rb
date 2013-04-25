FactoryGirl.define do

  factory :future_exhibition, class: "Exhibition" do
    gallery "White"
    start_date 1.month.from_now
    end_date  2.months.from_now
  end

  factory :current_exhibition, class: "Exhibition" do
    gallery "Grey"
    start_date 1.week.ago
    end_date  2.months.from_now
  end

  factory :past_exhibition, class: "Exhibition" do
    gallery "Black"
    start_date 1.month.ago
    end_date  2.months.ago
  end
end

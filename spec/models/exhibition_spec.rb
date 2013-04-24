require 'spec_helper'

describe Exhibition do

  let(:past_exhibition)   { create(:past_exhibition) }
  let(:future_exhibition) { create(:future_exhibition) }

  describe ".future" do
    it "should include future exhibitions" do
      Exhibition.future.should include(future_exhibition)
    end

    it "should not include past exhibitions" do
      Exhibition.future.should_not include(past_exhibition)
    end
  end

  describe ".past" do
    it "should include past exhibitions" do
      Exhibition.past.should include(past_exhibition)
    end

    it "should not include future exhibitions" do
      Exhibition.past.should_not include(future_exhibition)
    end
  end
end

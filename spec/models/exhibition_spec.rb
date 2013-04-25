require 'spec_helper'

describe Exhibition do

  let(:past_exhibition)   { create(:past_exhibition) }
  let(:future_exhibition) { create(:future_exhibition) }
  let(:current_exhibition) { create(:current_exhibition) }

  times = %w(past current future)
  times.each do |time|
    describe ".#{time}" do
      it "should include #{time} exhibitions" do
        Exhibition.send(time).should include(eval("#{time}_exhibition"))
      end

      it "should not include #{times.reject{|t| t == time }.join(" or ")} exhibitions" do
        times.reject{|t| t == time }.each do |rejected_time|
          Exhibition.send(time).should_not include(eval("#{rejected_time}_exhibition"))
        end
      end
    end
  end
end

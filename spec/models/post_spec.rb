require "rails_helper"

RSpec.describe Post, type: :model do
  context "is valid" do
    it "when has a body and title" do
      expect(build :post).to be_valid
    end
  end

  context "is invalid" do
    it "when missing title" do
      expect(build :post, title: nil).to be_invalid
    end

    it "when missing body" do
      expect(build :post, body: nil).to be_invalid
    end
  end
end

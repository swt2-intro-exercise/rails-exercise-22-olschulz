require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "must have a title, venue and year set. Year should be a numeric value." do
    @paper = Paper.new(title: "", venue: "", year: "sasas")
    expect(@paper).to_not be_valid
  end
  it "should have an empty list of authors" do
    @paper = Paper.new(title: "", venue: "", year: "sasas")
    expect(@paper.authors).to be_empty
  end
end

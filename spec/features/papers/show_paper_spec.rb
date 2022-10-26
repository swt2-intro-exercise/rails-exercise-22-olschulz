require 'rails_helper'

describe "Show paper page", type: :feature do
  it "should show all author names of the paper" do
    @paper = FactoryBot.create(:paper)
    @author = FactoryBot.create(:author)
    visit paper_path(@paper)
    expect(page).to have_text("Alan Turing")
  end
end
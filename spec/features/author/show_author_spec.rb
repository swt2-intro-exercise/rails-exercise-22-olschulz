require 'rails_helper'

describe "Show author page", type: :feature do
  it "should show a page with an authors first name, last name and homepage" do
    visit author_path(@alan)
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end
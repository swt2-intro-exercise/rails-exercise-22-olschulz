require 'rails_helper'

describe "index author page", type: :feature do
  it "should exist and show all authors" do
    @alan = FactoryBot.create(:author)
    visit authors_path
    expect(page).to have_text 'Name'
    expect(page).to have_text 'Homepage'
    expect(page).to have_text 'Alan Turing'
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
    expect(page).to have_link 'New', href: new_author_path
  end
end
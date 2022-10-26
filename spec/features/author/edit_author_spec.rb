require 'rails_helper'

describe "edit author page", type: :feature do
  it "should exist and allow editing" do
    @alan = FactoryBot.create(:author)
    visit edit_author_path(@alan)
    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[last_name]', with: 'During'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_During'
    find('input[type="submit"]').click
    @alan.reload
    expect(@alan.last_name).to eq("During")
  end
end
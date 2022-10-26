require 'rails_helper'

describe "index paper page", type: :feature do
    it "should link to each paper's edit page" do
        @paper = FactoryBot.create(:paper)
        visit papers_path
        expect(page).to have_link 'Edit', href: edit_paper_path(@paper)
    end
    it "should be possible to delete a paper with a link" do
        @paper = FactoryBot.create(:paper)
        visit papers_path
        expect(page).to have_link 'Delete', href: paper_path(@paper)
    end
end
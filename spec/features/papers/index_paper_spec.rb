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
    it "should be possible to filter papers with a year url parameter" do
        @paper = FactoryBot.create(:paper)
        visit "/papers?year=1950"
        expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")
        visit "/papers?year=1949"
        expect(page).to_not have_text("COMPUTING MACHINERY AND INTELLIGENCE")
    end
end
require "rails_helper"

describe "Author Model", type: :model do
    author = Author.new(first_name: "Max", last_name: "Mustermann", homepage: "maxmustermann.de")
    it "should have a first name, last name and homepage" do
        expect(author.first_name).to be_a(String)
        expect(author.last_name).to be_a(String)
        expect(author.homepage).to be_a(String)
    end
    it "should have a name method that returns the full name" do
        expect(author.name).to eq("Max Mustermann")
    end
    it "must have a last name" do
        @author = Author.new(first_name: "Test", last_name: "", homepage: "woo")
        expect(@author).to_not be_valid
    end
end
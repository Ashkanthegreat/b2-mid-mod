require 'rails_helper'

RSpec.describe 'Studios index page' do
  before :each do
    @studio1 = Studio.create(name: "Disney",  location: "Hollywood")
    @studio2 = Studio.create(name: "WB",  location: "Hollywood")
    @movie1 = @studio1.movies.create(title: "Star Wars Episode IX", creation_year: "2018", genre: "sci-fi", studio_id: @studio1.id)
    @movie2 = @studio1.movies.create(title: "Star Wars Episode VIII", creation_year: "2016", genre: "sci-fi", studio_id: @studio1.id)
    @movie3 = @studio2.movies.create(title: "Dumb and Dumber", creation_year: "1996", genre: "comedy", studio_id: @studio2.id)
    @movie4 = @studio2.movies.create(title: "White Girls", creation_year: "2002", genre: "comedy", studio_id: @studio2.id)
  end

  it "Can see all studios, and under each studio, it can see each studios movies" do
    visit "/studios"
    save_and_open_page
    within("studio-#{@studio1.id}") do
      expect(page).to have_content("Disney")
      expect(page).to have_content("Star Wars Episode IX")
      expect(page).to have_content("Star Wars Episode VIII")
      expect(page).to_not have_content("Dumb and Dumber")
    end
  end
end




# Story 1
# As a visitor,
# When I visit the studio index page
# I see a list of all of the movie studios
# And underneath each studio, I see the names of all of its movies.

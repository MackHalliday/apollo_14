
require "rails_helper"

describe "astronauts index page" do


  it "should show all astronauts" do
    @astronaut_1 = Astronaut.create!(name: "Jane", age: 40, job: "Pilot")
    @astronaut_2 = Astronaut.create!(name: "Emily", age: 35, job: "Co-Pilot")
    @astronaut_3 = Astronaut.create!(name: "Sam", age: 38, job: "Rocket Specialist")

    visit "/astronauts"

    within "#astronaut-info-#{@astronaut_1.id}" do
      expect(page).to have_content(@astronaut_1.name)
      expect(page).to have_content(@astronaut_1.age)
      expect(page).to have_content(@astronaut_1.job)
    end

    within "#astronaut-info-#{@astronaut_2.id}" do
      expect(page).to have_content(@astronaut_2.name)
      expect(page).to have_content(@astronaut_2.age)
      expect(page).to have_content(@astronaut_2.job)
    end

    within "#astronaut-info-#{@astronaut_3.id}" do
      expect(page).to have_content(@astronaut_3.name)
      expect(page).to have_content(@astronaut_3.age)
      expect(page).to have_content(@astronaut_3.job)
    end
  end
end

require "spec_helper"

# Browse markdown documentation files rendered in the browser.
# Lists all docs in a sidebar and renders selected pages as HTML.
RSpec.describe "Browsing documentation", type: :feature do
  it "shows the index page with sidebar links" do
    visit "/docs"

    expect(page).to have_content("Welcome")
    expect(page).to have_link("Getting Started")
  end

  it "renders the README on the index page" do
    visit "/docs"

    expect(page).to have_content("This is the documentation homepage.")
  end

  it "shows a specific doc page" do
    visit "/docs/guides/getting-started"

    expect(page).to have_content("Getting Started")
    expect(page).to have_content("Follow these steps to get up and running.")
    expect(page).to have_content("Mount the engine in your routes.")
  end

  it "highlights the active page in the sidebar" do
    visit "/docs/guides/getting-started"

    active_link = find("a.active")
    expect(active_link.text).to eq("Getting Started")
  end

  it "navigates from index to a doc page" do
    visit "/docs"
    click_link "Getting Started"

    expect(page).to have_content("Follow these steps")
  end
end

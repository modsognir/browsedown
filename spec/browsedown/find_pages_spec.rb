require "spec_helper"

RSpec.describe Browsedown::FindPages do
  let(:root) { File.join(__dir__, "../dummy/docs") }

  it "finds all markdown files" do
    pages = described_class.call(root: root)
    paths = pages.map(&:relative_path)

    expect(paths).to include("README.md")
    expect(paths).to include("guides/getting-started.md")
  end

  it "returns pages sorted alphabetically" do
    pages = described_class.call(root: root)
    expect(pages.map(&:relative_path)).to eq(pages.map(&:relative_path).sort)
  end

  it "returns empty array for missing directory" do
    expect(described_class.call(root: "/nonexistent")).to eq([])
  end
end

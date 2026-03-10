require "spec_helper"

RSpec.describe Browsedown::Page do
  let(:root) { File.join(__dir__, "../dummy/docs") }

  describe "with a heading" do
    subject { described_class.new(root: root, relative_path: "README.md") }

    it "extracts title from first heading" do
      expect(subject.title).to eq("Welcome")
    end

    it "renders HTML" do
      expect(subject.html).to include("<h1>Welcome</h1>")
    end

    it "stores the relative path" do
      expect(subject.relative_path).to eq("README.md")
    end
  end

  describe "nested file" do
    subject { described_class.new(root: root, relative_path: "guides/getting-started.md") }

    it "extracts title" do
      expect(subject.title).to eq("Getting Started")
    end

    it "renders code blocks" do
      expect(subject.html).to include("<code")
    end
  end
end

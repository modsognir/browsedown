require "spec_helper"

RSpec.describe Browsedown::RenderMarkdown do
  it "renders markdown to HTML" do
    html = described_class.call("# Hello")
    expect(html).to include("<h1>Hello</h1>")
  end

  it "renders fenced code blocks" do
    html = described_class.call("```ruby\nputs 'hi'\n```")
    expect(html).to include("<code")
    expect(html).to include("puts &#39;hi&#39;")
  end

  it "renders tables" do
    md = "| A | B |\n|---|---|\n| 1 | 2 |"
    html = described_class.call(md)
    expect(html).to include("<table>")
    expect(html).to include("<td>1</td>")
  end

  it "autolinks URLs" do
    html = described_class.call("Visit https://example.com")
    expect(html).to include('<a href="https://example.com"')
  end
end

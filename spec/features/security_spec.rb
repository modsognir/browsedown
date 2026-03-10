require "spec_helper"

# Ensures nonexistent and traversal paths return 404.
RSpec.describe "Documentation security", type: :request do
  it "returns 404 for nonexistent pages" do
    get "/docs/nonexistent"
    expect(response).to have_http_status(:not_found)
  end

  it "returns 404 for path traversal attempts" do
    get "/docs/..%2F..%2Fetc%2Fpasswd"
    expect(response).to have_http_status(:not_found)
  end
end

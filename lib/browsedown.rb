require "browsedown/engine"
require "browsedown/page"
require "browsedown/find_pages"
require "browsedown/render_markdown"

module Browsedown
  def self.[](path)
    Engine[path]
  end
end

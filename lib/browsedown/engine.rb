require "redcarpet"

module Browsedown
  class Engine < ::Rails::Engine
    isolate_namespace Browsedown

    def self.[](path)
      @root_path = path
      self
    end

    def self.root_path
      @root_path || "docs"
    end
  end
end

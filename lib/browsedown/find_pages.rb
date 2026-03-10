module Browsedown
  class FindPages
    def self.call(root:)
      return [] unless File.directory?(root)

      Dir.glob("**/*.md", base: root).sort.map do |relative_path|
        Page.new(root: root, relative_path: relative_path)
      end
    end
  end
end

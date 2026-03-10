module Browsedown
  class Page
    attr_reader :relative_path, :title, :section

    def initialize(root:, relative_path:)
      @relative_path = relative_path
      @root = root
      @title = extract_title
      @section = extract_section
    end

    def html
      @html ||= RenderMarkdown.call(raw)
    end

    def raw
      @raw ||= File.read(full_path)
    end

    private

    def full_path
      File.join(@root, @relative_path)
    end

    def extract_section
      dir = File.dirname(relative_path)
      return nil if dir == "."

      humanize(dir)
    end

    def humanize(name)
      name.tr("-_", " ").capitalize
    end

    def extract_title
      first_line = File.foreach(full_path).first
      if first_line && (match = first_line.match(/\A\s*#\s+(.+)/))
        match[1].strip
      else
        humanize(File.basename(relative_path, ".md"))
      end
    end
  end
end

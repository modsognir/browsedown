module Browsedown
  class RenderMarkdown
    RENDERER = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML.new(hard_wrap: true, link_attributes: {target: "_blank"}),
      fenced_code_blocks: true,
      tables: true,
      autolink: true,
      strikethrough: true,
      no_intra_emphasis: true
    )

    def self.call(text)
      RENDERER.render(text)
    end
  end
end

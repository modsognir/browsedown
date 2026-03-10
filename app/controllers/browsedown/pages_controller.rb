module Browsedown
  class PagesController < ActionController::Base
    layout false

    before_action :load_pages

    def index
      @readme = @pages.find { |p| p.relative_path.downcase == "readme.md" }
    end

    def show
      path = params[:path]
      path = "#{path}.md" unless path.end_with?(".md")

      resolved = Pathname.new(File.join(docs_root, path)).cleanpath
      raise ActionController::RoutingError, "Not Found" unless resolved.to_s.start_with?(docs_root)

      @page = @pages.find { |p| p.relative_path == path }
      raise ActionController::RoutingError, "Not Found" unless @page
    rescue ActionController::RoutingError
      head :not_found
    end

    private

    def load_pages
      @pages = FindPages.call(root: docs_root)
    end

    def docs_root
      @docs_root ||= File.join(Rails.root, Browsedown::Engine.root_path)
    end
  end
end

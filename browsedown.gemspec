Gem::Specification.new do |spec|
  spec.name = "browsedown"
  spec.version = "0.1.0"
  spec.authors = ["Jared"]
  spec.summary = "Browse markdown files in your browser"
  spec.description = "A Rails engine that serves and renders markdown files from a directory tree."
  spec.license = "MIT"

  spec.required_ruby_version = ">= 3.0"

  spec.files = Dir["lib/**/*", "app/**/*", "config/**/*", "LICENSE", "README.md"]

  spec.add_dependency "rails", ">= 6.0"
  spec.add_dependency "redcarpet", "~> 3.5"
end

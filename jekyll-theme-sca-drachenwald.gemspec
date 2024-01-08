# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-sca-drachenwald"
  spec.version       = "0.1.3"
  spec.authors       = ["Anna Wilson"]
  spec.email         = ["rubygems@annawilson.eu"]

  spec.summary       = "Theme for branches of [SCA Kingdom of Drachenwald](https://drachenwald.sca.org)"
  spec.homepage      = "https://github.com/drachenwald/jekyll-theme-sca-drachenwald/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
end

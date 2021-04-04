require_relative 'lib/textgem/version'

Gem::Specification.new do |spec|
  spec.name          = "textgem"
  spec.version       = Textgem::VERSION
  spec.authors       = ["Da2dalus"]
  spec.email         = ["dinovitolalala@protonmail.com"]

  spec.summary       = %q{Ruby module that interacts with the textbelt api.}
  spec.description   = %q{Ruby module that interacts with the textbelt api.}
  spec.homepage      = "https://github.com/Da2alus/textgem"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Da2dalus/textgem"
  spec.metadata["changelog_uri"] = "https://github.com/Da2dalus/textgem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

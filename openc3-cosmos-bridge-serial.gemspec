# encoding: ascii-8bit

# Create the overall gemspec
spec = Gem::Specification.new do |s|
  s.name = 'openc3-cosmos-bridge-serial'
  s.summary = 'OpenC3 COSMOS Serial Bridge plugin'
  s.description = <<-EOF
    This bridge provides an interface to connect to a host's serial port and forward the data to COSMOS over TCP/IP.
  EOF
  s.licenses = ['AGPL-3.0-only', 'Nonstandard']
  s.authors = ['Ryan Melton']
  s.email = ['ryan@openc3.com']
  s.homepage = 'https://github.com/OpenC3/openc3'
  s.platform = Gem::Platform::RUBY

  if ENV['VERSION']
    s.version = ENV['VERSION'].dup
  else
    time = Time.now.strftime("%Y%m%d%H%M%S")
    s.version = '0.0.0' + ".#{time}"
  end
  s.files = Dir.glob("{targets,lib,tools,microservices,public}/**/*") + %w(Rakefile README.md LICENSE.txt bridge.txt)
  s.metadata = {
    "source_code_uri" => "https://github.com/OpenC3/openc3-cosmos-bridge-serial",
    "openc3_store_title" => "Serial Bridge",
    "openc3_store_keywords" => "bridge, serial",
    "openc3_store_image" => "public/store_img.jpg",
    "openc3_store_access_type" => "public",
    "openc3_cosmos_minimum_version" => "6.0.0"
  }
end

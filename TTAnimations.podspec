Pod::Spec.new do |s|
  s.name         = "TTAnimations"
  s.version      = "1.0.0"
  s.license      = "MIT"
  s.summary      = ""
  s.homepage     = "http://EXAMPLE/TTAnimations"
  s.author             = { "titeng.jiang" => "624790402@qq.com" }
  s.public_header_files = "Classes/**/*.h"
  s.requires_arc = true
  s.dependency "JSONKit", "~> 1.4"

  s.public_header_files = 'TTAnimations/*.h'
  s.source_files = 'TTAnimations/**/*.{h,m}
end

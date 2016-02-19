Pod::Spec.new do |s|
  s.name         = "TTAnimations"
  s.license      = "MIT"
  s.summary      = " An  exquisite collection of animation"
  s.homepage     = "https://github.com/jiangtiteng/TTAnimations"
  s.author             = { "titeng.jiang" => "624790402@qq.com" }
  s.requires_arc = true
  s.source   = { :git => "https://github.com/jiangtiteng/TTAnimations"}
  s.ios.deployment_target = '6.0'

  s.public_header_files = 'TTAnimations/*.h'
  s.source_files = 'TTAnimations/**/*.{h,m,c}'
end

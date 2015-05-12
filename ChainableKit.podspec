Pod::Spec.new do |s|
  s.version      = "0.1.0"
  s.summary      = "Chainable UIKit in Objective-C"
  s.description  = <<-DESC
                   Set up UIKit components with chainable syntax
                   DESC

  s.homepage     = "https://github.com/Draveness/ChainableKit"
  s.license      = "MIT"
  s.author             = { "Draveness" => "stark.draven@gmail.com" }
  s.source       = { :git => "https://github.com/Draveness/ChainableKit.git", :tag => s.version }
  s.source_files  = "Classes", "Classes/*.{h,m}"
end

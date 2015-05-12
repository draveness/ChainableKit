Pod::Spec.new do |s|
  s.name         = "ChainableKit"
  s.version      = "0.1.0"
  s.summary      = "Chainable UIKit in Objective-C"
  s.description  = <<-DESC
                   I write this to give you a more convience syntax to set up UIKit component.
                   It use a chainable syntax like `view.make.backgroundColor([UIColor whiteColor])`
                   to configure view property.
                   DESC

  s.homepage     = "https://github.com/Draveness/ChainableKit"
  s.license      = "MIT"
  s.author       = { "Draveness" => "stark.draven@gmail.com" }
  s.source       = { :git => "https://github.com/Draveness/ChainableKit.git", :tag => s.version }
  s.requires_arc = true
  s.source_files = "Classes", "Classes/*.{h,m}"
  s.platform     = :ios, "6.0"
  s.frameworks   = 'UIKit'
end

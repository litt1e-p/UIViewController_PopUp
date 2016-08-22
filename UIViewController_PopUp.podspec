Pod::Spec.new do |s|
  s.name             = "UIViewController_PopUp"
  s.version          = "0.0.2"
  s.summary          = "extension of UIViewController for poping up a another ViewController"
  s.description      = <<-DESC
                       an extension of UIViewController for poping up a another ViewController with animation effects in Objective-C
                       DESC
  s.homepage         = "https://github.com/litt1e-p/UIViewController_PopUp"
  s.license          = { :type => 'MIT' }
  s.author           = { "litt1e-p" => "litt1e.p4ul@gmail.com" }
  s.source           = { :git => "https://github.com/litt1e-p/UIViewController_PopUp.git", :tag => "#{s.version}" }
  s.platform = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'UIViewController_PopUp/*'
  s.frameworks = 'Foundation', 'UIKit'
end

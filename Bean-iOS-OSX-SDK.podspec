
Pod::Spec.new do |s|

  s.name         = "Bean-iOS-OSX-SDK"
  s.version      = "0.1"
  s.summary      = "Punch Through Design's SDK for speeding up development with the LightBlue Bean development platform"
  s.homepage     = "https://github.com/PunchThrough/Bean-iOS-OSX-SDK"
  s.license      = { :type => "MIT", :file => "LICENSE.txt" }
  
  s.author             = { "Punch Through Design" => "info@punchthrough.com" }

  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.9"

  s.source       = { :git => "https://github.com/PunchThrough/Bean-iOS-OSX-SDK.git", :tag => "0.1" }

  s.source_files  = "Classes", "/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.public_header_files = "source/Public/*.h"

  s.frameworks = "Cocoa", "IOBluetooth, CoreBluetooth"

  s.requires_arc = true

  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SRCROOT)/../bean-apple-sdk/source/Public" }

end

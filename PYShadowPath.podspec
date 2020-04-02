

Pod::Spec.new do |spec|


  spec.name         = "PYShadowPath"
  spec.version      = "1.0.3"
  spec.summary      = "PYShadowPath sets the shadow offset property of a view"
  spec.description  = "Set UIView's shadow color, shadow transparency, shadow width, radius, shadow direction"
  spec.homepage     = "https://github.com/knightpy/PYShadowPath"
  spec.license      = "MIT"
  spec.platform        = :ios, "8.0"
  spec.author             = { "knightpy" => "knightPy@163.com" }
  spec.source       = { :git => "https://github.com/knightpy/PYShadowPath.git", :tag => "#{spec.version}" }
  spec.source_files  = "PYShadowPath","*.{h,m}"
  # spec.public_header_files    = "PYShadowPath/UIView+PYShadowPath.h"
  # spec.framework       = "UIKit"
end

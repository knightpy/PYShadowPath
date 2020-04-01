

Pod::Spec.new do |spec|


  spec.name         = "PYShadowPath"
  spec.version      = "1.0.1"
  spec.summary      = "PYShadowPath sets the shadow offset property of a view"
  spec.description  = "Set UIView's shadow color, shadow transparency, shadow width, radius, shadow direction"
  spec.homepage     = "https://github.com/knightpy/PYShadowPath"
  spec.license      = "MIT"
  spec.author             = { "knightpy" => "knightPy@163.com" }
  spec.source       = { :git => "https://github.com/knightpy/PYShadowPath.git", :tag => "#{spec.version}" }
  spec.source_files  = "PYShadowPath/UIView+PYShadowPath.h"
end

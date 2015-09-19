#
#  pod spec lint CircleProgressView.podspec
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "CircleProgressView"
  s.version      = "1.0.0"
  s.summary      = "Circular progress made in in swift."

  s.description  = <<-DESC
                   Circular progress view made in swift. Is easly customizable withing the storyboard
                   DESC

  s.homepage     = "https://github.com/bphenriques/CircleProgressView"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.license      = { :type => "MIT", :file => "LICENCE.md" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "bphenriques" => "brunoaphenriques@gmail.com" }
  s.social_media_url   = "https://www.linkedin.com/in/bphenriques"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform = :ios
  s.ios.deployment_target = '8.0'


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/bphenriques/CircleProgressView.git", :tag => "0.9.10" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files = "CircularProgressView/**/*.{swift}"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.framework  = "UIKit"

# ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true

end

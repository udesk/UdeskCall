#
#  Be sure to run `pod spec lint UdeskCall.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "UdeskCall"
  s.version      = "0.0.1"
  s.summary      = "A short description of UdeskCall."
  s.ios.deployment_target = '8.0'
  s.homepage     = "https://github.com/udesk/UdeskCall"
  s.license      = "MIT"
  s.author       = { "xuchen" => "xuc@udesk.cn" }
  s.source       = { :git => "https://github.com/udesk/UdeskCall", :tag => "#{s.version}" }
  s.requires_arc = true

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  s.subspec 'SDK' do |ss|
    ss.vendored_frameworks = "Framework/UdeskCall.framework"
    ss.dependency   = 'AgoraRtcEngine_iOS'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = 'UDVideoUIKit/**/*.{h,m}'
    ss.resource     = 'UDVideoUIKit/Res/UdeskVideoBundle.bundle'
    ss.dependency   = 'UdeskCall/SDK'
  end

end

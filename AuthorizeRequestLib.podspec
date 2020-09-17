#
#  Be sure to run `pod spec lint AuthorizeRequestLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

   s.name         = 'AuthorizeRequestLib'
    s.version      = '1.0'
    s.summary      = 'iOS开发基本库'
    s.description  = <<-DESC 
    ***
    iOS开发基本库
    ***
                   DESC
    s.homepage     = 'https://github.com/LL12345911/AuthorizeRequestLib'
    s.license      = { :type => "MIT", :file => 'LICENSE' }
    s.authors      = { "Mars" => "sky12345911@163.com" }
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/LL12345911/AuthorizeRequestLib.git', :tag => s.version}
    s.social_media_url = 'https://github.com/LL12345911/AuthorizeRequestLib'
    s.source_files = 'AuthorizeRequestLib/**/*.{h,m}'
    s.requires_arc = true
    s.ios.frameworks = 'UIKit','Foundation'
    s.ios.deployment_target = '9.0'
end

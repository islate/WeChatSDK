Pod::Spec.new do |s|
  s.name         = 'WeChatSDK'
  s.version      = '1.7.9'
  s.summary      = 'WeChatSDK Pod v1.7.9 for Cocoapods convenience'
  s.description  = <<-DESC
                   This pod is used who want to use WeChatSDK v1.7.9 with podfile.
                   DESC
  s.author       = 'https://open.weixin.qq.com'
  s.homepage     = 'https://open.weixin.qq.com'
  s.license      = {
      :type => 'LGPL',
      :file => "LICENSE"
  }
  s.platform     = :ios, '8.0'
  s.requires_arc = false

  s.source       = { :git => 'http://github.com/islate/WeChatSDK.git', :tag => "#{s.version}" }

  s.source_files   = "WeChatSDK/*.h"
  s.preserve_paths = "WeChatSDK/libWeChatSDK.a", "WeChatSDK/README.txt"
  
  s.vendored_libraries = 'WeChatSDK/libWeChatSDK.a'
  s.public_header_files = "WeChatSDK/*.h"
  
  the_frameworks =  [
                      '"SystemConfiguration"',
                      '"CoreTelephony"'
                    ]
  the_ldflags    = '$(inherited) -lz -lsqlite3 -lc++ -framework ' + the_frameworks.join(' -framework ') + ''

  s.xcconfig = { 'OTHER_LDFLAGS' => the_ldflags }
end

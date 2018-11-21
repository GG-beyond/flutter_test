#
#  Be sure to run `pod spec lint Flutter_test.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "Flutter_test"
  s.version      = "0.0.2"
  s.summary      = "A flutter test"

  
  s.description  = <<-DESC
			凑个字数把，凑个字数把，凑个字数把，凑个字数把，凑个字数把，凑个字数把，凑个字数把。
                   DESC

  s.homepage     = "https://github.com/GG-beyond/flutter_test.git"


  s.license      = "MIT"

  s.author             = { "xiezhenfeng" => "xiezhenfeng@58ganji.com" }
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/GG-beyond/flutter_test.git", :tag => "1.0.4" }


  s.source_files  = "Flutter/*"

#你的SDK路径
s.vendored_frameworks = 'Flutter/*.framework'



end

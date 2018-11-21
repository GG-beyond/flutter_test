#
#  Be sure to run `pod spec lint Flutter_test.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "Flutter_test"
  s.version      = "0.0.7"
  s.summary      = "A flutter test"

  
  s.description  = <<-DESC
			凑个字数把，凑个字数把，凑个字数把，凑个字数把，凑个字数把，凑个字数把，凑个字数把。
                   DESC

  s.homepage     = "https://github.com/GG-beyond/flutter_test.git"


  s.license      = "MIT"

  s.author             = { "xiezhenfeng" => "xiezhenfeng@58ganji.com" }
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/GG-beyond/flutter_test.git", :tag => "1.0.10" }


  s.source_files  = "Flutter/*"
  s.vendored_frameworks = "Flutter/*.framework"
#子文件夹
  s.subspec 'flutter_assets' do |t|
    t.source_files = "Flutter/flutter_assets/*"
    t.subspec 'fonts' do |f|
	 f.source_files = "Flutter/flutter_assets/fonts/*"
    end
    t.subspec 'images' do |i|
	 i.source_files = "Flutter/flutter_assets/images/*"
    end	
    t.subspec 'packages' do |p|
	 p.source_files = "Flutter/flutter_assets/packages/*"
	 p.subspec 'cupertino_icons' do |cu|
	    cu.source_files = "Flutter/flutter_assets/packages/cupertino_icons/*"
	    cu.subspec 'cupertino_icons' do |as|
               	 as.source_files = "Flutter/flutter_assets/packages/cupertino_icons/assets/*"
	    end
	end
    end	
  end
end

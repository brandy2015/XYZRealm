Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "XYZRealm"
  s.version      = "4.0.9"
  s.summary      = "持续升级"

  s.description  = <<-DESC
                    简洁调用一些RealmSwift方法
                   DESC

  s.homepage     = "https://github.com/brandy2015/XYZRealm"
  s.license      = "MIT"
  s.author       = { "Brandy" => "zhangqianbrandy2012@gmail.com" }

  # Specify Swift version and iOS deployment target
  s.swift_version = '5.3'
  s.platform     = :ios, "15.0"

  # Specify the source and tag
  s.source       = { :git => "https://github.com/brandy2015/XYZRealm.git", :tag => s.version }

  # Source files
  s.source_files = "XYZRealm/Source/*"

  # Dependencies
  s.dependency 'RealmSwift'  # RealmSwift framework dependency
  s.dependency 'RxSwift'     # RxSwift dependency
  s.dependency 'RxCocoa'     # RxCocoa dependency

 # New dependencies
  s.dependency 'XYZPathKit'    # Assuming XYZPathKit is available via CocoaPods
  s.dependency 'XYZVCX'        # Assuming XYZVCX is available via CocoaPods
  s.dependency 'Disk'          # Disk package for handling file system interactions
  
end

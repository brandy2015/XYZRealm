# Uncomment the next line to define a global platform for your project
 platform :ios, '13.0'

target 'XYZRealm' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for XYZRealm
	pod "RealmSwift"
  pod "RxSwift"
  pod "RxCocoa"
  pod 'RxRealm'
end


post_install do |installer|

# Get main project development team id
   dev_team = ""
   project = installer.aggregate_targets[0].user_project
   project.targets.each do |target|
       target.build_configurations.each do |config|
           if dev_team.empty? and !config.build_settings['DEVELOPMENT_TEAM'].nil?
               dev_team = config.build_settings['DEVELOPMENT_TEAM']
           end
       end
   end
   
   
   
  installer.pods_project.targets.each do |target|
    
    if target.respond_to?(:product_type) and target.product_type == "com.apple.product-type.bundle"
               target.build_configurations.each do |config|
                   config.build_settings['DEVELOPMENT_TEAM'] = dev_team
               end
           end
    
    
      target.build_configurations.each do |config|
          config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      end
  end
end

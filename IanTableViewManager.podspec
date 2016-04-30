Pod::Spec.new do |s|  
  s.name             = "IanTableViewManager"  
  s.version          = "0.0.1"  
  s.summary          = "Table View Implementation for iOS8 Autolayout"  
  s.homepage         = "https://github.com/ianweng/IanTableViewManager"  
  s.license          = 'MIT'  
  s.author           = { "Ian Weng" => "ianweng@foxmail.com" }  
  s.source           = { :git => "https://github.com/ianweng/IanTableViewManager.git", :tag => s.version.to_s }    
  s.platform     = :ios, '8.0'  
  s.requires_arc = true  
  s.source_files = 'Classes/*'  
end
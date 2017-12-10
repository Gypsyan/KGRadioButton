Pod::Spec.new do |s|

  s.name         = 'KGRadioButton'

  s.version      = '1.2.0'

  s.summary      = 'Add Ripple action around a button'
  s.homepage     = 'https://github.com/Gypsyan/KGRadioButton'
  s.license      = 'Apache License, Version 2.0'
  s.authors      = { 'Ananth' => 'ananthanmymail@gmail.com' }
  s.source       = { :git => 'https://github.com/Gypsyan/KGRadioButton.git', :tag => s.version }
  s.source_files = 'KGRadioButton/*.swift'

  s.ios.deployment_target = '8.0'

  s.requires_arc = true

end

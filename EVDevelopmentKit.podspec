
Pod::Spec.new do |s|
  s.name              = 'EVDevelopmentKit'
  s.version           = '0.1.2'
  s.summary           = 'A bunch of useful things to use in many projects.'

  s.description       = <<-DESC
  This pod includes classes extensions and utility code that I use in my projects.
                       DESC

  s.homepage          = 'https://github.com/EstebanVallejo/EVDevelopmentKit'
  s.license           = { :type => 'MIT', :file => 'LICENSE' }
  s.author            = { 'Esteban Vallejo' => 'esteb.vallejo@gmail.com' }
  s.source            = { :git => 'https://github.com/EstebanVallejo/EVDevelopmentKit.git', :tag => s.version }

  s.platform          = :ios, '9.0'
  s.requires_arc      = true

  s.source_files      = 'EVDevelopmentKit/Classes/**/*'
  
end

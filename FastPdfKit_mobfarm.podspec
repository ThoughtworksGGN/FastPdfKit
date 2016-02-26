Pod::Spec.new do |s|
  s.name='FastPdfKit_mobfarm'
  s.version='4.0.6'
  s.summary="Version forked from FastPdfKit."
  s.homepage="https://github.com/mobfarm/FastPdfKit"
  s.license={:type=>'Creative Common License',:file=>'LICENSE.txt'}
  s.author={'MobFarm'=>'http://support.fastpdfkit.com/'}
  s.source={:git=>"https://github.com/ThoughtworksGGN/FastPdfKit.git",:tag=>"4.0.6"}
  s.platform = :ios, '5.0'
  s.subspec 'FastPdfKit.embeddedframework' do |ss|
    ss.resources = 'FastPdfKit.embeddedframework/Resources/FPKReaderBundle.bundle'
    ss.source_files = 'FastPdfKit.embeddedframework/FastPdfKit.framework/Headers'
    ss.preserve_paths = 'FastPdfKit.embeddedframework/FastPdfKit.framework', 'FastPdfKit.embeddedframework/Resources'
    ss.frameworks = 'FastPdfKit', 'AudioToolbox', 'AVFoundation', 'AVKit'
    ss.library = 'z'
    ss.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/FastPdfKit_mobfarm/FastPdfKit.embeddedframework"' }
  end
end

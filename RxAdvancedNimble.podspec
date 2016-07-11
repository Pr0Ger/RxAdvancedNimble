Pod::Spec.new do |s|

  s.name         = "RxAdvancedNimble"
  s.version      = "1.0.1"
  s.summary      = "Nimble extensions that make unit testing with RxSwift easier"

  s.description  = <<-DESC
  This library includes functions that make testing RxSwift projects easier with Nimble.
                   DESC

  s.homepage     = "https://github.com/Pr0Ger/RxAdvancedNimble"

  s.author       = { "Sergey Petrov" => "me@pr0ger.org" }

  s.license      = "MIT"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/Pr0Ger/RxAdvancedNimble.git", :tag => s.version }

  s.source_files  = "Sources/ReactiveExpectation.swift"

  s.dependency "Nimble", "~> 4.0"
  s.dependency "RxSwift", "~> 2.0"
  s.dependency "RxBlocking", "~> 2.0"
end

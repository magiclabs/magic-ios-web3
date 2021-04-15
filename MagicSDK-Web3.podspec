Pod::Spec.new do |s|
  s.name             = 'MagicSDK-Web3'
  s.version          = '1.0.0'
  s.summary          = 'Web3 library for Swift. Sign transactions and interact with Smart Contracts in the Ethereum Network.'

  s.description      = <<-DESC
Web3 library to sign transactions, interact with Smart Contracts, call
Smart Contract methods and many things more, all through either a
HTTP RPC interface provided by this library or a custom RPC interface
(for example IPC,...).
                       DESC

  s.homepage         = 'https://github.com/Boilertalk/Web3.swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Koray Koska' => 'koray@koska.at', 'Jerry Liu' => 'jerry@magic.link' }
  s.source           = { :git => 'https://github.com/magiclabs/magic-web3-ios-pod.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.swift_versions = '5.1.3', '5.1.2', '5.0', '5.1'

  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-DWeb3CocoaPods'
  }

#   s.default_subspecs = 'Core', 'HTTPExtension'

  s.vendored_frameworks = "MagicSDK-Web3/MagicSDK_Web3.framework"

      s.dependency 'BigInt', '~> 5.0'
      s.dependency 'CryptoSwift', '1.3.8'
      s.dependency 'secp256k1.swift', '~> 0.1'

        s.pod_target_xcconfig = {
            'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
          }
        s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end

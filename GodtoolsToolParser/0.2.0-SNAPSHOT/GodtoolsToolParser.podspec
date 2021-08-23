Pod::Spec.new do |spec|
    spec.name                     = 'GodtoolsToolParser'
    spec.version                  = '0.2.0-SNAPSHOT'
    spec.homepage                 = 'https://github.com/CruGlobal/kotlin-mpp-godtools-tool-parser'
#    spec.source                   = { :git => "Not Published", :tag => "Cocoapods/#{spec.name}/#{spec.version}" }
    spec.source                   = {
                                      :git => "https://github.com/CruGlobal/kotlin-mpp-godtools-tool-parser.git",
                                      :commit => "149d87c82ecf8f913849c8d1d072ee57d4e2f05b"
                                    }
    spec.authors                  = ''
    spec.license                  = 'MIT'
    spec.summary                  = 'GodTools tool parser'

    spec.static_framework         = true
    spec.vendored_frameworks      = "build/cocoapods/framework/GodToolsToolParser.framework"
    spec.prepare_command          = "./gradlew generateDummyFramework"
    spec.libraries                = "c++"
    spec.module_name              = "#{spec.name}_umbrella"

    spec.ios.deployment_target = '11.0'

                

    spec.pod_target_xcconfig = {
        'KOTLIN_TARGET[sdk=iphonesimulator*]' => 'ios_x64',
        'KOTLIN_TARGET[sdk=iphoneos*]' => 'ios_arm',
        'KOTLIN_TARGET[sdk=watchsimulator*]' => 'watchos_x64',
        'KOTLIN_TARGET[sdk=watchos*]' => 'watchos_arm',
        'KOTLIN_TARGET[sdk=appletvsimulator*]' => 'tvos_x64',
        'KOTLIN_TARGET[sdk=appletvos*]' => 'tvos_arm64',
        'KOTLIN_TARGET[sdk=macosx*]' => 'macos_x64'
    }

    spec.script_phases = [
        {
            :name => 'Build GodtoolsToolParser',
            :execution_position => :before_compile,
            :shell_path => '/bin/sh',
            :script => <<-SCRIPT
                set -ev
                REPO_ROOT="$PODS_TARGET_SRCROOT"
if [[ $(echo $CONFIGURATION | tr '[:upper:]' '[:lower:]') = 'debug' ]]
then
    SANITIZED_CONFIGURATION=debug
else
    SANITIZED_CONFIGURATION=release
fi
                "$REPO_ROOT/gradlew" -p "$REPO_ROOT" ::syncFramework \
                    -Pkotlin.native.cocoapods.target=$KOTLIN_TARGET \
                    -Pkotlin.native.cocoapods.configuration=$SANITIZED_CONFIGURATION \
                    -Pkotlin.native.cocoapods.cflags="$OTHER_CFLAGS" \
                    -Pkotlin.native.cocoapods.paths.headers="$HEADER_SEARCH_PATHS" \
                    -Pkotlin.native.cocoapods.paths.frameworks="$FRAMEWORK_SEARCH_PATHS"
            SCRIPT
        }
    ]
    spec.preserve_paths           = "**/*.*"
end
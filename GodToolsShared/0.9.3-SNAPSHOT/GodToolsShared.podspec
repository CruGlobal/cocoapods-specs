Pod::Spec.new do |spec|
    spec.name                     = 'GodToolsShared'
    spec.version                  = '0.9.3-SNAPSHOT'
    spec.homepage                 = 'https://github.com/CruGlobal/kotlin-mpp-godtools-tool-parser'
#    spec.source                   = { :http=> ''}
    spec.source                   = {
                                      :git => "https://github.com/CruGlobal/kotlin-mpp-godtools-tool-parser.git",
                                      :commit => "ff7b83699f4cc29ca3b14ce033ea4817cb038337"
                                    }
    spec.authors                  = ''
    spec.license                  = 'MIT'
    spec.summary                  = 'GodTools shared logic'
                
    spec.libraries                = 'c++'
    spec.ios.deployment_target = '14.0'
                
                
                
    spec.pod_target_xcconfig = {
        'KOTLIN_PROJECT_PATH' => '',
        'PRODUCT_MODULE_NAME' => 'GodToolsToolParser',
    }
                
    spec.script_phases = [
        {
            :name => 'Build GodToolsShared',
            :execution_position => :before_compile,
            :shell_path => '/bin/sh',
            :script => <<-SCRIPT
                if [ "YES" = "$OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED" ]; then
                  echo "Skipping Gradle build task invocation due to OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED environment variable set to \"YES\""
                  exit 0
                fi
                set -ev
                REPO_ROOT="$PODS_TARGET_SRCROOT"
                "$REPO_ROOT/gradlew" -p "$REPO_ROOT" $KOTLIN_PROJECT_PATH:syncFramework \
                    -Pkotlin.native.cocoapods.platform=$PLATFORM_NAME \
                    -Pkotlin.native.cocoapods.archs="$ARCHS" \
                    -Pkotlin.native.cocoapods.configuration="$CONFIGURATION"
            SCRIPT
        }
    ]
    spec.prepare_command = "./gradlew generateDummyFramework"
    spec.preserve_paths = "**/*.*"
    spec.vendored_frameworks = "build/cocoapods/framework/GodToolsToolParser.framework"
end
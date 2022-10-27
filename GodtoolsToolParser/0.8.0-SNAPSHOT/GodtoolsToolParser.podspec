Pod::Spec.new do |spec|
    spec.name                     = 'GodtoolsToolParser'
    spec.version                  = '0.8.0-SNAPSHOT'
    spec.homepage                 = 'https://github.com/CruGlobal/kotlin-mpp-godtools-tool-parser'
#    spec.source                   = { :http=> ''}
    spec.source                   = {
                                      :git => "https://github.com/CruGlobal/kotlin-mpp-godtools-tool-parser.git",
                                      :commit => "6121ed1a8db15e664d57d5ad0120da2802410ef2"
                                    }
    spec.authors                  = ''
    spec.license                  = 'MIT'
    spec.summary                  = 'GodTools tool parser'
    spec.vendored_frameworks      = 'build/cocoapods/framework/GodToolsToolParser.framework'
    spec.prepare_command          = "./gradlew generateDummyFramework"
    spec.libraries                = 'c++'
    spec.ios.deployment_target = '11.0'
                
                
    spec.pod_target_xcconfig = {
        'KOTLIN_PROJECT_PATH' => ':',
        'PRODUCT_MODULE_NAME' => 'GodToolsToolParser',
    }
                
    spec.script_phases = [
        {
            :name => 'Build GodtoolsToolParser',
            :execution_position => :before_compile,
            :shell_path => '/bin/sh',
            :script => <<-SCRIPT
                if [ "YES" = "$OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED" ]; then
                  echo "Skipping Gradle build task invocation due to OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED environment variable set to \"YES\""
                  exit 0
                fi
                set -ev
                REPO_ROOT="$PODS_TARGET_SRCROOT"
if [[ $(echo $CONFIGURATION | tr '[:upper:]' '[:lower:]') = 'debug' ]]
then
    SANITIZED_CONFIGURATION=Debug
else
    SANITIZED_CONFIGURATION=Release
fi
                "$REPO_ROOT/gradlew" -p "$REPO_ROOT" $KOTLIN_PROJECT_PATH:syncFramework \
                    -Pkotlin.native.cocoapods.platform=$PLATFORM_NAME \
                    -Pkotlin.native.cocoapods.archs="$ARCHS" \
                    -Pkotlin.native.cocoapods.configuration="$SANITIZED_CONFIGURATION"
            SCRIPT
        }
    ]
                
    spec.preserve_paths           = "**/*.*"
end
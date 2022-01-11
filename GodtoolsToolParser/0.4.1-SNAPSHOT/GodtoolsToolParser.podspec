Pod::Spec.new do |spec|
    spec.name                     = 'GodtoolsToolParser'
    spec.version                  = '0.4.1-SNAPSHOT'
    spec.homepage                 = 'https://github.com/CruGlobal/kotlin-mpp-godtools-tool-parser'
#    spec.source                   = { :git => "Not Published", :tag => "Cocoapods/#{spec.name}/#{spec.version}" }
    spec.source                   = {
                                      :git => "https://github.com/CruGlobal/kotlin-mpp-godtools-tool-parser.git",
                                      :commit => "67bd63d78a42a03012a5344f26b92166df0da5f7"
                                    }
    spec.authors                  = ''
    spec.license                  = 'MIT'
    spec.summary                  = 'GodTools tool parser'

    spec.vendored_frameworks      = "build/cocoapods/framework/GodToolsToolParser.framework"
    spec.prepare_command          = "./gradlew generateDummyFramework"
    spec.libraries                = "c++"
    spec.module_name              = "#{spec.name}_umbrella"

    spec.ios.deployment_target = '11.0'

                

    spec.pod_target_xcconfig = {
        'KOTLIN_PROJECT_PATH' => ':',
        'PRODUCT_MODULE_NAME' => 'GodtoolsToolParser',
    }

    spec.script_phases = [
        {
            :name => 'Build GodtoolsToolParser',
            :execution_position => :before_compile,
            :shell_path => '/bin/sh',
            :script => <<-SCRIPT
                if [ "YES" = "$COCOAPODS_SKIP_KOTLIN_BUILD" ]; then
                  echo "Skipping Gradle build task invocation due to COCOAPODS_SKIP_KOTLIN_BUILD environment variable set to \"YES\""
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
                    -Pkotlin.native.cocoapods.configuration=$SANITIZED_CONFIGURATION
            SCRIPT
        }
    ]
    spec.preserve_paths           = "**/*.*"
end
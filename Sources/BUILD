load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load('@build_bazel_rules_swift//swift:swift.bzl', 'swift_library')
load(
    "@com_github_buildbuddy_io_rules_xcodeproj//xcodeproj:defs.bzl",
    "top_level_target",
    "xcodeproj",
)

swift_library(
    name = "AppSource",
    srcs = glob(["*.swift"]),
    deps = [],
)

ios_application(
    name = "SampleApp",
    minimum_os_version = "13.0",
    deps = [":AppSource"],
    infoplists = ["Info.plist"],
    families = ["iphone"],
    bundle_id = "com.example.SampleApp",
    visibility = ["//visibility:public"],
    linkopts = ["-interposable"]
)

xcodeproj(
    name = "xcodeproj",
    project_name = "SampleApp",
    tags = ["manual"],
    top_level_targets = [
        top_level_target(":SampleApp", target_environments = ["simulator"])
    ]
)

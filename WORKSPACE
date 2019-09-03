
workspace(name = "perfetto_embedder")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "perfetto",

    # From https://android-review.googlesource.com/c/platform/external/perfetto/+/1108420/15
    url = "https://android.googlesource.com/platform/external/perfetto/+archive/e71af2577e4fad83b2b99ee039da0bb45f273bd7.tar.gz"
)

new_local_repository(
    name = "perfetto_cfg",
    path = "perfetto_config", 
    build_file_content = ""
)

load("@perfetto//:bazel/deps.bzl", "perfetto_deps")
perfetto_deps()

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
protobuf_deps()

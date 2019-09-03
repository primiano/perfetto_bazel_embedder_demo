load("@perfetto//:bazel/standalone/perfetto_cfg.bzl", _CFG="PERFETTO_CONFIG")


PERFETTO_CONFIG = _CFG

# Or it coud override it as:

# PERFETTO_CONFIG = struct(
#   # This is used to refer to deps within perfetto's BUILD files.
#   # In standalone and bazel-based embedders // is fine, because perfetto has its
#   # own repository, so // would refer to that.
#   # In google3, instead, this needs to be overridden to //third_party/perfetto
#   # because perfetto won't have its own repository there.
#   root = "//",

#   # This allows the embedder to customize copts and other args passed to
#   # cc_binary / cc_library. Example:
#   # extra_cc_library_rules = { "copts": ["-fenable-compiler-feature"] }
#   extra_cc_library_rules = {},
#   extra_cc_binary_rules = {},

#   # These variables map dependencies to perfetto third-party projects. This is
#   # to allow perfetto embedders (e.g. gapid) and google3 to override paths and
#   # target names to their own third_party.
#   deps = struct(
#     zlib = "@perfetto_dep_zlib//:zlib",
#     jsoncpp = "@perfetto_dep_jsoncpp//:jsoncpp",
#     linenoise = "@perfetto_dep_linenoise//:linenoise",
#     sqlite = "@perfetto_dep_sqlite//:sqlite",
#     sqlite_ext_percentile = "@perfetto_dep_sqlite_src//:sqlite_ext_percentile",
#     protoc = "@com_google_protobuf//:protoc",
#     protoc_lib = "@com_google_protobuf//:protoc_lib",
#     protobuf_lite = "@com_google_protobuf//:protobuf_lite",
#   )
# )
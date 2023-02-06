# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

namespace "*" {
  policy       = "write"
  capabilities = ["alloc-node-exec"]
}
agent {
  policy = "write"
}
operator {
  policy = "write"
}
quota {
  policy = "write"
}
node {
  policy = "write"
}
host_volume "*" {
  policy = "write"
}
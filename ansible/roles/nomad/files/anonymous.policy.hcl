# Copyright IBM Corp. 2021, 2026

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
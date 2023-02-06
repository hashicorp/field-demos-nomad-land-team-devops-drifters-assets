# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

job "fabio" {
    datacenters = ["West"]

    group "fabio" {
        count = 1
        task "fabio" {
            driver = "raw_exec"

            config {
                command = "fabio"
                args    = ["-proxy.strategy=rr"]
            }

            artifact {
                source      = "https://github.com/fabiolb/fabio/releases/download/v1.5.13/fabio-1.5.13-go1.13.4-linux_amd64"
                destination = "local/fabio"
                mode        = "file"
            }
        }
    }
}
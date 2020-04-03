terraform {
    backend "remote" {
        organization = "roy-trial"

        workspaces {
            name = "try-tf-cloud"
        }
    }
}

resource "null_resource" "parallel_run" {
    provisioner "local-exec" {
        command = "ls -l; whoami; uname -a; sleep 10"
    }
}
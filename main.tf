terraform {
    backend "remote" {
        organization = "roy-trial"

        workspaces {
            name = "try-tf-cloud"
        }
    }
}
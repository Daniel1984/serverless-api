locals {
  env               = terraform.workspace == "default" ? "dev" : terraform.workspace
  state_bucket_name = "${var.prefix}-remote-state"
  destroy_bucket    = contains(["dev"], local.env)
  ddb_name          = "${var.prefix}-${var.ddb_statelock_table}"
}

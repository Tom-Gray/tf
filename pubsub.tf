locals {
  project_id = "tomgraydemo"
}

module "pubsub" {

  source     = "./modules/pubsub"
  for_each   = var.pubsub
  project_id = local.project_id

  topic = each.value.name


  confidentiality = each.value.labels.confidentiality
  integrity       = each.value.labels.integrity
  trustlevel      = each.value.labels.trustlevel
}

locals {

}


resource "google_pubsub_topic" "aegis-pubsub-topic" {
  name    = var.topic
  project = var.project_id

  # Platform control: PL.PUBSUB.C-05
  message_storage_policy {
    allowed_persistence_regions = [
      "australia-southeast1",
    ]
  }



  labels = {
    confidentiality = var.confidentiality
    integrity       = var.integrity
    trustlevel      = var.trustlevel
  }
}

# Platform control: PL.PUBSUB.C-O1
# Platform control: PL.PUBSUB.C-02 (is standard)
# resource "google_pubsub_topic_iam_binding" "aegis-pubsub-publishers" {

#   project = var.project_id
#   topic   = var.topic
#   role    = "roles/pubsub.publisher"
#   members = each.value.member_list

#   depends_on = [
#     google_pubsub_topic.aegis-pubsub-topic,
#   ]
# }

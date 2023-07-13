locals {

}


resource "google_pubsub_topic" "pubsub-topic" {
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

# Publishers
# List of users that can publish to the Topic. 
resource "google_pubsub_topic_iam_binding" "pubsub-publishers" {

  project = var.project_id
  topic   = var.topic
  role    = "roles/pubsub.publisher"
  members = toset(var.publishers)

  depends_on = [
    google_pubsub_topic.pubsub-topic,
  ]
}


# Subscriptions to the topic

resource "google_pubsub_subscription" "aegis-pubsub-subscriptions" {
  for_each = var.subscriptions
  project  = var.project_id
  name     = each.key
  topic    = var.topic

  depends_on = [google_pubsub_topic.pubsub-topic]
}

resource "google_pubsub_subscription_iam_binding" "aegis-pubsub-suscription-subscribers" {
  for_each = var.subscriptions
  role = "roles/pubsub.subscriber"
  subscription = google_pubsub_subscription.aegis-pubsub-subscriptions[each.key].name
  members = toset(var.subscribers)


}
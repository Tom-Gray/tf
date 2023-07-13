variable "pubsub" {
type = object({
  name = string
  environment = string
  labels = object({
      mylist = list(string)
  subscriptions = object({
    name = 
  })
})
}}


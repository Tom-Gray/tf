
Topics = {
  MyFirstTopic = {
    name        = "MyFirstTopic"
    environment = "ldev"
    labels = {
      confidentiality = "confidential"
      integrity       = "accurate"
      trustlevel      = "medium"
    }
  },
  MySecondTopic = {
    name        = "MySEcondTopic"
    environment = "ldev"
    labels = {
      confidentiality = "confidential"
      integrity       = "accurate"
      trustlevel      = "medium"
    }
  },
}

# subscription to a topic and which GSA 
Subscriptions = {
  topic = "MyFirstTopic"
  subscribers = {
    idm = {
      email = "idm@project.iam.gserviceaccount.com"
    }
  },
  topic = "MySecondTopic"
  subscribers = {
    em = {
      email = "idm@project.iam.gserviceaccount.com"
    }
  }
}

# Who can publish to a topic
Publishers = {
  topic = MySecondTopic
  publishers = {
    idm = {
      email = "email@email.com"
    }
  }
}


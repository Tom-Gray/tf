
pubsub = {
  MyFirstTopic = {
    environment = "ldev"
    labels = {
      confidentiality = "confidential"
      integrity       = "accurate"
      trustlevel      = "medium"
    }
    subscriptions = {
      idm = {
        email = "idm@project.iam.gserviceaccount.com"
      }
      id2 = {
        email = "email@email.com"
      }
    }
    publishers = [ #list of accounts that can publish to this topic
      "serviceAccount:am@project.iam.gserviceaccount.com",
      "serviceAccount:idm@project.iam.gserviceaccount.com",
    ]
    subscribers = {
      idm = {
        email = "idm@project.iam.gserviceaccount.com"
      }
    }
  }
  MySecondTopic = {
    environment = "dev"
    labels = {
      confidentiality = "confidential"
      integrity       = "accurate"
      trustlevel      = "medium"
    }
    subscriptions = {
      idm = {
        email = "idm@project.iam.gserviceaccount.com"
      }
    }
    publishers = [ #list of accounts that can publish to this topic
      "serviceAccount:am@project.iam.gserviceaccount.com",
      "serviceAccount:idm@project.iam.gserviceaccount.com",
    ]
    subscribers = {
      idm = {
        email = "idm-dev-fr@project.iam.gserviceaccount.com"
      }
    }
  }
}


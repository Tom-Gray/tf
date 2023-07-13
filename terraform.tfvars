
pubsub = {
  MyFirstTopic = {
    name        = "MyFirstTopic"
    environment = "ldev"
    labels = {
      confidentiality = "confidential"
      integrity       = "accurate"
      trustlevel      = "medium"
    }
  }

  subscriptions = {
    subscription1 = {
      subscribers = {
        idm = {
          email = "idm@project.iam.gserviceaccount.com"
        }
      }
    }
  }
  publishers = {
    am = {
      email = "am@project.iam.gserviceaccount.com"
    }
    idm = {
      email = "idm@project.iam.gserviceaccount.com"
    }
  }
  subscribers = {
    idm = {
      email = "idm@project.iam.gserviceaccount.com"
    }
  },
  MySecondTopic = {
    name        = "MySecondTopic"
    environment = "dev"
    labels = {
      confidentiality = "confidential"
      integrity       = "accurate"
      trustlevel      = "medium"
    }
    subscriptions = {
      subscription1 = {
        subscribers = {
          idm = {
            email = "idm@project.iam.gserviceaccount.com"
          }
        }
      }
    }
    publishers = {
      am = {
        email = "am@project.iam.gserviceaccount.com"
      }
      idm = {
        email = "idm-dev-fr@project.iam.gserviceaccount.com"
      }
    }
    subscribers = {
      idm = {
        email = "idm-dev-fr@project.iam.gserviceaccount.com"
      }
    }
  }
}

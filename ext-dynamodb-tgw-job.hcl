job "ext-dynamodb-tgw" {
  group "ext-dynamodb-tgw" {
    network {
      mode = "bridge"
    }

    service {
      name     = "ext-dynamodb-tgw"

      connect {

        sidecar_task {
          config {
            mount {
              type = "bind"
              target = "/etc/ssl/certs/Amazon_Root_CA_1.pem"
              source = "/etc/ssl/certs/Amazon_Root_CA_1.pem"
              readonly = true
              bind_options {
                propagation = "rshared"
              }
            }
          }
        }

        gateway {
          proxy {}
          terminating {
            service {
              name    = "ext-dynamodb"
              ca_file = "/etc/ssl/certs/Amazon_Root_CA_1.pem"
              sni     = "dynamodb.us-east-1.amazonaws.com"
            }
          }
        }

      }
    }
  }
}

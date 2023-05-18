# resource "twingate_connector" "tg_connector" {
#   remote_network_id = var.tg_remote_network_id
# }

# resource "twingate_connector_tokens" "ibm_connector_tokens" {
#   connector_id = twingate_connector.tg_connector.id
# }

resource "aws_key_pair" "ssh_access_key" {
  key_name   = "europa-tg-connector-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "twingate_remote_network" "aws_demo_network" {
  name = "aws-demo-remote-network"
}

resource "twingate_connector" "aws_demo_connector" {
  remote_network_id = twingate_remote_network.aws_demo_network.id
}

resource "twingate_connector_tokens" "aws_connector_tokens" {
  connector_id = twingate_connector.aws_demo_connector.id
}
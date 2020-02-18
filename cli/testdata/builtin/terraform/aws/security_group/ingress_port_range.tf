# Pass
resource "aws_security_group" "ingress_port_range_matches" {
  name        = "allow_http"
  description = "Allow HTTP traffic"
  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }
}

# Warn
resource "aws_security_group" "ingress_port_range_does_not_match" {
  name        = "allow_http"
  description = "Allow HTTP traffic"
  ingress {
    from_port = 10000
    to_port   = 10200
    protocol  = "tcp"
  }
}

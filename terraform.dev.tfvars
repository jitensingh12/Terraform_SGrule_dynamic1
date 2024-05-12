#map_list = {
#    rule1 = [
#        { 
#            type  = "ingress"
#            from_port = "80"
#            to_port = "80"
#            protocol = "tcp"
#            cidr_blocks = "0.0.0.0/32" 
#        }
#    ]
#}

map_list = {
    rule1 = ["ingress", "80", "80", "tcp", "0.0.0.0/32"]
    rule2 = ["ingress", "81", "81", "tcp", "0.0.0.0/32"],
}
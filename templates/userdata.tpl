#!/bin/bash

yum update -y
yum install -y httpd24 php70

service httpd start

chkconfig httpd on
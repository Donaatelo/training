data "template_file" "u_data" {
  template = "${file("userdata.tpl")}"
}
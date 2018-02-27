data "template_file" "u_data" {
  template = "${file("templates/userdata.tpl")}"
}
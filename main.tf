module "ec2" {
  source  = "./modules/ec2"
  nom_instance = var.nom_instance
  type = var.type
  user_data = var.user_data
  nom_role = var.nom_role
}
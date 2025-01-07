module "resource" {
  source = "../../Modules/1_Azure_ResourceGroup"
  Module_RG = var.var_RG_Practice 
  
}

module "storage" {
    depends_on = [module.resource]
    source = "../../Modules/2_Azure_StorageAccount"
    var_stg = var. var_Stg_Practice  
}

module "container" {
  depends_on = [ module.storage ]
  source = "../../Modules/3_Azure_Containeraccount"
Stg_container = var.var_container_Practice
  
}

module "Network" {
  depends_on = [ module.resource ]
  source = "../../Modules/4_Azure_Network"
  Virtual_Network = var.Virtual_network1
  
}

module "Bastions" {
  depends_on = [ module.resource ]
  source = "../../Modules/5_Azure_Bastions"
  main_Bastons =var.Bastions1
  
}

module "Keyvault" {
  depends_on = [ module.resource ]
  source = "../../Modules/6_Azure_Keyvault"
  azureKV = var.mod_azureKV
}
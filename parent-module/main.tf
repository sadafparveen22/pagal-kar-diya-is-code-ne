module "rg" {
source = "../child_module/RG"
}   

module "storage"{
    source = "../child_module/Storage"
    depends_on = [ module.rg ]
}


module "vnet" {
    source = "../child_module/vnet"
    depends_on = [module.rg]
}


module "subnet" {
    source = "../child_module/subnet"
    depends_on = [ module.vnet ]
}

module "publicip" {
    source = "../child_module/public_ip"
    depends_on = [ module.rg]
}

module "nsg" {
    source = "../child_module/nsg"
    depends_on = [ module.subnet]
}
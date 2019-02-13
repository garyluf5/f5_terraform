# Environment
variable prefix	{ default = "zluhalb" }
variable uname	{ default = "azureuser" }
variable upassword	{ default = "Default12345" }
variable location	{ default = "eastus" }	 
variable region		{ default = "East US" }

# NETWORK
variable cidr	{ default = "10.90.0.0/16" }
variable "subnets" {
	type = "map"
	default = {
		"subnet1" = "10.90.1.0/24"
		"subnet2" = "10.90.2.0/24"
		"subnet3" = "10.90.3.0/24"
	}
}
variable f5vm01mgmt	{ default = "10.90.1.4" }
variable f5vm01ext	{ default = "10.90.2.4" }
variable f5vm01ext_sec  { default = "10.90.2.11" }
variable f5vm02mgmt	{ default = "10.90.1.5" }
variable f5vm02ext	{ default = "10.90.2.5" }
variable f5vm02ext_sec  { default = "10.90.2.12" }
variable backend01ext   { default = "10.90.2.101" }

# BIGIP Image
variable instance_type	{ default = "Standard_D3_v2" }
variable image_name	{ default = "f5-bigip-virtual-edition-25m-best-hourly" }
variable product	{ default = "f5-big-ip-best" }
variable bigip_version	{ default = "latest" }

# BIGIP Setup
variable license1	      { default = ""}
variable license2	      { default = ""}
variable host1_name           { default = "f5vm01"}
variable host2_name           { default = "f5vm02"}
variable dns_server           { default = "8.8.8.8" }
variable ntp_server           { default = "0.us.pool.ntp.org" }
variable timezone             { default = "UTC" }
## Please check and update the latest DO URL from https://github.com/F5Networks/f5-declarative-onboarding/releases
variable DO_onboard_URL	      { default = "https://raw.githubusercontent.com/F5Networks/f5-declarative-onboarding/master/dist/f5-declarative-onboarding-1.2.0-3.noarch.rpm" }
## Please check and update the latest AS3 URL from https://github.com/F5Networks/f5-appsvcs-extension/releases/latest 
variable AS3_URL	      { default = "https://raw.githubusercontent.com/F5Networks/f5-appsvcs-extension/master/dist/latest/f5-appsvcs-3.8.1-1.noarch.rpm" }
variable libs_dir	      { default = "/config/cloud/azure/node_modules" }
variable onboard_log	      { default = "/var/log/startup-script.log" }

# TAGS
variable purpose        { default = "public"       }
variable environment    { default = "f5env"        }  #ex. dev/staging/prod
variable owner          { default = "f5owner"      }
variable group          { default = "f5group"      }
variable costcenter     { default = "f5costcenter" }
variable application    { default = "f5app"        }


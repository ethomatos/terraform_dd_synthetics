variable "datadog_api_key" {
}

variable "datadog_app_key" {
}

variable "synthetic_location" {
}

variable "bu1_urls" {
	type = list(string)
	default = [
		"https://www.broadridge.com/financial-services/asset-management/",
		"https://www.broadridge.com/financial-services/capital-markets/",
		"https://www.broadridge.com/financial-services/wealth-management/"
	]
}
variable "bu2_urls" {
	type = list(string)
	default = [
		"https://www.broadridge.com/customer-communications/consumer-finance/",
		"https://www.broadridge.com/customer-communications/insurance/",
		"https://www.broadridge.com/customer-communications/retail-banking/"
	]
}
variable "bu3_urls" {
	type = list(string)
	default = [
		"https://www.broadridge.com/consulting-services/"
	]
}

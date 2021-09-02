resource "datadog_synthetics_test" "bu1_api_perf_test" {
	count = 3
	type		= "api"
	subtype = "http"
	request_definition {
		method = "GET"
		url		= element(var.bu1_urls, count.index)
	}
	assertion {
		type		 = "responseTime"
		operator = "lessThan"
		target	 = "200"
	}
	assertion {
		type		 = "statusCode"
		operator = "is"
		target	 = "200"
	}
	locations = [var.synthetic_location]
	options_list {
		tick_every = 900

		retry {
			count		= 2
			interval = 300
		}
	}
	name		= "API Perf Test BU1 ${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu1", "type:performance", "app:app${count.index}"]

	status = "live"
}
resource "datadog_synthetics_test" "bu1_api_avail_test" {
	count = 3
	type		= "api"
	subtype = "http"
	request_definition {
		method = "GET"
		url		= element(var.bu1_urls, count.index)
	}
	assertion {
		type		 = "statusCode"
		operator = "is"
		target	 = "200"
	}
	locations = [var.synthetic_location]
	options_list {
		tick_every = 900

		retry {
			count		= 2
			interval = 300
		}
	}
	name		= "API Avail Test BU1 ${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu1", "type:availability", "app:app${count.index}"]

	status = "live"
}
resource "datadog_synthetics_test" "bu2_api_perf_test" {
	count = 3
	type		= "api"
	subtype = "http"
	request_definition {
		method = "GET"
		url		= element(var.bu2_urls, count.index)
	}
	assertion {
		type		 = "responseTime"
		operator = "lessThan"
		target	 = "200"
	}
	assertion {
		type		 = "statusCode"
		operator = "is"
		target	 = "200"
	}
	locations = [var.synthetic_location]
	options_list {
		tick_every = 900

		retry {
			count		= 2
			interval = 300
		}
	}
	name		= "API Perf Test BU2 ${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu2", "type:performance", "app:app${count.index}"]

	status = "live"
}
resource "datadog_synthetics_test" "bu2_api_avail_test" {
	count = 3
	type		= "api"
	subtype = "http"
	request_definition {
		method = "GET"
		url		= element(var.bu2_urls, count.index)
	}
	assertion {
		type		 = "statusCode"
		operator = "is"
		target	 = "200"
	}
	locations = [var.synthetic_location]
	options_list {
		tick_every = 900

		retry {
			count		= 2
			interval = 300
		}
	}
	name		= "API Avail Test BU2 ${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu2", "type:availability", "app:app${count.index}"]

	status = "live"
}
resource "datadog_synthetics_test" "bu3_api_avail_test" {
	count = 1
	type		= "api"
	subtype = "http"
	request_definition {
		method = "GET"
		url		= element(var.bu3_urls, count.index)
	}
	assertion {
		type		 = "statusCode"
		operator = "is"
		target	 = "200"
	}
	locations = [var.synthetic_location]
	options_list {
		tick_every = 900

		retry {
			count		= 2
			interval = 300
		}
	}
	name		= "API Avail Test BU3 ${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu3", "type:availability", "app:app${count.index}"]

	status = "live"
}
resource "datadog_synthetics_test" "bu3_api_perf_test" {
	count = 1
	type		= "api"
	subtype = "http"
	request_definition {
		method = "GET"
		url		= element(var.bu3_urls, count.index)
	}
	assertion {
		type		 = "responseTime"
		operator = "lessThan"
		target	 = "200"
	}
	assertion {
		type		 = "statusCode"
		operator = "is"
		target	 = "200"
	}
	locations = [var.synthetic_location]
	options_list {
		tick_every = 900

		retry {
			count		= 2
			interval = 300
		}
	}
	name		= "API Perf Test BU3 ${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu3", "type:performance", "app:app${count.index}"]

	status = "live"
}

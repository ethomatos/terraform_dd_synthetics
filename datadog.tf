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
		monitor_name = "Perf Test BU1 App${count.index}"
	}
	name		= "Perf Test BU1 App${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "project:broadridge_synthetics", "bu:bu1", "mtype:performance", "app:app${count.index}"]

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
		monitor_name = "Avail Test BU1 App${count.index}"
	}
	name		= "Avail Test BU1 App${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu1", "mtype:availability", "project:broadridge_synthetics", "app:app${count.index}"]

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
		monitor_name		= "Perf Test BU2 App${count.index}"
	}
	name		= "Perf Test BU2 App${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu2", "mtype:performance", "project:broadridge_synthetics", "app:app${count.index}"]

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
		monitor_name		= "Avail Test BU2 App${count.index}"
	}
	name		= "Avail Test BU2 App${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu2", "mtype:availability", "project:broadridge_synthetics", "app:app${count.index}"]

	status = "live"
}
resource "datadog_synthetics_test" "bu3_api_avail_test" {
	count = 3
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
		monitor_name		= "Avail Test BU3 App${count.index}"
	}
	name		= "Avail Test BU3 App${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu3", "mtype:availability", "project:broadridge_synthetics", "app:app${count.index}"]

	status = "live"
}
resource "datadog_synthetics_test" "bu3_api_perf_test" {
	count = 3
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
		monitor_name		= "Perf Test BU3 App${count.index}"
	}
	name		= "Perf Test BU3 App${count.index}"
	message = "This is only a test"
	tags		= ["owner:et", "bu:bu3", "mtype:performance", "project:broadridge_synthetics", "app:app${count.index}"]

	status = "live"
}

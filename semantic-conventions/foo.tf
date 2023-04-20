resource "google_monitoring_metric_descriptor" "http_server_duration" {
  description = "Measures the duration of inbound HTTP requests."
  type = "workload.googleapis.com/http.server.duration"
  metric_kind = "CUMULATIVE"
  value_type = "DISTRIBUTION"
  unit = "s"
  display_name = "http.server.duration (OpenTelemetry)"

  labels {
    key = "http_scheme"
    value_type = "STRING"
    description = "The URI scheme identifying the used protocol."
  }
  labels {
    key = "http_route"
    value_type = "STRING"
    description = "The matched route (path template in the format used by the respective server framework). See note below"
  }
  labels {
    key = "net_host_name"
    value_type = "STRING"
    description = "Name of the local HTTP server that received the request."
  }
  labels {
    key = "net_host_port"
    value_type = "STRING"
    description = "Port of the local HTTP server that received the request."
  }
  labels {
    key = "http_method"
    value_type = "STRING"
    description = "HTTP request method."
  }
  labels {
    key = "http_status_code"
    value_type = "STRING"
    description = "[HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6)."
  }
  labels {
    key = "net_protocol_name"
    value_type = "STRING"
    description = "Application layer protocol used. The value SHOULD be normalized to lowercase."
  }
  labels {
    key = "net_protocol_version"
    value_type = "STRING"
    description = "Version of the application layer protocol used. See note below."
  }
}

resource "google_monitoring_metric_descriptor" "http_server_active_requests" {
  description = "Measures the number of concurrent HTTP requests that are currently in-flight."
  type = "workload.googleapis.com/http.server.active_requests"
  metric_kind = "GAUGE"
  value_type = "DOUBLE"
  unit = "{request}"
  display_name = "http.server.active_requests (OpenTelemetry)"

  labels {
    key = "http_method"
    value_type = "STRING"
    description = "HTTP request method."
  }
  labels {
    key = "http_scheme"
    value_type = "STRING"
    description = "The URI scheme identifying the used protocol."
  }
  labels {
    key = "net_host_name"
    value_type = "STRING"
    description = "Name of the local HTTP server that received the request."
  }
  labels {
    key = "net_host_port"
    value_type = "STRING"
    description = "Port of the local HTTP server that received the request."
  }
}

resource "google_monitoring_metric_descriptor" "http_server_request_size" {
  description = "Measures the size of HTTP request messages (compressed)."
  type = "workload.googleapis.com/http.server.request.size"
  metric_kind = "CUMULATIVE"
  value_type = "DISTRIBUTION"
  unit = "By"
  display_name = "http.server.request.size (OpenTelemetry)"

  labels {
    key = "http_scheme"
    value_type = "STRING"
    description = "The URI scheme identifying the used protocol."
  }
  labels {
    key = "http_route"
    value_type = "STRING"
    description = "The matched route (path template in the format used by the respective server framework). See note below"
  }
  labels {
    key = "net_host_name"
    value_type = "STRING"
    description = "Name of the local HTTP server that received the request."
  }
  labels {
    key = "net_host_port"
    value_type = "STRING"
    description = "Port of the local HTTP server that received the request."
  }
  labels {
    key = "http_method"
    value_type = "STRING"
    description = "HTTP request method."
  }
  labels {
    key = "http_status_code"
    value_type = "STRING"
    description = "[HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6)."
  }
  labels {
    key = "net_protocol_name"
    value_type = "STRING"
    description = "Application layer protocol used. The value SHOULD be normalized to lowercase."
  }
  labels {
    key = "net_protocol_version"
    value_type = "STRING"
    description = "Version of the application layer protocol used. See note below."
  }
}

resource "google_monitoring_metric_descriptor" "http_server_response_size" {
  description = "Measures the size of HTTP response messages (compressed)."
  type = "workload.googleapis.com/http.server.response.size"
  metric_kind = "CUMULATIVE"
  value_type = "DISTRIBUTION"
  unit = "By"
  display_name = "http.server.response.size (OpenTelemetry)"

  labels {
    key = "http_scheme"
    value_type = "STRING"
    description = "The URI scheme identifying the used protocol."
  }
  labels {
    key = "http_route"
    value_type = "STRING"
    description = "The matched route (path template in the format used by the respective server framework). See note below"
  }
  labels {
    key = "net_host_name"
    value_type = "STRING"
    description = "Name of the local HTTP server that received the request."
  }
  labels {
    key = "net_host_port"
    value_type = "STRING"
    description = "Port of the local HTTP server that received the request."
  }
  labels {
    key = "http_method"
    value_type = "STRING"
    description = "HTTP request method."
  }
  labels {
    key = "http_status_code"
    value_type = "STRING"
    description = "[HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6)."
  }
  labels {
    key = "net_protocol_name"
    value_type = "STRING"
    description = "Application layer protocol used. The value SHOULD be normalized to lowercase."
  }
  labels {
    key = "net_protocol_version"
    value_type = "STRING"
    description = "Version of the application layer protocol used. See note below."
  }
}

resource "google_monitoring_metric_descriptor" "http_client_duration" {
  description = "Measures the duration of outbound HTTP requests."
  type = "workload.googleapis.com/http.client.duration"
  metric_kind = "CUMULATIVE"
  value_type = "DISTRIBUTION"
  unit = "s"
  display_name = "http.client.duration (OpenTelemetry)"

  labels {
    key = "net_peer_name"
    value_type = "STRING"
    description = "Host identifier of the [\"URI origin\"](https://www.rfc-editor.org/rfc/rfc9110.html#name-uri-origin) HTTP request is sent to."
  }
  labels {
    key = "net_peer_port"
    value_type = "STRING"
    description = "Port identifier of the [\"URI origin\"](https://www.rfc-editor.org/rfc/rfc9110.html#name-uri-origin) HTTP request is sent to."
  }
  labels {
    key = "http_method"
    value_type = "STRING"
    description = "HTTP request method."
  }
  labels {
    key = "http_status_code"
    value_type = "STRING"
    description = "[HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6)."
  }
  labels {
    key = "net_protocol_name"
    value_type = "STRING"
    description = "Application layer protocol used. The value SHOULD be normalized to lowercase."
  }
  labels {
    key = "net_protocol_version"
    value_type = "STRING"
    description = "Version of the application layer protocol used. See note below."
  }
  labels {
    key = "net_sock_peer_addr"
    value_type = "STRING"
    description = "Remote socket peer address: IPv4 or IPv6 for internet protocols, path for local communication, [etc](https://man7.org/linux/man-pages/man7/address_families.7.html)."
  }
}

resource "google_monitoring_metric_descriptor" "http_client_request_size" {
  description = "Measures the size of HTTP request messages (compressed)."
  type = "workload.googleapis.com/http.client.request.size"
  metric_kind = "CUMULATIVE"
  value_type = "DISTRIBUTION"
  unit = "By"
  display_name = "http.client.request.size (OpenTelemetry)"

  labels {
    key = "net_peer_name"
    value_type = "STRING"
    description = "Host identifier of the [\"URI origin\"](https://www.rfc-editor.org/rfc/rfc9110.html#name-uri-origin) HTTP request is sent to."
  }
  labels {
    key = "net_peer_port"
    value_type = "STRING"
    description = "Port identifier of the [\"URI origin\"](https://www.rfc-editor.org/rfc/rfc9110.html#name-uri-origin) HTTP request is sent to."
  }
  labels {
    key = "http_method"
    value_type = "STRING"
    description = "HTTP request method."
  }
  labels {
    key = "http_status_code"
    value_type = "STRING"
    description = "[HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6)."
  }
  labels {
    key = "net_protocol_name"
    value_type = "STRING"
    description = "Application layer protocol used. The value SHOULD be normalized to lowercase."
  }
  labels {
    key = "net_protocol_version"
    value_type = "STRING"
    description = "Version of the application layer protocol used. See note below."
  }
  labels {
    key = "net_sock_peer_addr"
    value_type = "STRING"
    description = "Remote socket peer address: IPv4 or IPv6 for internet protocols, path for local communication, [etc](https://man7.org/linux/man-pages/man7/address_families.7.html)."
  }
}

resource "google_monitoring_metric_descriptor" "http_client_response_size" {
  description = "Measures the size of HTTP response messages (compressed)."
  type = "workload.googleapis.com/http.client.response.size"
  metric_kind = "CUMULATIVE"
  value_type = "DISTRIBUTION"
  unit = "By"
  display_name = "http.client.response.size (OpenTelemetry)"

  labels {
    key = "net_peer_name"
    value_type = "STRING"
    description = "Host identifier of the [\"URI origin\"](https://www.rfc-editor.org/rfc/rfc9110.html#name-uri-origin) HTTP request is sent to."
  }
  labels {
    key = "net_peer_port"
    value_type = "STRING"
    description = "Port identifier of the [\"URI origin\"](https://www.rfc-editor.org/rfc/rfc9110.html#name-uri-origin) HTTP request is sent to."
  }
  labels {
    key = "http_method"
    value_type = "STRING"
    description = "HTTP request method."
  }
  labels {
    key = "http_status_code"
    value_type = "STRING"
    description = "[HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6)."
  }
  labels {
    key = "net_protocol_name"
    value_type = "STRING"
    description = "Application layer protocol used. The value SHOULD be normalized to lowercase."
  }
  labels {
    key = "net_protocol_version"
    value_type = "STRING"
    description = "Version of the application layer protocol used. See note below."
  }
  labels {
    key = "net_sock_peer_addr"
    value_type = "STRING"
    description = "Remote socket peer address: IPv4 or IPv6 for internet protocols, path for local communication, [etc](https://man7.org/linux/man-pages/man7/address_families.7.html)."
  }
}


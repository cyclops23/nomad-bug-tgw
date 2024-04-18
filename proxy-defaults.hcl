Kind        = "proxy-defaults"
Name        = "global"

AccessLogs {
  Enabled = true
}

Config {
  protocol                   = "http"
  log_level                  = "warn"
  component_log_level        = "upstream:warn,http:warn,router:warn,config:warn"
  envoy_prometheus_bind_addr = "127.0.0.1:9102"
}

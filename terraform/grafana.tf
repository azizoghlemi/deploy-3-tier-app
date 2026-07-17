provider "grafana" {
  url  = "http://localhost:3000"
  auth = var.grafana_api_token
}

resource "grafana_dashboard" "kubernetes" {
  config_json = file("${path.module}/dashboards/k8s-dashboard.json")
}
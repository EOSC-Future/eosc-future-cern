# Kubernetes Data Sources

data "kubernetes_secret_v1" "rucio_db_secret" {
  metadata {
    name = "rucio-server-cvre-rucio-db"
    namespace = "rucio"
  }
}

# Kubernetes Resources

# Namespaces

resource "kubernetes_namespace_v1" "ns_shared_services" {
  metadata {
    name = var.ns-shared-services
  }
}

resource "kubernetes_namespace_v1" "ns_rucio" {
  metadata {
    name = var.ns-rucio
  }
}

resource "kubernetes_namespace_v1" "ns_monitoring" {
  metadata {
    name = var.ns-monitoring
  }
}

/* resource "kubernetes_namespace_v1" "ns_jupyterhub" {
  metadata {
    name = var.ns-jupyterhub
  }
}

resource "kubernetes_namespace_v1" "ns_reana" {
  metadata {
    name = var.ns-reana
  }
} */

# Secrets (locally created and enrypted with kubeseal and then applied as a ready manifest)

/* resource "kubernetes_manifest" "<tbd>" {
  manifest = "${yamldecode(file("<tbd>.yaml"))}"
} */
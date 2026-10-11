resource "google_biglake_iceberg_catalog_iam_policy" "biglake_iceberg_catalog_iam_policies" {
  for_each = var.biglake_iceberg_catalog_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  project     = each.value.project
}


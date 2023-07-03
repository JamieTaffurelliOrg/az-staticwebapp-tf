resource "azurerm_static_site" "static_web_app" {
  name                = var.static_web_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_tier            = var.sku_tier
  sku_size            = var.sku_tier

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

resource "azurerm_static_site_custom_domain" "static_web_app_custom_domain" {
  for_each        = { for k in var.custom_domains : k.domain_name => k if k != null }
  domain_name     = each.key
  static_site_id  = azurerm_static_site.static_web_app.id
  validation_type = each.value["validation_type"]
}

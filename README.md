# az-staticwebapp-tf
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.20 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_static_site.static_web_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_site) | resource |
| [azurerm_static_site_custom_domain.static_web_app_custom_domain](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_site_custom_domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_domains"></a> [custom\_domains](#input\_custom\_domains) | Static Web App custom domains | <pre>list(object(<br>    {<br>      domain_name     = string<br>      validation_type = optional(string, "cname-delegation")<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the Static Web App | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group name to deploy to | `string` | n/a | yes |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | Specifies the SKU tier of the Static Web App. Possible values are Free or Standard | `string` | `"Free"` | no |
| <a name="input_static_web_app_name"></a> [static\_web\_app\_name](#input\_static\_web\_app\_name) | Name of the static web app | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

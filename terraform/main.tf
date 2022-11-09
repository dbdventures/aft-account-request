module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-sandbox@dbdventures.com"
    AccountName               = "sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "aws-sandbox@dbdventures.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Owner"       = "DBD Ventures"
    "Project"     = "DBD"
    "Environment" = "sandbox"
  }

  change_management_parameters = {
    change_requested_by = "vitalii.tutkievych@dataart.com"
    change_reason       = "Create sandbox account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

# terraform_dd_synthetics
- Remember to create a file called `terraform.tfvars` which will contain these three lines:
  - datadog_api_key = "your_api_key"
  - datadog_app_key = "your_app_key"
  - synthetic_location = "aws:us-east-2"
- The JSON file can be used to import into an account to create a dashboard that uses the monitors from the synthetics.

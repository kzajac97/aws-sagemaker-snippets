# Real Time Inference Endpoint

This example creates real time inference endpoint using AWS SageMaker, with terraform. It can be used to deploy certain
HuggingFace model from the hub, using the IaC approach. To run the example, `terraform` and AWS access are needed.

# Deploying

Run `terraform` apply to create the endpoint and deploy the model:

```bash
cd real_time_inference_endpoint/infra  # assuming running from repo root
terraform init
terraform plan -out plan.out
terraform apply plan.out
```

# Running

To invoke endpoint, AWS CLI can be used:

```bash
aws runtime.sagemaker invoke-endpoint --endpoint-name {{NAME}} --body "`cat payload.json`" --content-type "application/json" "response.out"
```

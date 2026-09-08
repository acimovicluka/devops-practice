# devops-practice

Random repo where I'm messing around with DevOps stuff, Docker, CI/CD, Kubernetes, Terraform, that kind of thing. Nothing fancy, just a way to actually practice instead of only reading about it.

Right now it's a small bash script (`sysinfo.sh`) that prints out the date, hostname and uptime of whatever machine it's running on. Wrapped it in Docker so it runs the same everywhere, hooked up a GitHub Actions workflow so it builds itself on every push, and there's a couple of Kubernetes YAML files in `k8s/` so I could try running it as both a Deployment and a Job (learned the hard way why those aren't the same thing).

To run it locally:
```bash
docker build -t sysinfo .
docker run sysinfo
```

Or on Kubernetes, as a Job:
```bash
kubectl apply -f k8s/job.yaml
kubectl get pods
```

There's also a `terraform-practice/` folder in here that doesn't really connect to the sysinfo stuff. Just where I messed around with Terraform for a bit, spun up an S3 bucket, then a Security Group and EC2 instance, tore it all down again with `terraform destroy`. Mostly wanted to see the whole init/plan/apply/destroy loop work end to end.


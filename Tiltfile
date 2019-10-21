# Deploy: tell Tilt what YAML to deploy
k8s_yaml('src/k8s/pod-god.yaml')

# Build: tell Tilt what images to build from which directories
docker_build('skaffold-example-god', '.')

# Watch: tell Tilt how to connect locally (optional)
k8s_resource('web', port_forwards=8080)
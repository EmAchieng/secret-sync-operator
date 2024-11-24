# Secret Synchronization Operator

## Purpose

Automatically syncs secrets stored in tools like SOPS or Git repositories with Kubernetes namespaces.

## Reason

Enhances GitOps workflows with secure secret management.

## Features

- Automatically synchronize secrets from a Git repository or SOPS-encrypted files to Kubernetes namespaces.
- Namespace-specific secret management.
- Integration with external secret management tools.
- Audit logging and monitoring.
- RBAC and access control.
- Secret rotation and expiry.
- Multi-cluster support.
- User-friendly CLI and dashboard.

## Installation

1. **Add the Helm repository**:
   ```sh
   helm repo add my-repo https://github.com/EmAchieng/secret-sync-operator.git
   ```

2.  **Install the chart**:
 ```sh
helm install my-secret-sync-operator my-repo/secret-sync-operator
```

## Configuration

The following table lists the configurable parameters of the Secret Synchronization Operator chart and their default values.

| Parameter          | Description                          | Default                        |
|--------------------|--------------------------------------|--------------------------------|
| `replicaCount`     | Number of replicas for the deployment| `1`                            |
| `image.repository` | Image repository                     | `my-repo/secret-sync-operator` |
| `image.tag`        | Image tag                            | `latest`                       |
| `image.pullPolicy` | Image pull policy                    | `IfNotPresent`                 |
| `resources`        | CPU/Memory resource requests/limits  | `{}`                           |
| `nodeSelector`     | Node labels for pod assignment       | `{}`                           |
| `tolerations`      | Tolerations for pod assignment       | `[]`                           |
| `affinity`         | Node affinity for pod assignment     | `{}`                           |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example:

```sh
helm install my-secret-sync-operator my-repo/secret-sync-operator --set replicaCount=2
```
Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example:

```sh
helm install my-secret-sync-operator my-repo/secret-sync-operator -f [values.yaml](http://_vscodecontentref_/0)

```

## Testing

To ensure the project works correctly, you can run the tests provided in the `tests` folder.

 3. **Run Tests Locally**:
   ```sh
   ./tests/test.sh
   ```
   
## Contributing
We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to contribute.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

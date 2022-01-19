# PackageCloud docker action

This action will push packages to PackageCloud using the package_cloud gem.

## Inputs

### `repo`

**Required** The repo to push to.

### `dir`

**Required** Directory where the packages are. All rpms and debs found here will be pushed.

### `rpmvers`

**Required** Space separated list of RPM based distro versions to push to. The distro version strings are as per [packagecloud](https://packagecloud.io/docs/api#resource_packages_method_versions)

A default value is supplied if no argument is provided.

### `debvers`

**Required** Space separated list of Debian based distro versions to push to. The distro version strings are as per [packagecloud](https://packagecloud.io/docs/api#resource_packages_method_versions)

A default value is supplied if no argument is provided.

## Outputs

### `rpmout`
Stdout from the command execution for rpm packages

### `debout`
Stdout from the command execution for deb packages

## Example usage

```yaml
uses: TykTechnologies/packagecloud-action
env:
  PACKAGECLOUD_TOKEN: ${{ secrets.PACKAGECLOUD_TOKEN }}
with:
  repo: 'tyk/tyk-sync-unstable'
  dir: 'dist'
```

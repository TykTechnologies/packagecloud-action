# PackageCloud docker action

This action will push packages to PackageCloud using the package_cloud gem.

## Inputs

### `repo`

**Required** The repo to push to.

### `dir`

**Required** Directory where the packages are. All rpms and debs found here will be pushed.

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

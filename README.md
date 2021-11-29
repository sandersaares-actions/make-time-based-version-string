Generates a useful version string of the form `yyyy.Mdd.s-commit`, with an optional branch prefix and build type suffix.

The version string is logically sortable but not alphanumerically sortable.

# Example workflow

```yaml
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    # First make the version string
    - id: make_version_string
      uses: sandersaares-actions/make-time-based-version-string@master
    # Then use the version string
    - uses: sandersaares-actions/expand-tokens@master
      env:
        versionstring: ${{ steps.make_version_string.outputs.VERSION_STRING }}
      with:
        path: src/Constants.cs
```
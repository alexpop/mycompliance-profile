# Example InSpec Profile

This example shows the use of InSpec profiles inheritance.

## Verify a profile

InSpec ships with built-in features to verify a profile structure.

```bash
$ inspec check myinheritance --profiles-path ~/git/compliance-profiles/
```

## Archive the profile
```bash
$ inspec archive myinheritence --overwrite --profiles-path ~/git/compliance-profiles/
```

## Execute the profile

```bash
$ inspec exec myinheritance --profiles-path ~/git/compliance-profiles/
```

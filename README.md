## Requirements

- bash
- fish
- pass
- gpg
- yq-go
- yajsv (optional, for schema validation)

## Editing the keyholders file

```
./pass.sh edit keyholders.yaml
```

## Teaching git to diff encrypted files:

```
git config --global diff.gpg.textconv "gpg --no-tty --decrypt"
```

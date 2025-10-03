## Requirements

either
- nix
or
- bash
- fish
- pass
- gpg
- yq-go
- yajsv (optional, for schema validation)
## Editing the keyholders file

```
nix run .#edit
```
or
```
./scrupts/edit.fish
```

## Uploading the keys to the remote

```
nix run .#upload
```
```
./scrupts/upload.fish
```

## Teaching git to diff encrypted files:

```
git config --global diff.gpg.textconv "gpg --no-tty --decrypt"
```

# Gem Wallet - Solana Mobile Publishing

```sh
pnpm install --frozen-lockfile

export DAPP_STORE_API_KEY=...
just create_app_release

# optional overrides
APK_FILE=/absolute/path/app-release.apk \
KEYPAIR=/absolute/path/keypair.json \
WHATS_NEW="Bug fixes" \
just create_app_release
```

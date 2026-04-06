# https://docs.solanamobile.com/dapp-store/publishing-cli

RPC_URL := "https://api.mainnet-beta.solana.com"
KEYPAIR := "solana-wallet/keypair.json"
APK_FILE := "files/app-release.apk"
WHATS_NEW := "New release."

install:
    pnpm install --frozen-lockfile

create_app_release:
    pnpm exec dapp-store --api-key-env DAPP_STORE_API_KEY --apk-file "${APK_FILE:-{{APK_FILE}}}" --whats-new "${WHATS_NEW:-{{WHATS_NEW}}}" --keypair "${KEYPAIR:-{{KEYPAIR}}}" --rpc-url "${RPC_URL:-{{RPC_URL}}}"

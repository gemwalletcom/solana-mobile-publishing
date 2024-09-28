# https://docs.solanamobile.com/dapp-publishing/publishing_releases

NODE_URL := "solana config set --url https://api.mainnet-beta.solana.com"
KEYPAIR := "solana-wallet/keypair.json"
SDK_PATH := "~/Library/Android/sdk/build-tools/34.0.0"

validate:
    npx dapp-store validate -k {{KEYPAIR}} -b {{SDK_PATH}}

publish:
    npx dapp-store publish -k {{KEYPAIR}} -b {{SDK_PATH}}

create_publisher:
    npx dapp-store create publisher -k {{KEYPAIR}} -u {{NODE_URL}}

create_app:
    npx dapp-store create app -k {{KEYPAIR}} -u {{NODE_URL}}

create_app_release:
    npx dapp-store create release -k {{KEYPAIR}} -b {{SDK_PATH}} -u {{NODE_URL}}

publish_app_release:
    npx dapp-store publish submit -k {{KEYPAIR}} -u {{NODE_URL}} --requestor-is-authorized --complies-with-solana-dapp-store-policies

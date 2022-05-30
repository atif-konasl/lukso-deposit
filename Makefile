create-deposit:
	./bin/eth2-val-tools deposit-data \
	--fork-version=0x60000069 \
	--source-max=5 \
	--source-min=0 \
	--validators-mnemonic="rude swarm educate under toddler stay athlete bubble also swing unveil gas cube stairs broken shaft fit satisfy real carbon melt awful mountain noodle" \
	--withdrawals-mnemonic="rude swarm educate under toddler stay athlete bubble also swing unveil gas cube stairs broken shaft fit satisfy real carbon melt awful mountain noodle"

eth2-generate-genesis:
	./bin/eth2-testnet-genesis phase0 \
	--config ./configs/config.yaml  \
	--mnemonics ./configs/genesis_mnemonics.yaml  \
	--state-output ./configs/genesis.ssz \
	--tranches-dir  ./configs/tranches \
	--eth1-block 0x1f13accd12bc20416a6554cef3fcfd618d94a4064dead6c8a77abfa84890e417

create-genesis-wallets:
	./bin/eth2-val-tools keystores \
	--insecure \
    --out-loc ./keystores \
    --prysm-pass "jasdn120agdaxTYBsd%a" \
    --source-max 32 \
    --source-min 0 \
    --source-mnemonic "educate spy brick flight today awesome eternal buffalo three trigger deal smile ladder genuine ahead buffalo poet time power reunion slow tape breeze high"

start-node:
	docker-compose up -d init-geth geth prysm_beacon eth2stats-client

start-validator:
	docker-compose up -d prysm_validator

stop:
	docker-compose down

create-deposit-wallets:
	./bin/eth2-val-tools keystores \
	--insecure \
    --out-loc ./keystores \
    --prysm-pass "jasdn120agdaxTYBsd%a" \
    --source-max 5 \
    --source-min 0 \
    --source-mnemonic "rude swarm educate under toddler stay athlete bubble also swing unveil gas cube stairs broken shaft fit satisfy real carbon melt awful mountain noodle"
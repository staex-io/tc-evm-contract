format:
	forge fmt

build: format
	forge build

.PHONY: test
test: format
	forge test --gas-report --summary --detailed -vvvv

coverage: test
	forge coverage --report summary

deploy:
	PRIVATE_KEY=$(pk) \
		forge script script/TrustedChain.s.sol:TrustedChainScript \
		--fork-url $(url) --broadcast -vvvv

verify:
	forge verify-contract $(contract) -vvvv \
		--watch \
		-r $(url)

local:
	PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 \
		forge script script/TrustedChain.s.sol:TrustedChainScript \
		--fork-url 127.0.0.1:8545 --broadcast -vvvv

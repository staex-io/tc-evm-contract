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

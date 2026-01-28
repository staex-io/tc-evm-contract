lint:
	@docker run -it --rm -v "${PWD}:/app" -w /app tc-evm-analysis sh -c 'ruff format /app/main.py && ruff check /app/main.py'

build:
	docker build -t tc-evm-analysis -f Dockerfile .

fetch:
	@docker run -it --rm -v "${PWD}:/app" -w /app tc-evm-analysis \
		sh -c 'python3 main.py fetch --csv-path transactions.csv'

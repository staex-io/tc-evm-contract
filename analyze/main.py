import plac


@plac.pos("command", "Command to run", choices=["fetch"])
@plac.opt(
    "csv_path",
    help="Path to the CSV file",
)
def main(command: str, csv_path: str):
    match command:
        case "fetch":
            fetch(csv_path)


def fetch(csv_path: str):
    print(f"{csv_path}")


if __name__ == "__main__":
    plac.call(main)

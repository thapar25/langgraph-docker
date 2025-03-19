# Multi-Agents

## Setup

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd multi-agents
   ```

2. Ensure you have Python installed (version >= 3.12.4, < 3.14).

3. Install Poetry:
   ```bash
   pip install poetry
   ```

4. Configure Poetry to create the virtual environment inside the project directory:
   ```bash
   poetry config virtualenvs.in-project true
   ```

5. Install dependencies:
   ```bash
   poetry install
   ```

6. Run the application:
   ```bash
   poetry run <your-command>
   ```

## Code Linting

1. Run `flake8` to check for style guide enforcement:
   ```bash
   poetry run flake8
   ```

2. Format the code using `black`:
   ```bash
   poetry run black .
   ```

## Generating requirements

```bash
poetry self add poetry-plugin-export
poetry export --without-hashes --format=requirements.txt > requirements.txt
```

## Generating Dockerfile

```bash
langgraph dockerfile "Dockerfile"
```
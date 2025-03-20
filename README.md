# Multi-Agents

## Setup

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```

2. Ensure you have Python installed (version >= 3.12.4, < 3.14) and are in the root folder with **pyproject.toml** file.

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

## Docker
<!-- 
```bash
docker build --pull --rm -f "Dockerfile" -t "langgraphdocker:latest" "." 
```
-->

```bash
docker compose up
```

## To-DO
 
- pyproject.toml in langgraph.json dependencies
- streamlit st.write()
- ollama error
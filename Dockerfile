FROM langchain/langgraph-api:3.12



RUN PYTHONDONTWRITEBYTECODE=1 pip install --no-cache-dir -c /api/constraints.txt langgraph langchain-ollama langgraph-cli[inmem] langchain langchain-openai

# -- Adding non-package dependency agents --
ADD ./agents/ /deps/__outer_agents/agents
RUN set -ex && \
    for line in '[project]' \
                'name = "agents"' \
                'version = "0.1"' \
                '[tool.setuptools.package-data]' \
                '"*" = ["**/*"]'; do \
        echo "$line" >> /deps/__outer_agents/pyproject.toml; \
    done
# -- End of non-package dependency agents --

# -- Installing all local dependencies --
RUN PYTHONDONTWRITEBYTECODE=1 pip install --no-cache-dir -c /api/constraints.txt -e /deps/*
# -- End of local dependencies install --
ENV LANGSERVE_GRAPHS='{"simple-agent": "/deps/__outer_agents/agents/simple_agent.py:agent"}'


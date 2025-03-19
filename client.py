import asyncio
from langgraph_sdk import get_client

client = get_client(url="http://localhost:8123")


async def stream_messages():
    async for chunk in client.runs.stream(
        None,
        "simple-agent",
        input={"messages": [{"role": "human", "content": "Hi, who are you?"}]},
        stream_mode="events",
    ):
        content = chunk.data.get("data", {}).get("chunk", {}).get("content")
        if content:
            print(content, end="", flush=True)


if __name__ == "__main__":
    asyncio.run(stream_messages())

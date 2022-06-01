import uvicorn
from fastapi import FastAPI

app = FastAPI()


@app.get("/hello")
def home():
    return {"name": "First Data"}


if __name__ == '__main__':
    uvicorn.run(app, port=8080)

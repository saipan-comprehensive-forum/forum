from fastapi import FastAPI
from api.routes.api_thread import threadRouter
from api.routes.api_post import postRouter

app = FastAPI()
@app.get('/', tags=["Hello"])
def root():
    return {"welcome": "forum"} 
app.include_router(threadRouter)
app.include_router(postRouter)
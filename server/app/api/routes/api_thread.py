from fastapi import APIRouter
threadRouter = APIRouter(
    prefix='/thread'
) 

mockThreadTable = [
    {
        "ThreadID": 1,
        "CategoryID": 1,
        "UserID": 1,
        "Title": "thread3"
    },
    {
        "ThreadID": 2,
        "CategoryID": 2,
        "UserID": 1,
        "Title": "thread3"
    },
        {
        "ThreadID": 3,
        "CategoryID": 3,
        "UserID": 1,
        "Title": "thread3"
    }
]

@threadRouter.get('/allThread', tags=["thread"])
async def get_all_thread():
    return mockThreadTable

@threadRouter.get('/a', tags=["thread"])
async def get_all_thread():
    # your code here
    return {"data": "sample data"}
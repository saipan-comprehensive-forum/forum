from fastapi import APIRouter
postRouter = APIRouter(
    prefix='/post'
) 

@postRouter.get('/getAllPosts', tags=["post"])
async def get_all_thread():
    return {"data": "allPosts"}

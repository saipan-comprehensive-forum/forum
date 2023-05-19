# Install Dependencies 
`pip install -r requirements.txt`
- **fastapi:** The FastAPI framework itself.
- **uvicorn and gunicorn:** These are ASGI servers that you can use to serve your FastAPI application. Uvicorn is typically used for development and Gunicorn for production.
- **pydantic:** Used for data validation and settings management using Python type annotations.
- **sqlalchemy:** The Python SQL toolkit and Object-Relational Mapping (ORM) library for Python that provides full SQL language functionality.
- **async-exit-stack and async-generator:** Utilities for working with async and await.
- **aiofiles:** Used for reading and writing files asynchronously.
- **python-multipart:** For parsing multipart/form-data, which is used in form parsing.
- **python-dotenv:** Reads from .env file and adds them to environment variable. It helps in setting up configurable application settings.
- **psycopg2-binary:** PostgreSQL adapter for Python. This is only needed if you are using PostgreSQL as your database.


https://www.youtube.com/watch?v=0_seNFCtglk

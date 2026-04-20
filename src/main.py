from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Windows dev works!", "os": os.name}
    @app.get("/metrics")
def metrics():
    import subprocess
    commits = subprocess.check_output(["git", "rev-list", "--count", "HEAD"]).decode().strip()
    return {"total_commits": commits}

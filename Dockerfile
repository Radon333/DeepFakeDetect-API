FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
COPY app.py app.py
COPY requirements.txt .
RUN pip --no-cache-dir install -r requirements.txt
CMD ["uvicorn", "--host", "0.0.0.0", "--port", "80", "app:app"]

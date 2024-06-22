FROM python:3.6-slim

COPY . /sabana

WORKDIR /sabana

RUN pip install --no-cache-dir -r requirements.txt

# Run the command to start the server
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
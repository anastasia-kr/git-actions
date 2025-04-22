FROM python:latest
WORKDIR /python-app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN python db.py -a
CMD ["python", "app.py", "--host", "localhost", "--port", "5000"]
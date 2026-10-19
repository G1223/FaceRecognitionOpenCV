FROM python:3.11-slim

WORKDIR /face

COPY requirements.txt .
RUN pip install flet -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "face.py"]
FROM python:3.8.12-slim
RUN /usr/local/bin/python -m pip install --upgrade pip
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8501
COPY . .
ENTRYPOINT ["streamlit", "run"]
CMD ["stream_app.py"]
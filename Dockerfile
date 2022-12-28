FROM python:3.7
COPY . /stock
WORKDIR /stock
RUN pip install -r requirements.txt
EXPOSE 8501
ENTRYPOINT [ "streamlit","run"]
CMD ["stock.py"]

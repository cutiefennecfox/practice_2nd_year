FROM python:bullseye
COPY requirements.txt ./
COPY Sergushina_d1.ipynb ./
RUN pip install -r requirements.txt
RUN jupyter-nbconvert --execute Sergushina_d1.ipynb --to html 

FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt


# Expose port 80
EXPOSE 80


## Step 5: run app.py when container launches
CMD ["python", "app.py"] 


FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /project

# Copy source code to working directory
COPY . app.py /project/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]


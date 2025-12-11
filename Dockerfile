FROM python:3.10-slim

LABEL maintainer="STAT315 Final Project - Spotify Analysis"

RUN apt-get update && apt-get install -y \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the rest of project
COPY . .

# Install python dependencies
RUN pip install --no-cache-dir \
    pandas==2.2.2 \
    numpy==1.26.4 \
    matplotlib==3.8.4 \
    seaborn==0.13.2 \
    scikit-learn==1.4.2 \
    scipy==1.12.0 \
    notebook==7.0.6

EXPOSE 8888

# Start the jupyter notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

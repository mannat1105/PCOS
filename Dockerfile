# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all local files into the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir \
    pandas \
    numpy \
    scikit-learn \
    matplotlib \
    jupyterlab \
    notebook

# Run Jupyter when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]

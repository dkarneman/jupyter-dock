FROM python:3.12

# Set the working directory
WORKDIR /src

# Copy the files to the working directory
COPY ./requirements.txt requirements.txt

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# # Expose the notebook port
EXPOSE 8888

# # Start the IPython notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

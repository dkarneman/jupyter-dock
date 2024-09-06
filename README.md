# jupyter-dock

jupyter-dock is a simple framework to easily set up and manage Jupyter notebooks, ensuring consistency across different machines and environments.

## Features

- **Easy setup**: jupyter-dock simplifies the process of setting up a Jupyter environment by leveraging Docker Compose. You can define your desired configuration (like Python version and favorite libraries) and quickly spin up your Jupyter notebook server.

- **Isolated environments**: You can create isolated environments for your Jupyter notebooks. Each environment can have its own set of dependencies, ensuring reproducibility and eliminating conflicts between different projects.

- **Version control**: You can easily version control your Jupyter notebooks along with their dependencies. This allows for better collaboration and ensures that your notebooks can be easily reproduced in the future.

- **Scalability**: jupyter-dock allows you to scale your Jupyter environment effortlessly. You can easily add or remove resources based on your needs, ensuring optimal performance for your notebooks.

## Getting Started

To get started, follow these steps:

1. Install Docker and Docker Compose on your machine if you haven't already.

2. Clone the jupyter-dock repository to your local machine.

    ```
    git clone git@github.com:dkarneman/jupyter-dock.git
    ```

3. Navigate to the repository directory and open the `Dockerfile` and `requirements.txt`.

4. Customize the configuration according to your needs. You can specify the Python version, Jupyter notebook version, additional packages, and other settings.

5. Run the following commands to build and then start the Jupyter notebook server:

    ```
    docker-compose build
    docker-compose up
    ```

6. The terminal output will include links with tokens like this: `http://127.0.0.1:8888/tree?token=691e017ddd1115fd16b5125f62e3947630ed50cc5d11b23e`. Simply click one to open the Juptyer notebook in a browser.

7. You are now ready to create and run Jupyter notebooks using jupyter-dock! The `work` folder in the repository directory is mounted as a volume in the Jupyter notebook server, allowing you to access and save files to a local directory.

8. To stop the Jupyter notebook server, press `Ctrl+C` in the terminal where you started the server. Optionally, you can run `docker-compose down` to stop and remove the containers. This is useful if you initially ran `docker-compose up` with the `-d` detached flag.

I've included a sample notebook examining some home electricity data in the `work` folder. Feel free to explore it and experiment with your own notebooks!

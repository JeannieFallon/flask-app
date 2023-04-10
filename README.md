# flask-app
Demo web app for Kubernetes deployment, using Flask and MySQL database.

Source: [Docker Python sample application](https://docs.docker.com/language/python/)


## Procedure
1. Build Docker image for web app:
    ```
    make image
    ```
2. Add volumes and network to connect web app container to MySQL container:
    ```
    docker volume create mysql
    docker volume create mysql_config
    docker network create mysqlnet
    ```
3. Run MySQL container (will pull image from Docker registry):
    ```
    make db
    ```
4. Run web app container:
    ```
    make run
    ```
5. Confirm database has been initialized. The call to `/widgets` should return an empty JSON `[]`:

    ```
    curl http://localhost:8000/initdb
    curl http://localhost:8000/widgets
    ```

### TODO
[Kubernetes deployment](https://docs.docker.com/language/python/deploy/#kubernetes)

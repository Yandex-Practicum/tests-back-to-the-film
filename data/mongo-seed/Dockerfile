FROM mongo:latest

COPY mongodb_initial_stub.json /mongodb_initial_stub.json

CMD ["mongoimport", "--host", "mongodb:27017", "--db", "practicum", "--collection", "films", "--type", "json", "--file", "/mongodb_initial_stub.json", "--jsonArray"]

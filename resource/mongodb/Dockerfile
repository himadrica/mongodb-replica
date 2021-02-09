FROM mongo

# Workdir config directory
COPY mongo.config .

EXPOSE 27017

CMD ["--config", "./mongo.conf"]
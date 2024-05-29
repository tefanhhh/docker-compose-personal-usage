# Use an image that includes envsubst, such as the alpine image
FROM mongo:latest

# Install envsubst (part of gettext)
RUN apt-get update && apt-get install -y gettext-base

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Copy the template script
COPY mongo-init-template.js /mongo-init-template.js

# Ensure the entrypoint script is executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint to our custom script
ENTRYPOINT ["/entrypoint.sh"]

# Use the default command for MongoDB
CMD ["mongod"]

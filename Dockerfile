FROM node:18-bullseye-slim

# Install n8n at a known stable version
RUN npm install -g n8n@1.40.0

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE="Asia/Dubai"
ENV TZ="Asia/Dubai"

WORKDIR /home/node

EXPOSE 5678

CMD ["n8n", "start"]

FROM node:18-alpine

# Install n8n globally
RUN npm install -g n8n

# Set environment variables
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE="Asia/Dubai"
ENV TZ="Asia/Dubai"

WORKDIR /home/node

EXPOSE 5678

CMD ["n8n", "start"]

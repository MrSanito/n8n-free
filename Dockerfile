# Use the official n8n image
FROM n8nio/n8n:latest

# Set default environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=strongpassword
ENV EXECUTIONS_PROCESS=main
ENV DB_TYPE=sqlite
ENV DB_SQLITE_FILE=/data/database.sqlite

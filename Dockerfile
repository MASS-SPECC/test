# Use an official lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx HTML
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website into the container
COPY . /usr/share/nginx/html

# Expose port 80 (optional but recommended)
EXPOSE 80

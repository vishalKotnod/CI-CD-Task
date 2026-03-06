# Step 1: Use Nginx as base image
FROM nginx:alpine

# Step 2: Remove default HTML files
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your website files into Nginx directory
COPY . /usr/share/nginx/html

# Step 4: Expose port
EXPOSE 80

# Step 5: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
# Use the Ruby 2.7 image as the base image
FROM ruby:3.0

# Set the working directory to /app
WORKDIR /app

# Copy the Ruby file (app.rb) to the working directory
COPY app.rb /app/app.rb

# Set the entry point to run the Ruby script
ENTRYPOINT ["ruby", "app.rb"]

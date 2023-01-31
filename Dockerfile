# Use an official Ruby image as the base image
FROM ruby:3.0

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install the required gems
RUN bundle install

# Copy the rest of the project files to the container
COPY . .

# Expose the default Rails server port
EXPOSE 3000

# Set the command to run the rails server when the container starts
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

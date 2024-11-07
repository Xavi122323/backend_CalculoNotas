# Use the official Ruby image as the base
FROM ruby:3.2.2

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the necessary dependencies
RUN gem install bundler && bundle install

# Copy the rest of the application code
COPY . .

# Define the command to run your application or tests
CMD ["bundle", "exec", "rake", "test"]

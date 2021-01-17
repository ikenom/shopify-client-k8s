FROM ruby:2.7.1
WORKDIR /ikenom-app
COPY Gemfile /ikenom-app/Gemfile
COPY Gemfile.lock /ikenom-app/Gemfile.lock
RUN bundle install
COPY . /ikenom-app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
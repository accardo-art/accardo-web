FROM derrysmith/circle-jekyll:latest AS compile

# copy source files
COPY . ./

# install ruby dependencies
RUN bundle check --gemfile=./src/Gemfile || bundle install --gemfile=./src/Gemfile
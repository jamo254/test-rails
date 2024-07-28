# setup phase
ENV NIXPACKS_PATH $HOME/.rbenv/bin:$NIXPACKS_PATH

# install rbenv and ruby
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash -s stable
RUN echo 'eval "$(~/.rbenv/bin/rbenv init -)"' >> /root/.bashrc
RUN source /root/.bashrc
RUN rbenv install 3.1.2
RUN rbenv global 3.1.2

# install bundler
RUN gem install bundler:2.5.1
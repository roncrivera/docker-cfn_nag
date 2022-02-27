FROM ruby:2.7-alpine

WORKDIR /root/
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

# an explicitly blank version appears to grab latest
# override here for a real build process
ARG version=''

RUN gem install cfn-nag --version "$version"

ENTRYPOINT [ "/root/entrypoint.sh" ]

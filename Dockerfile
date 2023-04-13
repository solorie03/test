FROM ubuntu:latest
RUN apt update && apt install wget gut curl -y
RUN TOKEN="66f1c06c51eddb4af8988fb1c0ac9f6d2e57491d93f35a53bf" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
RUN ~/.buildkite-agent/bin/buildkite-agent start

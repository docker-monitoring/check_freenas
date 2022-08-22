FROM ubuntu

RUN apt-get update && \
    apt-get -y install \
        curl \
    	ruby && \
    rm -rf /var/lib/apt/lists/* && \
    curl https://gitlab.com/6uellerBpanda/check_freenas/-/raw/master/check_freenas.rb -o /check_freenas.rb && \
    chmod +x /check_freenas.rb && \
    gem install net-ssh

ENTRYPOINT ["check_freenas.rb"]

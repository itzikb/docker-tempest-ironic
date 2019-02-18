FROM itzikb/docker-tempest
RUN cd /home/centos/tempest-upstream && source bin/activate \
    && git clone https://github.com/openstack/ironic-tempest-plugin.git \
    && cd ironic-tempest-plugin && pip install -e . \
    && pip install -r test-requirements.txt
    
WORKDIR /home/centos/tempest-upstream/tempest
CMD ['/bin/bash']

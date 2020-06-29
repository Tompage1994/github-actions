FROM docker:19.03.2

LABEL version="1.0.0"
LABEL repository="http://github.com/redhat-cop/github-actions"
LABEL homepage="http://github.com/redhat-cop/github-actions/awx"
LABEL maintainer="Red Hat CoP"
LABEL "com.github.actions.name"="awx build"
LABEL "com.github.actions.description"="Run integration tests using Ansible AWX"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="purple"


RUN yum install python38 && \
    git clone https://github.com/ansible/awx.git && \
    pip install ansible docker docker-compose && \
    cd awx/installer && \
    ansible-playbook -i inventory install.yml -e create_preload_data=false

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
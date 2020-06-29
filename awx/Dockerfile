FROM docker:19.03.2

LABEL version="1.0.0"
LABEL repository="http://github.com/redhat-cop/github-actions"
LABEL homepage="http://github.com/redhat-cop/github-actions/awx"
LABEL maintainer="Red Hat CoP"
LABEL "com.github.actions.name"="awx build"
LABEL "com.github.actions.description"="Run integration tests using Ansible AWX"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="purple"

RUN apk add --update --no-cache python3 git py3-pip gcc python3-dev libressl-dev musl-dev libffi-dev && \
    git clone https://github.com/ansible/awx.git

RUN pip3 install ansible docker docker-compose

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
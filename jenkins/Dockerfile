# Image Jenkins container (LTS) with Docker plugins
# FROM jenkins/jenkins:lts-jdk11
# RUN jenkins-plugin-cli --plugins "docker-plugin:1.5 docker-commons:439.va_3cb_0a_6a_fb_29 docker-workflow:572.v950f58993843"

# docker image build -t jenkins-with-docker-plugins:1.0.0 .


# FROM jenkins-with-docker-plugins:1.0.0
# USER root
# RUN apt-get update -qq \
#     && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common
# RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
# RUN add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/debian \
#    $(lsb_release -cs) \
#    stable"
# RUN apt-get update  -qq \
#     && apt-get -y install docker-ce
# RUN usermod -aG docker jenkins

# docker image build -t jenkins-with-docker:1.0.0 .
# 
# docker run -it -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home jenkins-with-docker:1.0.0 

# Set plugin config to allow to pull a local repository
# hudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT = true

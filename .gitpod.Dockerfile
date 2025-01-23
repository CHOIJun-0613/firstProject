FROM gitpod/workspace-full:latest

USER gitpod

RUN sudo ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 23-open && \
    sdk default java 23-open"
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install gradle 8.12 && \
    sdk default gradle 8.12"
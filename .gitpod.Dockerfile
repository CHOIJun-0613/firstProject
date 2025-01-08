FROM gitpod/workspace-full:latest

# 설치하고자 하는  Java 및 Gradle 버전 설정
RUN curl -s "https://get.sdkman.io" | bash && source "$HOME/.sdkman/bin/sdkman-init.sh" \
 && sdk install java 23-open \
 && sdk install gradle 8.11.1 \
 && sdk default java 23-open \
 && sdk default gradle 8.11.1

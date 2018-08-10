register runner

docker run --rm -t -i -v /data/webserver/gitlab-runner/conf:/etc/gitlab-runner --name gitlab-runner gitlab/gitlab-runner:alpine register
 
docker run --rm -t -i -v /data/webserver/gitlab-runner/conf:/etc/gitlab-runner --name gitlab-runner gitlab/gitlab-runner:alpine register \
--non-interactive \
--url "http://192.168.50.128:8000" \
--registration-token "1wzVJqg8fui-ssPGb2T4" \
--executor "docker" \
--docker-image alpine:latest \
--description "docker-runner" \
--tag-list "docker,shared" \
--run-untagged \
--locked="false" 

gitlab-runner register \
--non-interactive \
--url "http://192.168.50.128:8000" \
--registration-token "1wzVJqg8fui-ssPGb2T4" \
--executor "docker" \
--docker-image alpine:latest \
--description "docker-runner" \
--tag-list "docker,shared" \
--run-untagged \
--locked="false" 

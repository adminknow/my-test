# Vue 3 + Vite

This template should help get you started developing with Vue 3 in Vite. The template uses Vue 3 `<script setup>` SFCs, check out the [script setup docs](https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup) to learn more.

Learn more about IDE Support for Vue in the [Vue Docs Scaling up Guide](https://vuejs.org/guide/scaling-up/tooling.html#ide-support).


本地docker pull到 docker hub步骤（选用香港节点）
docker build -t vue3-nginx-prod .
docker build --platform linux/amd64 -t vue3-nginx-test:latest .


docker buildx build --platform linux/amd64,linux/arm64 -t <用户>/<镜像>:latest --push .

docker tag vue3-nginx-prod:latest liujiaweilove7/vue3-nginx-prod:latest
docker tag vue3-nginx-prod:latest liujiaweilove7/vue3-nginx-test:latest

docker push liujiaweilove7/vue3-nginx-prod:latest
docker push liujiaweilove7/vue3-nginx-test:latest


docker run -d -p 8080:80 --name my-test-app1 vue3-nginx-test:latest 

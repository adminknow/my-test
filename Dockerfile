## 构建阶段：在 Node 环境中打包 Vite 项目
FROM node:20-alpine AS build

WORKDIR /app

# 仅复制依赖声明，利用 Docker 缓存
COPY package*.json ./

RUN npm install

# 复制源码和配置，执行构建
COPY . .

RUN npm run build

## 运行阶段：使用 Nginx 提供 dist 静态资源
FROM nginx:1.27-alpine

# 将打包后的静态文件复制到 Nginx 默认目录
COPY --from=build /app/dist /usr/share/nginx/html

# 使用自定义 Nginx 配置（支持前端路由）
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
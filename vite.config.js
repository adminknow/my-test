import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";

// https://vite.dev/config/
export default defineConfig({
  publicPath: "./", // 或者 '/my-app/'，取决于你的部署路径。相对路径 './' 通常最安全
  plugins: [vue()],
});

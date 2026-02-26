<template>
  <div class="app-container">
    <el-card class="box-card">
      <template #header>
        <div class="card-header">
          <span>Vue 3 + Element Plus 示例</span>
        </div>
      </template>
      <div class="card-content">
        <el-button type="primary" @click="handleClick">点击按钮</el-button>
        <el-input v-model="inputValue" placeholder="请输入内容" style="margin-left: 20px;"></el-input>
        <div class="message" v-if="message">
          {{ message }}
        </div>
      </div>
    </el-card>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const message = ref('')
const inputValue = ref('')

const handleClick = () => {
  message.value = inputValue.value || 'Hello Vue 3 + Element Plus!'
}
</script>

<style scoped>
.app-container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background-color: #f5f7fa;
}

.box-card {
  width: 500px;
}

.card-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.card-content {
  margin-top: 20px;
}

.message {
  margin-top: 20px;
  padding: 10px;
  background-color: #ecf5ff;
  border: 1px solid #d9ecff;
  border-radius: 4px;
  color: #409eff;
}
</style>
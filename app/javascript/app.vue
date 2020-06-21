<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import PostIndexPage from 'PostIndexPage.vue'
import PostDetailPage from 'PostDetailPage.vue'
import PostNewPage from 'PostNewPage.vue'

const router = new VueRouter({
  mode: 'history',
  routes: [
    { path: '/',
      component: PostIndexPage  },
    { path: '/posts/:id(\\d+)',  // :id は数値のみに制限する
      name: 'PostDetailPage', 
      component: PostDetailPage  },
    { path: '/posts/new',
      name: 'PostNewPage',
      component: PostNewPage    }
  ]
})

Vue.use(VueRouter)

export default {
  router
}
</script>

<style scoped>
</style>
<template>
  <form @submit.prevent="createPost">
    <div v-if="errors.length != 0">
      <ul v-for="e in errors" :key="e">
        <li><font color="red">{{ e }}</font></li>
      </ul>
    </div>
    <div>
      <label>title</label>
      <input v-model="post.title" type="text">
    </div>
    <div>
      <label>content</label>
      <input v-model="post.content" type="text">
    </div>
    <button type="submit">Commit</button>
  </form>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      post: {
        id: '',
        title: '',
        content: ''
      },
      errors: ''
    }
  },
  methods: {
    createPost: function() {
      axios
        .post('/api/v1/papis', this.post)
        .then(response => {
          let e = response.data;
          this.$router.push({ name: 'PostDetailPage', params: { id: e.id } });
        })
        .catch(error => {
          console.error(error);
          if (error.response.data && error.response.data.errors) {
            this.errors = error.response.data.errors;
          }
        });
    }
  }
}
</script>

<style scoped>
</style>
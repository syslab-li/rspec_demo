<template>
  <div id="app">
    <table>
      <tbody>
        <tr>
          <th>ID</th>
          <th>title</th>
          <th>content</th>
        </tr>
        <tr v-for="e in posts" :key="e.id">
          <td>{{ e.id }}</td>
          <td>{{ e.title }}</td>
          <td>{{ e.content }}</td>
          <td><router-link :to="{ name: 'PostDetailPage', params: { id: e.id } }">{{ e.id }}</router-link></td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      posts: []
    }
  },
  mounted () {
    axios
      .get('/api/v1/papis.json')
      .then(response => (this.posts = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
<template>
  <dl>
    <dt>ID</dt>
    <dd>{{ post.id }}</dd>
    <dt><title></title></dt>
    <dd>{{ post.title }}</dd>
    <dt>content</dt>
    <dd>{{ post.content }}</dd>
  </dl>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      post: {}
    }
  },
  mounted () {
    axios
      .get(`/api/v1/papis/${this.$route.params.id}.json`)
      .then(response => (this.post = response.data))
  }
}
</script>

<style scoped>
</style>
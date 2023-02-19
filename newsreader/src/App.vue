<script setup>
import RsueLogo from './components/rsue_logo.vue'
import NewsGrid from './components/news_grid.vue'
import CreateMenu from './components/create_menu.vue'
import Pagination from './components/pagination.vue'
</script>

<template>
  <RsueLogo />
  <CreateMenu @addArticle="addArticle" />
  <NewsGrid :articles="pages[currentPage]" />
  <Pagination @toPage="toPage" :currentPage="currentPage" :count="pages.length" />
</template>

<script>
import axios from "axios"
import { ref, reactive, computed } from 'vue';

export default {
  mounted() {
    this.fetchArticles();
  },
  data() {
    return {
      currentPage: 0,
      items: [],
    }
  },
  computed: {
    pages() {
      var pages = [];
      for (var i = 0; i < this.items.length; i += 6) {
        pages.push(this.items.slice(i, i + 6));
      }
      return pages;
    }
  },
  methods: {
    addArticle(title, body) {
      this.items.push({title: title, body: body});
    },
    toPage(id) {
      if ((id <= this.pages.length - 1) && (id >= 0)) {
        this.currentPage = id;
      }
    },
    fetchArticles() {
      axios.get("https://jsonplaceholder.typicode.com/posts?_limit=20").then((response) => {
        this.items.push(...response.data);
      })
    }
  }
}
</script>

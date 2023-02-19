<template>
    <section class="menu flex gap-8 flex-wrap my-12">
        <input type="text"  v-model="title"  class="menu__element" placeholder="Введите Название статьи">
        <input type="text"  v-model="body" class="menu__element" placeholder="Введите Основной текст">
        <button @click="addArticle" class="menu__element menu__element__blue">Добавить новую статью</button>
    </section>
</template>
<script>
export default {
  data(){
    return {
      title: "",
      body: ""
    }
  },
  methods: {
    addArticle(){
      this.$emit('addArticle', this.title, this.body);
      this.title = '';
      this.body = '';
    }
  }
}
</script>
<style>
.menu__element {
  @apply w-full lg:flex-1 rounded-md px-3 py-5 text-xl block text-black min-w-max
}

.menu__element__blue {
  background: #5B98E3;
  @apply text-white
}

.menu__element__blue:hover {
  background: #528ace;
}

.menu__element__blue:active {
  background: #5086c9;
}
</style>
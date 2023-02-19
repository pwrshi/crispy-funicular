<script setup>
import Article from './article.vue'
</script>
<template>
    <section class="my-12">
        <h1 class="text-white text-3xl font-bold">Статьи</h1>
        <div class="grid lg:grid-cols-3 grid-cols-1 gap-8 mt-7">
            <Article v-for="id in articles" :text="id.body" :title="id.title" />
        </div>
    </section>
</template>

<script>
export default {
    props: ['articles']
} </script>
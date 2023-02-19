<template>
    <div class="article">
        <h3 class="article__title">
            {{ title }}
        </h3>
        <p class="article__text">{{ text }}</p>
    </div>
</template>
<script>
    export default {
        props: ['title', 'text']
    }
</script>
<style>
.article {
    @apply py-7 px-3 bg-white rounded-lg h-56
}
.article__title {
    @apply text-base text-black
}
.article__text {
    @apply text-sm text-gray-500 mt-3
}
</style>
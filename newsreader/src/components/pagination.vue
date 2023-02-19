<template>
    <section class="my-12">
        <button class="page-button" @click="decrement">{{ "<<" }}</button>
                <button v-for="id in count" @click="$emit('toPage', id - 1)"
                    :class="(currentPage == (id - 1) ? 'page-button__selected' : '') + ' page-button'">{{ id }}</button>
                <button class="page-button" @click="increment">{{ ">>" }}</button>
    </section>
</template>
<script>

export default {
    props: ['currentPage', 'count'],
    methods: {
        increment() {
            if (this.currentPage < this.count - 1) {
                this.$emit('toPage', this.currentPage+1);
            }
        },
        decrement() {
            if (this.currentPage > 0) {
                this.$emit('toPage', this.currentPage-1);
            }
        },
    }
}
</script>
<style>
.page-button {
    background: #B0B4FF;
    @apply w-8 h-9 rounded-md text-black mr-1
}

.page-button__selected {
    background: white;
}
</style>
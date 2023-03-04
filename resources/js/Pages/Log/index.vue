<template>
    <div>
        <pre>{{ logs }}</pre>
    </div>
</template>

<script lang="ts" setup>

defineProps({
    logs: {
        type: Object,
        default: {},
    },
});
</script>

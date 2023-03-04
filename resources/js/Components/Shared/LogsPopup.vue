<template>
    <transition>
        <div
            v-if="showLogsPopup"
            class="fixed inset-0 bg-black/50 overflow-y-auto scroll-bar-sm"
        >
            <div
                class="mt-16 mb-6 bg-white border border-gray-300 rounded w-11/12 max-w-5xl mx-auto"
                v-click-outside="() => { showLogsPopup = false; }"
            >
                <div class="popup-close" @click="showLogsPopup = false"></div>
                <table class="table-auto w-full text-left">
                    <thead class="bg-white border-b text-sm">
                        <th>#</th>
                        <th>LogIn</th>
                        <th>LogOff</th>
                        <th>Actual</th>
                    </thead>
                    <tbody
                        v-if="popupClassLogs.length > 0"
                        class="text-xs sm:text-base"
                    >
                        <tr v-for="(log, index) in popupClassLogs" :key="index">
                            <td>#{{ log.id }}</td>
                            <td>{{ log.start_time }}</td>
                            <td>{{ log.end_time ?? "-" }}</td>
                            <td>{{ log.time_diff ?? "-" }}</td>
                        </tr>
                    </tbody>
                    <tfoot v-else>
                        <tr>
                            <td colspan="4">No Logs Found</td>
                        </tr>
                    </tfoot>
                    <tfoot>
                        <tr>
                            <td colspan="4" class="text-right">
                                <Link :href="route('log.index', {classes: classId})">View All</Link>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </transition>
</template>

<script setup>
import axios from "axios";
import { ref, onMounted, inject } from "vue";
import { Link } from '@inertiajs/inertia-vue3';

//   name: "LogsPopup",
const showLogsPopup = ref(false);
const popupClassLogs = ref({});
const emitter = inject("emitter");
const classId = ref('');

onMounted(() => {
    emitter.on("class:showLogs", async (class_id) => {
        classId.value = class_id;
        const req = await axios.post(
            route("getClassLogs", { classes: class_id }, {method: 'POST'})
        );
        popupClassLogs.value = req.data;
        showLogsPopup.value = true;
    });
});
</script>

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
                    <thead class="bg-white border-b">
                        <th>#</th>
                        <th>LogIn Time</th>
                        <th>LogOff Time</th>
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
                            <td colspan="3">No Logs Found</td>
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
//   name: "LogsPopup",
const showLogsPopup = ref(false);
const popupClassLogs = ref({});
const emitter = inject("emitter");

onMounted(() => {
    emitter.on("class:showLogs", async (classId) => {
        const req = await axios.get(
            route("getClassLogs", { classes: classId })
        );
        popupClassLogs.value = req.data;
        showLogsPopup.value = true;
    });
});
</script>

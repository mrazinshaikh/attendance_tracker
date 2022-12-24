<template>
  <AppLayout title="Dashboard">
    <div class="w-11/12 max-w-7xl mx-auto mt-5">
        <div class="text-2xl pb-6 font-medium">Welcome, <span class="font-semibold">{{ user.name }}</span></div>

        <div class="lg:hidden grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
            <div
                v-for="(entries, index) in classes.data"
                :key="index"
                class="border border-gray-300 rounded p-3"
            >
                <div>{{ entries.name }}</div>
                <div class="flex gap-x-4 mt-3">
                    <div class="p-2 w-max h-max border rounded-lg border-gray-300 cursor-pointer" @click.stop="showLogs(entries.id)">
                        <img class="w-4 m-auto my-auto" src="../../../icons/list-dropdown.svg" alt="list">
                    </div>
                    <button class="text-sm bg-blue-700 hover:bg-blue-800 text-white px-4 py-2 font-semibold rounded">
                        LogIn
                    </button>
                    <button class="text-sm bg-red-500 hover:bg-red-800 text-white px-4 py-2 font-semibold rounded">
                        LogOff
                    </button>
                </div>
            </div>
        </div>
        <div class="hidden lg:block">
            <table class="table-auto w-full text-left">
                <thead class="bg-white border-b">
                    <th>#</th>
                    <th>Title</th>
                    <th>Action</th>
                </thead>
                <tbody>
                    <tr
                        v-for="(entries, index) in classes.data"
                        :key="index"
                        class=" border-b bg-gray-100 hover:bg-gray-200"
                        :class="{'': index % 2 != 0}"
                    >
                        <td>{{ entries.id }}</td>
                        <td>{{ entries.name }}</td>
                        <td>
                            <div class="flex gap-x-4 items-center">
                                <div class="p-2 w-max h-max border rounded-lg border-gray-300 cursor-pointer" @click.stop="showLogs(entries.id)">
                                    <img class="w-4 m-auto my-auto" src="../../../icons/list-dropdown.svg" alt="list">
                                </div>
                                <button v-if="entries.logs.length === 0" @click.prevent="logAction(entries.id, 'login')" class="text-sm bg-blue-700 hover:bg-blue-800 text-white px-4 py-2 font-semibold rounded">
                                    LogIn
                                </button>
                                <button v-else @click.prevent="logAction(entries.id, 'logoff')" class="text-sm bg-red-500 hover:bg-red-800 text-white px-4 py-2 font-semibold rounded">
                                    LogOff
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <Pagination class="mt-6" :links="classes.links" />
    </div>
    <transition>
        <div v-if="showLogsPopup" class="fixed inset-0 bg-black/50 overflow-y-auto scroll-bar-sm">
            <div class="mt-16 mb-6  bg-white border border-gray-300 rounded w-11/12 max-w-5xl mx-auto" v-click-outside="() => { showLogsPopup = false }">
                <div class="popup-close" @click="showLogsPopup = false"></div>
                <table class="table-auto w-full text-left">
                    <thead class="bg-white border-b">
                        <th>#</th>
                        <th>LogIn Time</th>
                        <th>LogOff Time</th>
                        <th>Actual</th>
                    </thead>
                    <tbody v-if="popupClassLogs.length > 0" class="text-xs sm:text-base">
                        <tr
                            v-for="(log, index) in popupClassLogs"
                            :key="index"
                        >
                            <td>#{{ log.id }}</td>
                            <td>{{ log.start_time }}</td>
                            <td>{{ log.end_time ?? '-' }}</td>
                            <td>{{ log.time_diff ?? '-' }}</td>
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
  </AppLayout>
</template>

<script>
import AppLayout from "@/Layouts/AppLayout.vue";
import Pagination from '@/Components/Pagination.vue'

export default {
  name: "HomePage",
  props: {
    classes: {
      type: Object,
      default: {},
    },
    user: {
      type: Object,
      default: {},
    },
  },
  components: {
    AppLayout,
    Pagination,
  },
  data() {
    return {
        showLogsPopup: false,
        popupClassLogs: {},
    }
  },
  methods: {
    logAction(ID, action){
        const data = {
            'action': action,
            '_method': 'PUT',
        };
        this.$inertia.post(
            route('classes.update', ID),
            data,
        );
    },
    async showLogs(entryId) {
        const req = await this.axios.get(route('getClassLogs',{'classes':entryId}));
        this.popupClassLogs = req.data;
        this.showLogsPopup = true;
    }
  }
};
</script>

<style scoped>
    table th,td{
        @apply  p-3;
    }
    .popup-close{
        @apply block relative cursor-pointer;
    }
    .popup-close::after{
        content: '';
        background-image: url("../../../icons/cross.svg");
        background-size:  10px;
        @apply absolute right-0 -top-5 w-5 h-5 bg-white bg-no-repeat bg-center rounded-t-sm ;
    }
</style>

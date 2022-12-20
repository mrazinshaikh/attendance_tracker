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
                            <div class="flex gap-x-4">
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
    }
  }
};
</script>

<style scoped>
    table th,td{
        @apply  p-3;
    }
</style>

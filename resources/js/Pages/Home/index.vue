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
                    <div class="p-2 w-max h-max border rounded-lg border-gray-300 cursor-pointer" @click.stop="emitter.emit('class:showLogs',entries.id)">
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
                                <div class="p-2 w-max h-max border rounded-lg border-gray-300 cursor-pointer" @click.stop="emitter.emit('class:showLogs', entries.id)">
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

    <LogsPopup />
  </AppLayout>
</template>

<script setup>
import AppLayout from "@/Layouts/AppLayout.vue";
import Pagination from "@/Components/Pagination.vue";
import LogsPopup from "@/Components/Shared/LogsPopup.vue";
import { defineComponent } from "@vue/runtime-core";
import { defineProps, inject } from "vue";
import { Inertia } from '@inertiajs/inertia'


defineComponent({
  AppLayout,
  Pagination,
  LogsPopup,
});

defineProps({
  classes: {
    type: Object,
    default: {},
  },
  user: {
    type: Object,
    default: {},
  },
});

const emitter = inject('emitter');

function logAction(ID, action) {
  const data = {
    action: action,
    _method: "PUT",
  };
  Inertia.post(route("classes.update", ID), data, {
    preserveScroll: true,
  });
}
</script>

<style>
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

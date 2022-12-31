<template>
    <transition>
        <div
            v-if="showPopup"
            class="fixed inset-0 bg-black/50 overflow-y-auto scroll-bar-sm"
        >
            <div
                class="mt-16 mb-6 bg-white border border-gray-300 rounded w-11/12 md:w-1/2 max-w-5xl mx-auto"
                v-click-outside="() => { showPopup = false; }"
            >
                <div class="popup-close" @click="showPopup = false"></div>
                <div class="p-4">
                    <h1 class="capitalize">{{action}} Class</h1>
                    <div class="block p-3 md:p-6 rounded-lg">
                        <form action="#" method="post">
                            <div class="form-group mb-4">
                                <label
                                    for="name"
                                    class="form-label inline-block mb-2 text-gray-700"
                                    >name</label
                                >
                                <input
                                    id="name"
                                    v-model="classForm.name"
                                    type="text"
                                    class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                    aria-describedby="nameHelp"
                                    placeholder="Enter name"
                                />
                                <span
                                    v-if="classForm.errors.name"
                                    class="text-sm text-red-500"
                                >
                                    {{ classForm.errors.name }}
                                </span>
                            </div>
                            <div class="form-group mb-4">
                                <label
                                    for="description"
                                    class="form-label inline-block mb-2 text-gray-700"
                                    >Description</label
                                >
                                <textarea
                                    id="exampleFormControlTextarea1"
                                    v-model="classForm.description"
                                    class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                    rows="3"
                                    placeholder="Your message"
                                ></textarea>
                                <span
                                    v-if="classForm.errors.description"
                                    class="text-sm text-red-500"
                                >
                                    {{ classForm.errors.description }}
                                </span>
                            </div>
                            <div class="form-group mb-4">
                                <label for="stopIn" class="form-label inline-block mb-2 text-gray-700"
                                    >Auto LogOff Time</label
                                >
                                <input
                                    id="stopIn"
                                    v-model="classForm.stopIn"
                                    type="number"
                                    class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                    placeholder="In Hours"
                                />
                                <span
                                    v-if="classForm.errors.stopIn"
                                    class="text-sm text-red-500"
                                >
                                    {{ classForm.errors.stopIn }}
                                </span>
                            </div>
                            <div class="flex flex-row gap-x-6">
                                <button
                                    type="reset"
                                    class="capitalize w-full px-6 py-2.5 bg-gray-400 text-white font-medium text-xs leading-tight rounded shadow-md hover:bg-gray-700 hover:shadow-lg focus:bg-gray-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-gray-800 active:shadow-lg transition duration-150 ease-in-out"
                                    @click.stop="cancelForm"
                                >
                                    Cancel
                                </button>
                                <button
                                    type="button"
                                    class="capitalize w-full px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out"
                                    @click.stop="submitForm"
                                >
                                {{action}}
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </transition>
</template>

<script setup>
import axios from "axios";
import { ref, onMounted, inject } from "vue";
import { useForm } from '@inertiajs/inertia-vue3'

//   name: "LogsPopup",
const action = ref('create');
const showPopup = ref(false);
const emitter = inject("emitter");

const classForm = useForm({
    name: null,
    description: null,
    stopIn: null,
})

onMounted(() => {
    emitter.on("class:create", async (classId) => {
        action.value = 'create';
        showPopup.value = true;
    });
});

function cancelForm(){
    classForm.reset();
    showPopup.value = false;
}

async function submitForm(){
    classForm.post(route('classes.store'),{
        onSuccess: () => {
            classForm.reset();
            showPopup.value = false;
        }
    });
}
</script>

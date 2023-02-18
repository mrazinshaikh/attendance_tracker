import "./bootstrap";
import "../css/app.css";

import { createApp, h } from "vue";
import { createInertiaApp } from "@inertiajs/inertia-vue3";
import { InertiaProgress } from "@inertiajs/progress";
import { resolvePageComponent } from "laravel-vite-plugin/inertia-helpers";
import { ZiggyVue } from "../../vendor/tightenco/ziggy/dist/vue.m";
import ClickOutside from "./plugins/click-outside";
import axios from "axios";
import VueAxios from "vue-axios";
import mitt from "mitt";
import { createDeviceDetector } from "next-vue-device-detector";

const emitter = mitt();
export const device = createDeviceDetector()

const appName = window.document.getElementsByTagName("title")[0]?.innerText || "Laravel";

createInertiaApp({
    title: (title) => `${title} - ${appName}`,
    resolve: (name) => resolvePageComponent( `./Pages/${name}.vue`, import.meta.glob("./Pages/**/*.vue") ),
    setup({ el, app, props, plugin }) {
        return createApp({ render: () => h(app, props) })
            .use(plugin)
            .use(ZiggyVue, Ziggy)
            .use(VueAxios, axios)
            .use(device)
            .provide("emitter", emitter)
            .directive("click-outside", ClickOutside)
            .mount(el);
    },
});

InertiaProgress.init({ color: "#4B5563" });

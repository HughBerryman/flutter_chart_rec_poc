{{flutter_js}}
{{flutter_build_config}}

_flutter.loader.load({
    serviceWorkerSettings: {
        serviceWorkerVersion: {{flutter_service_worker_version}}
    },
    onEntrypointLoaded: async function(engineInitializer) {
        const appRunner = await engineInitializer.initializeEngine({
            renderer: 'canvaskit'
        });

        document.querySelector('.loading-bg').style.display = 'none';
        await appRunner.runApp();
    }
});
'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.json": "b9b9d98d1fb80e8662a8cba61acba0e9",
"assets/assets/icons/Medium.svg": "da34e9c6dd5233225c4c612bfa8cb04f",
"assets/assets/icons/Linkedin.svg": "ccac53032be1a4d15e8b3f66ebdac766",
"assets/assets/icons/Github.svg": "a0b00583d93c2f7084ad151ee0849934",
"assets/assets/images/mesh_gradient/mesh_gradient_step_3.png": "9c3edc9edc0f73b756ba088b822f22b6",
"assets/assets/images/mesh_gradient/mesh_gradient_mobile_step_3.png": "c63f76af9f08f1cc5a0ab36029a6d7c7",
"assets/assets/images/mesh_gradient/mesh_gradient_mobile_step_2.png": "7c20d8aa17570c2772970e11afc84e62",
"assets/assets/images/mesh_gradient/mesh_gradient_mobile_step_1.png": "beb47da8297cc01ab1c18dc69ea60be5",
"assets/assets/images/mesh_gradient/mesh_gradient_step_1.png": "08d111215feb12f5330ef891c20e76a6",
"assets/assets/images/mesh_gradient/mesh_gradient_step_2.png": "a90f9b1616a66dbf9e9aa4330754634a",
"assets/assets/images/technologies/codemagic.png": "61863485e5ad85204d15d32a06f6ec2d",
"assets/assets/images/technologies/my_sql.png": "732ec302dc1d8b190073510cda9dc98c",
"assets/assets/images/technologies/mapbox.png": "05199ea8d1802d049c7a3a501e3b0758",
"assets/assets/images/technologies/google_maps.png": "aa30fc86e36ec0aaffbb14ab50e8f63d",
"assets/assets/images/technologies/react.png": "737cf98523590ce1c8cb1f64254bc48c",
"assets/assets/images/technologies/vuejs.png": "7138f03f32cd890e94824e59fc53c1cc",
"assets/assets/images/technologies/flutter.png": "49451ffbc10989979febcf5ff38421e4",
"assets/assets/images/technologies/sonarqube.png": "b40f12378a2ea32dfd1cd17a1cf2b5c0",
"assets/assets/images/technologies/branch.png": "477a31afb2d4fe8114671eba2a1a3768",
"assets/assets/images/technologies/fastlane.png": "33320b0d8ee18d4f7a498f02c3977fec",
"assets/assets/images/technologies/java.png": "ca206531a3e9f96e090f5cf368714ae9",
"assets/assets/images/technologies/github_actions.png": "ca10a30102b96a035109e2ff1e5abe44",
"assets/assets/images/technologies/cloud_functions.png": "867fd7defecae82d5b79faec7612a4d0",
"assets/assets/images/technologies/firebase.png": "ee09238f7f6b0e6d0c902c401860713d",
"assets/assets/images/technologies/flagsmith.png": "c1cb0dbef1c1903a0f0cd47a8852afc1",
"assets/assets/images/technologies/nodejs.png": "7b452bf9ff0e0c4ec63345aa0a807d39",
"assets/assets/images/technologies/postgres.png": "0b5d68757523e304d510fbebf86fe4a4",
"assets/assets/images/technologies/open_street_maps.png": "b0b8216a54b5c39193b46b4e1a6427ac",
"assets/assets/images/technologies/aws.png": "563c80f46c0a19d6cef3374551bafe22",
"assets/assets/images/technologies/onesignal.png": "6ea9d0475a74740f70c4f2724dd7f5cf",
"assets/assets/images/technologies/python.png": "cfc680d6c6e031820a3446a55445df98",
"assets/assets/images/about/mobile.svg": "1399e0300073ed8c50b8bf86ca11efbf",
"assets/assets/images/about/dev_picture.jpg": "4d00902ccf049b8710a4fad0ad46d65c",
"assets/assets/images/projects/pauliceia.jpeg": "c8d6fc8e872b06e91ab9b9cd80c5dbac",
"assets/assets/images/projects/internet_builder.jpg": "cc98e15775929dc6fcc9c30c61202432",
"assets/assets/images/projects/cobras_escadas.png": "eb8b97ed43f4e8da656a70dc390a647f",
"assets/assets/images/projects/estados_municipios.jpg": "418ee02429dd4dc13ee430d48f0f2d58",
"assets/assets/images/projects/bisnez.jpg": "f5ef3d29f2ff99feabcf55d64739b35d",
"assets/assets/images/projects/cobras_escadas.jpg": "bf2313896aa00f7d58a744d0f424c20c",
"assets/assets/splash/splash.gif": "a2c25ce8158ac72d7a4b167cf132435c",
"assets/assets/i18n/pt.json": "9c76e6e7e959fd1e286a8e0eb0b202b0",
"assets/assets/i18n/en.json": "68a1ced29335b0e7cadad5d088c55fff",
"assets/AssetManifest.bin.json": "6bf9aeabebe973d01927c38b0124b3dd",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "cd2114094cdc82787d4db840b90273a9",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/NOTICES": "dac667af664ad0f56765e412f00106d5",
"assets/fonts/MaterialIcons-Regular.otf": "3662009b696ef41aa94d31e82f355cb2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"main.dart.js": "8aba0929529c111985b04954d54b832e",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"flutter_bootstrap.js": "933524a788b6260b4b10926adf0f4a52",
"favicon.png": "935197c6a559b5b46908fd04b1303f61",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"index.html": "d035c512048bb616a875a345ecf5767e",
"/": "d035c512048bb616a875a345ecf5767e",
"version.json": "57e502283946b35c1219de84fb6fd32e",
"manifest.json": "126d6bc395925fd9e1e5fb395e2330a8",
"splash/img/light-4x.gif": "be93bddbc5096d8202101bd274bb1df8",
"splash/img/dark-1x.gif": "5b346be7820a53f89d050598b0624671",
"splash/img/dark-4x.gif": "be93bddbc5096d8202101bd274bb1df8",
"splash/img/light-2x.gif": "d39bd15304bbce40bdb259fbdf40a764",
"splash/img/dark-2x.gif": "d39bd15304bbce40bdb259fbdf40a764",
"splash/img/light-1x.gif": "5b346be7820a53f89d050598b0624671",
"splash/img/dark-3x.gif": "2fcf32c0b20edea5bf33ad32f7443062",
"splash/img/light-3x.gif": "2fcf32c0b20edea5bf33ad32f7443062"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

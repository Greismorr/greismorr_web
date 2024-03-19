'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"splash/img/dark-3x.gif": "2fcf32c0b20edea5bf33ad32f7443062",
"splash/img/light-3x.gif": "2fcf32c0b20edea5bf33ad32f7443062",
"splash/img/light-4x.gif": "be93bddbc5096d8202101bd274bb1df8",
"splash/img/dark-4x.gif": "be93bddbc5096d8202101bd274bb1df8",
"splash/img/light-2x.gif": "d39bd15304bbce40bdb259fbdf40a764",
"splash/img/dark-1x.gif": "5b346be7820a53f89d050598b0624671",
"splash/img/light-1x.gif": "5b346be7820a53f89d050598b0624671",
"splash/img/dark-2x.gif": "d39bd15304bbce40bdb259fbdf40a764",
"index.html": "1f20ba7c37320e72481a57a02ff95f96",
"/": "1f20ba7c37320e72481a57a02ff95f96",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"favicon.png": "935197c6a559b5b46908fd04b1303f61",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "3662009b696ef41aa94d31e82f355cb2",
"assets/AssetManifest.bin.json": "b4ff1ec36f6a5b9769cab0ac70787a87",
"assets/assets/splash/splash.gif": "a2c25ce8158ac72d7a4b167cf132435c",
"assets/assets/images/technologies/google_maps.png": "aa30fc86e36ec0aaffbb14ab50e8f63d",
"assets/assets/images/technologies/python.png": "cfc680d6c6e031820a3446a55445df98",
"assets/assets/images/technologies/cloud_functions.png": "867fd7defecae82d5b79faec7612a4d0",
"assets/assets/images/technologies/fastlane.png": "33320b0d8ee18d4f7a498f02c3977fec",
"assets/assets/images/technologies/onesignal.png": "6ea9d0475a74740f70c4f2724dd7f5cf",
"assets/assets/images/technologies/my_sql.png": "732ec302dc1d8b190073510cda9dc98c",
"assets/assets/images/technologies/postgres.png": "0b5d68757523e304d510fbebf86fe4a4",
"assets/assets/images/technologies/firebase.png": "ee09238f7f6b0e6d0c902c401860713d",
"assets/assets/images/technologies/nodejs.png": "7b452bf9ff0e0c4ec63345aa0a807d39",
"assets/assets/images/technologies/sonarqube.png": "b40f12378a2ea32dfd1cd17a1cf2b5c0",
"assets/assets/images/technologies/open_street_maps.png": "b0b8216a54b5c39193b46b4e1a6427ac",
"assets/assets/images/technologies/mapbox.png": "05199ea8d1802d049c7a3a501e3b0758",
"assets/assets/images/technologies/java.png": "ca206531a3e9f96e090f5cf368714ae9",
"assets/assets/images/technologies/aws.png": "563c80f46c0a19d6cef3374551bafe22",
"assets/assets/images/technologies/codemagic.png": "61863485e5ad85204d15d32a06f6ec2d",
"assets/assets/images/technologies/vuejs.png": "7138f03f32cd890e94824e59fc53c1cc",
"assets/assets/images/technologies/branch.png": "477a31afb2d4fe8114671eba2a1a3768",
"assets/assets/images/technologies/flagsmith.png": "c1cb0dbef1c1903a0f0cd47a8852afc1",
"assets/assets/images/technologies/react.png": "737cf98523590ce1c8cb1f64254bc48c",
"assets/assets/images/technologies/github_actions.png": "ca10a30102b96a035109e2ff1e5abe44",
"assets/assets/images/technologies/flutter.png": "49451ffbc10989979febcf5ff38421e4",
"assets/assets/images/about/dev_picture.jpg": "b0e32804eb86d7f3c7e8df490ddbed8c",
"assets/assets/images/about/mobile.svg": "1399e0300073ed8c50b8bf86ca11efbf",
"assets/assets/images/mesh_gradient/mesh_gradient_step_1.png": "08d111215feb12f5330ef891c20e76a6",
"assets/assets/images/mesh_gradient/mesh_gradient_step_2.png": "a90f9b1616a66dbf9e9aa4330754634a",
"assets/assets/images/mesh_gradient/mesh_gradient_step_3.png": "9c3edc9edc0f73b756ba088b822f22b6",
"assets/assets/images/projects/cobras_escadas.jpg": "98daff8c8cb3a5df139c2e508df1aef6",
"assets/assets/images/projects/cobras_escadas.png": "eb8b97ed43f4e8da656a70dc390a647f",
"assets/assets/images/projects/bisnez.jpg": "3fa7c911322ecfc3c21e3b86419cb41d",
"assets/assets/images/projects/pauliceia.jpeg": "031a82672466c97ac4d1776b72a4e55b",
"assets/assets/images/projects/estados_municipios.jpg": "74d501c2ef4abd92e7f248e2da2bafb2",
"assets/assets/images/projects/internet_builder.jpg": "10a635d9d30d71f4defee04b284833ef",
"assets/assets/icons/Medium.svg": "da34e9c6dd5233225c4c612bfa8cb04f",
"assets/assets/icons/Linkedin.svg": "ccac53032be1a4d15e8b3f66ebdac766",
"assets/assets/icons/Github.svg": "a0b00583d93c2f7084ad151ee0849934",
"assets/assets/i18n/pt.json": "9c76e6e7e959fd1e286a8e0eb0b202b0",
"assets/assets/i18n/en.json": "68a1ced29335b0e7cadad5d088c55fff",
"assets/AssetManifest.bin": "94666bf239fca9bfb6a64578dccc988a",
"assets/NOTICES": "f45d8bbd8f35ae065659593dccf28dec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.json": "c824b5c394b35e471d7bbd2829a3150a",
"version.json": "57e502283946b35c1219de84fb6fd32e",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"manifest.json": "126d6bc395925fd9e1e5fb395e2330a8",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"main.dart.js": "ca643917881a60a03ae4716a617b089d"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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

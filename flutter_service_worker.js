'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"manifest.json": "6587237943913f73f1453fd81aa19fd8",
"favicon.png": "935197c6a559b5b46908fd04b1303f61",
"index.html": "45cba26c19d1494aeb1244f76fde881a",
"/": "45cba26c19d1494aeb1244f76fde881a",
"main.dart.js": "0d6e0c69d1ea6a43546e1fbea098a3ad",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.json": "bc431bf61caa0dbdc397b4999c3dd414",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.bin": "fd04597d9c6f4773ca2345bd4140f0b0",
"assets/assets/i18n/pt_BR.json": "4635eb1730b57f9a56234979ebf83abf",
"assets/assets/images/mesh_gradient/mesh_gradient_step_2.png": "a90f9b1616a66dbf9e9aa4330754634a",
"assets/assets/images/mesh_gradient/mesh_gradient_step_1.png": "08d111215feb12f5330ef891c20e76a6",
"assets/assets/images/mesh_gradient/mesh_gradient_step_3.png": "9c3edc9edc0f73b756ba088b822f22b6",
"assets/assets/images/technologies/onesignal.png": "962f652fdc2e2133b5546138cac5c541",
"assets/assets/images/technologies/branch.png": "722a8d1a48d9f06af49d8e639e7519c9",
"assets/assets/images/technologies/open_street_maps.png": "7198e26f81eb397fe03875dce76c6e0a",
"assets/assets/images/technologies/codemagic.png": "61400c73bcd22a6f024293ab0d24b5f0",
"assets/assets/images/technologies/mapbox.png": "bfc0b22313cae2ae3265342223577fde",
"assets/assets/images/technologies/postgres.png": "ea92d6580dda0fbcf61a8ccb16e0d02a",
"assets/assets/images/technologies/nodejs.png": "aa6881d013ae850380b437045b7c03b1",
"assets/assets/images/technologies/java.png": "2edeeb38e4eee3be0e20fbcea76ba61d",
"assets/assets/images/technologies/fastlane.png": "33320b0d8ee18d4f7a498f02c3977fec",
"assets/assets/images/technologies/my_sql.png": "cde43891991f76a5e7df17ac6d373aff",
"assets/assets/images/technologies/flagsmith.png": "e7f60b2145b9677783d04e33609b09ca",
"assets/assets/images/technologies/sonarqube.png": "feb26207834ab7d423b7c5facc9ac2bc",
"assets/assets/images/technologies/google_maps.png": "1e5d2164248ad2c342ac436680832303",
"assets/assets/images/technologies/vuejs.png": "9cd182c5ccfb93025e85ef98bc18c9cf",
"assets/assets/images/technologies/python.png": "c5e3c2f5e09713ea7bc42a4231401a16",
"assets/assets/images/technologies/react.png": "41d22b08d745d995729400638deb352c",
"assets/assets/images/technologies/firebase.png": "7371a3d035412a78dabc88d0e5237b44",
"assets/assets/images/technologies/cloud_functions.png": "15768d8f2933d2f158df26c0c786766c",
"assets/assets/images/technologies/flutter.png": "9c762fd9bbcd0a09a78da1814a4860d6",
"assets/assets/images/technologies/aws.png": "49de07c73f3f0aa203dbd9328f9fa4f7",
"assets/assets/images/projects/internet_builder.jpg": "10a635d9d30d71f4defee04b284833ef",
"assets/assets/images/projects/cobras_escadas.png": "eb8b97ed43f4e8da656a70dc390a647f",
"assets/assets/images/projects/estados_municipios.jpg": "74d501c2ef4abd92e7f248e2da2bafb2",
"assets/assets/images/projects/pauliceia.jpeg": "031a82672466c97ac4d1776b72a4e55b",
"assets/assets/images/projects/cobras_escadas.jpg": "98daff8c8cb3a5df139c2e508df1aef6",
"assets/assets/images/projects/bisnez.jpg": "3fa7c911322ecfc3c21e3b86419cb41d",
"assets/assets/images/about/dev_picture.jpg": "b0e32804eb86d7f3c7e8df490ddbed8c",
"assets/assets/images/about/mobile.svg": "1399e0300073ed8c50b8bf86ca11efbf",
"assets/assets/images/background.png": "93fffa67b503dbfc2936f290ff8bf227",
"assets/assets/icons/Linkedin.svg": "ccac53032be1a4d15e8b3f66ebdac766",
"assets/assets/icons/Github.svg": "a0b00583d93c2f7084ad151ee0849934",
"assets/assets/icons/Medium.svg": "da34e9c6dd5233225c4c612bfa8cb04f",
"assets/assets/splash/splash.gif": "a2c25ce8158ac72d7a4b167cf132435c",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/fonts/MaterialIcons-Regular.otf": "721dadbdbc920fa83548bc67fce73a39",
"assets/NOTICES": "3cb504ad64acb170c524d66103bb9868",
"assets/AssetManifest.bin.json": "1f6e97f58e2e5e942b8a69cea3fe3390",
"version.json": "57e502283946b35c1219de84fb6fd32e",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"splash/img/light-3x.gif": "32e87dbff8a224a113f7bfe57c1967be",
"splash/img/dark-1x.gif": "061b46ea022914807797faceec1d0d72",
"splash/img/light-1x.gif": "061b46ea022914807797faceec1d0d72",
"splash/img/dark-4x.gif": "e3feec5a35421c5867ea57f81bc61428",
"splash/img/dark-3x.gif": "32e87dbff8a224a113f7bfe57c1967be",
"splash/img/light-4x.gif": "e3feec5a35421c5867ea57f81bc61428",
"splash/img/light-2x.gif": "550abc00be2e9a9f169a74d6aac5b0f4",
"splash/img/dark-2x.gif": "550abc00be2e9a9f169a74d6aac5b0f4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "d0257cb08c04548e51dca7de6962c05d",
"assets/AssetManifest.json": "d00f44e8c765dacdbd06a33de05c89e1",
"assets/assets/images/AbdelrhmanCv.pdf": "840de87feef846297368497f5e77ae89",
"assets/assets/images/about.png": "c90dbd675e984c5f5d8b02ca303a9dcc",
"assets/assets/images/blue.jpg": "1c3c8e09d89e3d67817ff1d78a2aa54b",
"assets/assets/images/call.png": "1771eab084c000d09fc85334604c959d",
"assets/assets/images/email.png": "8d73098d48176f0bc0dce3dd7b773f20",
"assets/assets/images/eq/eq1.jpg": "636d1c073006447a494b1c327a759acc",
"assets/assets/images/eq/eq1.PNG": "c68eff434e36aa944f064d081cc88177",
"assets/assets/images/eq/eq2.jpg": "bd54108aab0af28e4f770e0bc79f5c17",
"assets/assets/images/eq/eq2.PNG": "17f95dad7a1efa0e7b133073bcc79da6",
"assets/assets/images/eq/eq3.jpg": "f0bcb8a820e3055a4d98e24009d03986",
"assets/assets/images/eq/eq3.PNG": "5860ed3e27e2c71cff41ea3ef625c510",
"assets/assets/images/eq/eq4.jpg": "60d1423406cbcdd551b7e564388e86ab",
"assets/assets/images/eq/eq4.PNG": "3628fd8bc3dbb6d4798ec38454865f5c",
"assets/assets/images/guthub.png": "bb26e7bcfb1fa416ac26c1e03ed77272",
"assets/assets/images/home.png": "2e6e949f41631c962ba4a99c8fb3e412",
"assets/assets/images/linkedin.png": "f2e1d824d4bd16243707d9ae4e5a99e3",
"assets/assets/images/rayban/rayban1.PNG": "db08a93ff4809adcee3717776e0336ae",
"assets/assets/images/rayban/rayban2.PNG": "0418b0413cd70e9eb47d716daf13c9ea",
"assets/assets/images/rayban/rayban3.PNG": "080aae7e7ec8361b9d123c6f2711de98",
"assets/assets/images/rayban/rayban4.PNG": "65cd9a6fa73e463dc5f7f02ed5eb72be",
"assets/assets/images/rayban/rayban5.PNG": "419ee68f529fa51e02f3d51453b8000e",
"assets/assets/images/rayban/rayban6.PNG": "9e86b1f7092d3d019ca9aa3a8903ebf6",
"assets/assets/images/rayban/rayban7.PNG": "f4feb40547980ea63298147ae7936077",
"assets/assets/images/rayban/rayban8.PNG": "92c1503383219c40d3a656ad3a27849f",
"assets/assets/images/rayban/rayban9.PNG": "e906bd16ac38cbd377a6db1d4b08fabd",
"assets/assets/images/ssas/1.PNG": "357946577240c3057d2a593dd3afde7e",
"assets/assets/images/ssas/10.PNG": "9ec2a75059859c93b5ba6a207fea0e84",
"assets/assets/images/ssas/12.PNG": "c1a77fb28d4820f889b609da93dc0114",
"assets/assets/images/ssas/13.PNG": "0c565d114358a33eb740b74cb8bfd406",
"assets/assets/images/ssas/14.PNG": "6b856a2b78479430f064d13582466d3c",
"assets/assets/images/ssas/15.PNG": "40ff4b9830517b31fedcc924437bafb1",
"assets/assets/images/ssas/16.PNG": "61307f5d9817764706bd51226f5b90a5",
"assets/assets/images/ssas/17.PNG": "b95ea876a8cd6af339ff865cdf27bb32",
"assets/assets/images/ssas/18.PNG": "e1ed52856b56949563034ec336faa60e",
"assets/assets/images/ssas/2.PNG": "9b0be13bef1a9a497c75a5916c54e03a",
"assets/assets/images/ssas/20.PNG": "13a924ac88d2158d81298a3f53c06756",
"assets/assets/images/ssas/21.PNG": "dc3cd6f71ecaf32ec5d83e606436e760",
"assets/assets/images/ssas/22.PNG": "f50d893e33f4396707cc756bd78080a6",
"assets/assets/images/ssas/23.jpg": "d43b64d6bd2d3c301ee19440f5cef9aa",
"assets/assets/images/ssas/24.jpg": "63eb72ce78dd7c741231f47fbd0c1eed",
"assets/assets/images/ssas/25.jpg": "0cf83410f5cae41268581733f957fe17",
"assets/assets/images/ssas/26.jpg": "c937101ab3f67c48cb440fb2e7baa516",
"assets/assets/images/ssas/27.jpg": "3d0f3ffa3c30c58711f9d20b17d67fb0",
"assets/assets/images/ssas/28.jpg": "26109315df5b0863594244c48957faf0",
"assets/assets/images/ssas/29.jpg": "c2588c62a7777604e26d91dba55ca37d",
"assets/assets/images/ssas/3.PNG": "0c49f97996a65a5b69c783f93ccc4dd8",
"assets/assets/images/ssas/4.PNG": "906a52b0ed9af340d0016499ab0229ff",
"assets/assets/images/ssas/5.PNG": "4580e7410372f7fa119be13092232b0a",
"assets/assets/images/ssas/6.PNG": "34d805b8caf7842aa3242251b07590ee",
"assets/assets/images/ssas/7.PNG": "df685f4b86c74efcdb692b98fbf4128f",
"assets/assets/images/ssas/8.PNG": "57873baecc4d3d08cf2210978b9538b6",
"assets/assets/images/ssas/9.PNG": "e816fa978f3bc1e14669bd7f70bd7b82",
"assets/assets/images/todo/todo1.PNG": "9f94a035ff88ffa993ab94bdb91d29fe",
"assets/assets/images/todo/todo10.PNG": "b3a3b837669cc867627dcb9ff6149f91",
"assets/assets/images/todo/todo2.PNG": "e15ef759cc02559e1c01a60855f44866",
"assets/assets/images/todo/todo3.PNG": "6a39cda7895caeb95a2bb021c853a205",
"assets/assets/images/todo/todo4.PNG": "ac142061f83f80f4003e4d7ce55b763a",
"assets/assets/images/todo/todo5.PNG": "0780eb778cd08ec4dbb9dabd7a197057",
"assets/assets/images/todo/todo6.PNG": "74193a5e44a888fb7ef8be457d02f90a",
"assets/assets/images/todo/todo7.PNG": "f50b3c3b24002543655e6e50672f9744",
"assets/assets/images/todo/todo8.PNG": "ec890baa7258c467ff4bd046c5472890",
"assets/assets/images/todo/todo9.PNG": "c19671f6b8be6d77f4d11460683501ef",
"assets/assets/images/whatsapp.png": "bca0528f92816952ca4ba055233ea056",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/NOTICES": "e32937646abe483164dd5b7e476abc77",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "fcd908aff954fdf5fc4f9cd4b9718396",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "858e662321fd449af92fd080b791c1f7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "1530cc82e48a0ebeb7396e8a64a80853",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "ce7773b7d8aa8ebe1f4e77612d1f1118",
"/": "ce7773b7d8aa8ebe1f4e77612d1f1118",
"main.dart.js": "9a8d7c9eea1dd716dd27eeb8622872fd",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
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

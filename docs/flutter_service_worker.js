'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "e795d073753b095b35da1454813eb4cd",
".git/config": "920a11de313bfb8d93d81f4a3a5b71b6",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "40214411052a055278a7dacc11675d5d",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "5864f99a2a89eecdb0bf3b2cdf7928e1",
".git/logs/refs/heads/master": "5864f99a2a89eecdb0bf3b2cdf7928e1",
".git/objects/03/c531a7a4eadfbb97e5434401927ee31890cf33": "fe6b24f60048b7f218835d95c2c650ae",
".git/objects/09/0bc972e18a5b8dc15128688a60fc16e34c31d7": "c22238f0196117117977e4881c560289",
".git/objects/0b/597ef94ee075f90325d45fa66c83dc95ef9af3": "b194c1e93ac91d88666f4929ceac4399",
".git/objects/0b/85bcdb86bf9e9f9fda81b13cec9c9349d47d77": "77cbf4b6cc88e2471afd14a98ef2e0ed",
".git/objects/10/75ad813445620c7bfbcaac7ffee6d0ca3c81e3": "1cd3af064eba32fe634a6cc09d5e276e",
".git/objects/10/7f4f10ef24617dde1f871bfdd4ebfa4b3a23a4": "b48c285cb83544fb89b69a265dc07236",
".git/objects/14/43435271abd439fa8f33ffd5cbd905a8efef66": "9fba064f16292999c1f08c90f5a86cfe",
".git/objects/14/dd97006280b70ac6ef16e144dc18339e7cecd9": "f01c05a1f26f45bd87fdc5716c0a28ca",
".git/objects/17/0765365851faa49e4b9fd67c51fc1b4d202372": "82a83f16a7dfc2775ef8e22f341370ee",
".git/objects/19/e235114c83a7ed024642aa7f92c0ba06526233": "94bd4314087d826d21e22465d34f6891",
".git/objects/1a/63ff154c7e439597cf05578818663107c37fd1": "eaf6c736db369e7fe5cae3ea3419166a",
".git/objects/1b/095a7affcba6aefc86e1e3fd62c96b1a106857": "c39fcdea49774c8b2be28a1d53e0adab",
".git/objects/1d/384f3748038966a5c7316223edf120dd5894dd": "a8d542276aa823dfefb8d26439e1077a",
".git/objects/1e/bf993c04c08e17a0122730f8d7ce6e139c8bad": "eeb4f0d71f24758335fe1753273ad6c2",
".git/objects/1f/686edd1465272558af328ca43cb7189a0059e6": "5e83820f6d3e5392693d45bc239b2b61",
".git/objects/20/35876194b1aac75300307378bf8936e61e76cf": "dda9562d74fdef04afb33512df30f904",
".git/objects/20/d87d117c31184ea7e3abbeb48bbc95a9f4424f": "c1dda5ef7e85559f8651cb33da3bce85",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/23/bcbb93a73bb609a85ca53949fa04ff481747a0": "4010f1c7f7ea94edd7dde04b414dca68",
".git/objects/26/1284e61aa608655352699f9f1563aa006f6bae": "73f5a72984aad68c178ef780d0e05a66",
".git/objects/26/6c8d8f288e9f1072aa36d9cb98e2b5e8b83c06": "aa9cd15fadba5076d4ab95c1900a5f8b",
".git/objects/26/aeafc2762285ad08bb376563fdff76499de20e": "685b77a528f90d974f6771598a64fdc0",
".git/objects/2d/7578eac9fbd8354dc50b6e9b6d17b358eb8216": "f92e8edff075b3b972030a187f175c27",
".git/objects/2f/804ca3167546f337d5e8665cd5359149a531d6": "37cf727f2856691f4b78fa961232a121",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/37/7580cbf691d03aea79c63a3a251b1b48ac01f1": "c196d282a50e3c372b4445c6b8868297",
".git/objects/38/59778479522ff1abad117489514f3c0cb254b0": "b69a06fa17dd260482590a1a2ce59d75",
".git/objects/38/924fa740c1156f2fd85b278e0747a688214bb1": "137133012c802c93d4c6860be6141ec3",
".git/objects/3a/2e64ed9cf9ec8ba8190af68618fda388e1a8b2": "711d91d0ee34af9d530272246e6cdd3e",
".git/objects/40/15c3c5cca61223c20678163ef07f91ade96df0": "9a9343808e3596031cc9c9b68894778c",
".git/objects/44/3b6a4cd5d2bc6c0282c8c393a328b0fba11aa8": "463cccb545538630d847d681bc096cdf",
".git/objects/46/0b0405a1e217aac807ef25504ac25d7f73d2bc": "056026a023fcb6dab6c2a99f1d8e56f5",
".git/objects/48/0110b1756cb1d34c9124f59b4f9731f5d6a9be": "5814faa3e2af424855659753a7fddae2",
".git/objects/51/34e6402246228fb7f58ce8fe76727a61d99a62": "6b5e5b48febe40daec7062aecdc3b39f",
".git/objects/52/f3058f02a8b67a3b16b5c10c26df34ccb85484": "156722222e35c68a0115407272721d5e",
".git/objects/54/2bcc01ee83aaf5a1f88389582399b0ee6a5c74": "6f2f672ba03ed36fd600d584d365f96e",
".git/objects/54/9f3ecccacf37dda3af5130cfa9a9ead18783ca": "daf2faa872f8fb688c5c2feb076b46f5",
".git/objects/54/ee1f86a4d45a625f23f8f7f6522d4795264696": "a5e6dc88f85b805d88fc19bbd5679eb3",
".git/objects/57/3ae963d9f139c88e98baf853f386c802f27970": "a4d8d5c235e53e61f84ee6d8c5b64388",
".git/objects/58/71f1d0f4c6752698c691e5e16e63c436c6bcb2": "44c6e240bca3566317c96ea27e209100",
".git/objects/59/62efb2dffef4c259bda261b128fcab4b659c34": "11e1a7683fedc73b6a0da57ee3c6a112",
".git/objects/59/756e90ad452e124518072fe6b6c3f850f8e83e": "b63e4c1af81cd7e51fb6364347772834",
".git/objects/5a/502cbcb52189e4c028abb64d0fd347e0ba99f8": "49adafb09350e31b9a03d87979fc61ee",
".git/objects/61/fcaf27fdb835ea87edd07625c654100769f894": "c4dd8d462c1b59fb0ba9f4ab9b994ce0",
".git/objects/62/a01d6826913d9efa140d2e9f4bc0f13918e607": "44ba2af6a4f05cb190463143170ae010",
".git/objects/6a/24b817b2de9193f09fdc422a8694fedb7478f9": "c5cf53567f34ed22b825e948067b23ff",
".git/objects/6a/27d9515498984d1c22cb7b53619b2ce99251c9": "f78f01ba179f131be209c2761d9c2447",
".git/objects/70/010cc4761157d9d7cc2d082cf342e63fe1190a": "baf21d1dacab382149ee93266543ff40",
".git/objects/73/bf085fbce7729dd8062e4ad156b1e510d015ac": "6ef0da46680a6cc5b43e14025e72b0e9",
".git/objects/7a/4123249fd6196c66641f99ea55b39c979f6018": "c96d1a0012b8627a78a55572772995b3",
".git/objects/7d/4001becaf1eed6acda74f585345b18c6668df5": "466e1f4d0a725ca54df859ab0889e1f9",
".git/objects/7e/f69353c15b2f87a1bb1acaf79d5f51191eebfc": "43f6f125a1579380c7c0e01bd1fd1ea1",
".git/objects/80/cc3451b50880ac7f9c4e2107a46617ca1eafac": "e4bd3ba4962d98273bb09fde47bfe92c",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/cf5fa910ad048e9685dc56d7066d75b40958c4": "d03a99e3c96ddf6616e948e8af5006de",
".git/objects/8c/83de9b584e6f97445a3687b7511ab174c62d4e": "92cfbe02d152c3ce2758577bc99eea43",
".git/objects/8c/940782197be36994c8cdee7504292d0e46b1d5": "529da07a8daa0905ec079fc87556800e",
".git/objects/8e/7f4b338840099949781ab85496d7a67fae46f1": "7f2803c236e9e7d95ef6ed16a3a2bd13",
".git/objects/91/bf91a7527d3c77da83e8425815fcef06df95c6": "f04df8e02a37722911b06c8bff6cdc18",
".git/objects/91/c7bd7a4578b85be029f5ba99a8481e724e73b3": "1fcc72b0e530266e1089fc5cf3b1f0cd",
".git/objects/92/07523a006437d8ca857b6fc987c243d357f2f4": "d3e22340be1a4cb26c3563951796e679",
".git/objects/95/b1b39a639fcfd6d991b95a2bb6513b4781e7b4": "95e19c12069b682b48c42cfc66b3b75d",
".git/objects/99/b9c3fcc71f40ba7c555d0ada7df53ba658f350": "8ab74f42c2a16dddfb6de06263ce0ae2",
".git/objects/99/f0cf596fa4b2c1a67296fe6c1e0dccccdb26e1": "bc33f2611aa207a4f062672be196e6bc",
".git/objects/9c/ba6a800cf713ddb84a96e401b177a576a31542": "f15b73918d686b1acef93d85fffae922",
".git/objects/a0/f98fcd58f7f6b249277313be0bb7ec990c99a6": "6d0730071ee98c064e6b899b2cc67475",
".git/objects/a1/ceabf05d171d1bafdb7fbaecff19936d602b52": "4e295a981cf28b01d59700014404ca31",
".git/objects/a2/7af21cb23284826946a755805edaebb33ac009": "7f30931a8a26fa24d6b374a284b1b9d8",
".git/objects/aa/e363da719293242bc0cb02fdab9dfee0441d95": "71c46a3aeab505b094515d37e232593f",
".git/objects/ae/37803d1933c3979fd1b939ff61cc667b0b70dc": "f5c08c98e82ebd9034dbd78b64a292fa",
".git/objects/ae/7f216949705d0c82d4925d49f41dd0735c657e": "eb4aa4a90c32443118d4ce4a982dc5f8",
".git/objects/af/ab3a45adf14ef001faba9a061811a869c0be68": "f43ffcf41acf8fe4ab99056e3133ffb7",
".git/objects/af/e3a1d1738ac639293244e24714badc4c8fb3ee": "fd44efbf0ec46ebe9314056dfc4de086",
".git/objects/b2/2fdb2d1fa6a3bced274617d58f6ab432bb0d8b": "1b405e4dfab487f51d41422d52600614",
".git/objects/b4/87ab2825e6bad90e053d31f00eff7d9f134264": "3724181cbc7f6191313a071fab62b79f",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/1e48a273e14f063aed7f0241c5a723a5c77516": "c03bb20ecdc689452963ed2bf8e9ce5b",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/95e6db0f77be625d10849efb8ad43f06d7939a": "fa93b701ee9a42f057ed539294bc6772",
".git/objects/bb/a45e0b073e71cc6fa98367375aa7445e316385": "2d2152918f89b7b889345bc8307bf39f",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bc/32e7f08dd82a97884f0a0868587ec939c08cd0": "4d81064d9532028bcce6eb3a132ca4ef",
".git/objects/be/3e5248a9c0aa50df1fc92e0a3b84775540a2dc": "1d25c5493ad7f5498eca3dc0c3f11be6",
".git/objects/be/dfbd30f78248acf5b85fe07b4440cf87d8fcc3": "9a44951eea85116b7b8b11a38e04d288",
".git/objects/c2/ce7ac82f4cfddd8d09f225c135b7ffa4bcc2f2": "760d1fc9ab1f8cde096a82dc576ecc09",
".git/objects/c8/67ba1a33470410503d6028a513d23ac726d25f": "84d6ae41a3447356b264046faf6bb712",
".git/objects/c8/e6df7e044dc4646791b417270c0de4b4041205": "6fca28b89e85b44fe82921d8419f049f",
".git/objects/ce/6cc51c97c654ce2fa9225d8241bcca65b2c108": "d6f17d5c3e53d0ce0772d2a1ce1d9d76",
".git/objects/d2/c41438f00f2d04f2824962f2b514858a3173d5": "b94cf906a8c1ef3b3e5323f852c066f1",
".git/objects/d3/a75d3d3197c5e5d020e58a388915dfea5de9de": "48c784d134f542cf6d8e8a17b02b1f8e",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d4/6e9575751bc294f89a060163862e7f5924dcbd": "40fb231277861c657a4bc9a96ad85a95",
".git/objects/d6/784c70d55e827e4dfd9ae1a95989047a0629ac": "60f4c6cefc16b3baebbf33f6771e256b",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d8/f70c22ddd3d85d783ca818c8b871b48663b18b": "a4f837a20f7835087828e03104a11eec",
".git/objects/db/14ca693e40f3f8458da8924bb365fdc5bfdd42": "1ed538f5578bd35f7416dc476c3647c7",
".git/objects/dd/0f17643c4b9ce35208602b3dd96095e5ebed41": "9f9b3558b892baf1bb8498e9d654791f",
".git/objects/e1/12356f4bf6b0c8ce27e8370bb25db9d473e3a9": "8ada75e0780c8a8133ee0b9c2d781930",
".git/objects/e4/45d6a8dd954b65d0541daee60f39d38f05462c": "e5e889533bd37850a83fdcb16b4135f5",
".git/objects/e7/1dc94c2f1dc53148b729f0f8a0dcc1c5705d15": "0a8b98f978b9fef973abc708cf6ba715",
".git/objects/e9/d66af5410841bd9938ee5afdb9f97403353036": "4ee303897a00775a46cc4d9aa1618c55",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/7d6f2830956f1416dc09c96c77e0ecb63b23f5": "e750318dcfc6801b0f841033ce0311dd",
".git/objects/ee/d537166aa6292e28efec6d27264d9f3e318564": "8a394882421e442fc1f9f6e0dd93ad06",
".git/objects/ef/f26162be5e5f0a1f8717334b39f40b411af717": "48df88c4c8f482691a5a69978ee2657e",
".git/objects/f1/9d615cc335a16e40590b0316a14ab83437cdc6": "796b724d9accbc2c701dfcab28603270",
".git/objects/f3/29fc071d3adc7ad2cacd0c13689562fa489c12": "4da70f499f11d980de6f89507a57834a",
".git/objects/f3/653ccfc9865216cc4cf0979751f866bcf7c9fb": "b523972231c3de7f9c38f0be860bf174",
".git/objects/f4/0a4343f78a42dcecbc79eb9f154641a420cbb8": "f89868c916656cf32f26a54621554300",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/ff/79de9f5867f4f5e157ae6d116b7aca96451671": "a2bda991d05d3713baa21f4a332e7a95",
".git/refs/heads/master": "5dacbb5f30725e717083397c0322823d",
"assets/AssetManifest.bin": "891d4a9a75ffe2c41d7bc5cc7c92cd27",
"assets/AssetManifest.json": "b964309976787de16c8756cfe707288a",
"assets/assets/images/Abdelrhman_Ragab_Cv.pdf": "9b69c24fa506ab9ed997eb6a70ef81c4",
"assets/assets/images/call.png": "1771eab084c000d09fc85334604c959d",
"assets/assets/images/chat/ch1.jpg": "3428fc51d16025c8cda2405ca3e35ed5",
"assets/assets/images/chat/ch10.jpg": "07dc9ed5a1754c5dd4780e1bbcafec36",
"assets/assets/images/chat/ch11.jpg": "aecb43bf92a98bd33b39df7a0576157b",
"assets/assets/images/chat/ch12.jpg": "e7700565823f21f1ce9b22d5310835ae",
"assets/assets/images/chat/ch13.jpg": "f33c8242396741921e9810ad4406cfc0",
"assets/assets/images/chat/ch14.jpg": "b0dc98748a9c3c4061e4ccfbfd1c4497",
"assets/assets/images/chat/ch2.jpg": "e7851c833953ea76beab24d7b5156d9e",
"assets/assets/images/chat/ch3.jpg": "7153eb10c8373c8effde184ee3a0d1cc",
"assets/assets/images/chat/ch4.jpg": "70eca71c6a3c06f6be3664012685fe2f",
"assets/assets/images/chat/ch5.jpg": "16b0a234946192757e2c45b3b8031bb7",
"assets/assets/images/chat/ch6.jpg": "c15adf27501b63f8da5b62bafe5e854d",
"assets/assets/images/chat/ch7.jpg": "0d92bc1d4f03b6f74bd2af94c7834748",
"assets/assets/images/chat/ch8.jpg": "a0f7340419d9d0cdd90e04043c8479ec",
"assets/assets/images/chat/ch9.jpg": "19d03e38614294195f5c01ad74e03d88",
"assets/assets/images/email.png": "8d73098d48176f0bc0dce3dd7b773f20",
"assets/assets/images/eq/eq1.jpg": "636d1c073006447a494b1c327a759acc",
"assets/assets/images/eq/eq1.PNG": "c68eff434e36aa944f064d081cc88177",
"assets/assets/images/eq/eq2.jpg": "bd54108aab0af28e4f770e0bc79f5c17",
"assets/assets/images/eq/eq2.PNG": "17f95dad7a1efa0e7b133073bcc79da6",
"assets/assets/images/eq/eq3.jpg": "f0bcb8a820e3055a4d98e24009d03986",
"assets/assets/images/eq/eq3.PNG": "5860ed3e27e2c71cff41ea3ef625c510",
"assets/assets/images/eq/eq4.jpg": "60d1423406cbcdd551b7e564388e86ab",
"assets/assets/images/eq/eq4.PNG": "3628fd8bc3dbb6d4798ec38454865f5c",
"assets/assets/images/exp.jpeg": "582994729a361726a7b808b0211dd9b4",
"assets/assets/images/guthub.png": "bb26e7bcfb1fa416ac26c1e03ed77272",
"assets/assets/images/linkedin.png": "f2e1d824d4bd16243707d9ae4e5a99e3",
"assets/assets/images/my.jpg": "80ca7d713a0062664ccd4e92d97ac6cd",
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
"assets/fonts/MaterialIcons-Regular.otf": "8ace62013fd8507b44701da7dca4aa90",
"assets/NOTICES": "00ca47225c6568216e6c0f40b2e71814",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "fcd908aff954fdf5fc4f9cd4b9718396",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "858e662321fd449af92fd080b791c1f7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "36c9295b4f5357e9dbc1117e28691d96",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "38b719a14b51a2153e8def95d2438d0a",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b805606439d9c1ffd152fb30a5cb29f2",
"/": "b805606439d9c1ffd152fb30a5cb29f2",
"main.dart.js": "5b3c0f664887c022c3da1b9d169f9d8c",
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

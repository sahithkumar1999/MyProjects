; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [331 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [656 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 11257817, ; 2: OxyPlot.dll => 0xabc7d9 => 206
	i32 15721112, ; 3: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 250
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 284
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 9: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 293
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 205
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 82905968, ; 14: MatBlazor => 0x4f10b70 => 174
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 268
	i32 113429830, ; 16: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 323
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 268
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 288
	i32 142721839, ; 21: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 22: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 23: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 24: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 224
	i32 176265551, ; 25: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 26: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 270
	i32 184328833, ; 27: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 28: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 322
	i32 199333315, ; 29: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 323
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 222
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 244
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 38: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 176
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 227
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 246
	i32 280482487, ; 42: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 243
	i32 280992041, ; 43: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 294
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 46: Xamarin.AndroidX.Activity.dll => 0x13031348 => 213
	i32 321597661, ; 47: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 48: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 307
	i32 342366114, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 245
	i32 356389973, ; 50: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 306
	i32 357576608, ; 51: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 294
	i32 360082299, ; 52: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 53: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 54: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 55: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 56: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 57: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 58: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 59: _Microsoft.Android.Resource.Designer => 0x17969339 => 327
	i32 403441872, ; 60: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 61: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 318
	i32 441335492, ; 62: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 228
	i32 442565967, ; 63: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 64: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 241
	i32 451504562, ; 65: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 69: System.dll => 0x1bff388e => 164
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 243
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 256
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 305
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 299
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 198
	i32 525008092, ; 76: SkiaSharp.dll => 0x1f4afcdc => 207
	i32 526420162, ; 77: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 78: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 302
	i32 527452488, ; 79: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 288
	i32 530272170, ; 80: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 81: Microsoft.Extensions.Logging => 0x20216150 => 194
	i32 540030774, ; 82: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 83: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 84: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 85: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 86: Jsr305Binding => 0x213954e7 => 281
	i32 569601784, ; 87: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 279
	i32 571435654, ; 88: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 191
	i32 577335427, ; 89: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 90: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 313
	i32 601371474, ; 91: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 92: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 93: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 94: Xamarin.AndroidX.CustomView => 0x2568904f => 233
	i32 630398832, ; 95: DrawDiagram => 0x25931f70 => 0
	i32 639843206, ; 96: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 239
	i32 643868501, ; 97: System.Net => 0x2660a755 => 81
	i32 662205335, ; 98: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 99: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 275
	i32 666292255, ; 100: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 220
	i32 672442732, ; 101: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 102: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 103: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 293
	i32 690569205, ; 104: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 105: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 290
	i32 693804605, ; 106: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 107: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 108: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 285
	i32 700358131, ; 109: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 110: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 308
	i32 709557578, ; 111: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 296
	i32 720511267, ; 112: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 289
	i32 722857257, ; 113: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 114: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 115: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 116: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 210
	i32 759454413, ; 117: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 118: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 119: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 120: Microsoft.Extensions.Options => 0x2f0980eb => 197
	i32 790371945, ; 121: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 234
	i32 804008546, ; 122: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 180
	i32 804715423, ; 123: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 124: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 248
	i32 823281589, ; 125: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 126: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 127: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 128: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 129: Xamarin.AndroidX.Print => 0x3246f6cd => 261
	i32 870878177, ; 130: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 292
	i32 873119928, ; 131: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 132: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 133: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 134: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 135: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 136: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 320
	i32 928116545, ; 137: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 284
	i32 952186615, ; 138: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 139: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 289
	i32 966729478, ; 140: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 282
	i32 967690846, ; 141: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 245
	i32 975236339, ; 142: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 143: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 144: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 145: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 146: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 147: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 324
	i32 994442037, ; 148: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 149: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 298
	i32 999186168, ; 150: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 193
	i32 1001831731, ; 151: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 152: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 265
	i32 1019214401, ; 153: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 154: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 188
	i32 1029334545, ; 155: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 295
	i32 1031528504, ; 156: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 283
	i32 1035644815, ; 157: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 218
	i32 1036536393, ; 158: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 159: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 160: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 252
	i32 1067306892, ; 161: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 162: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 163: Xamarin.Kotlin.StdLib => 0x409e66d8 => 286
	i32 1098259244, ; 164: System => 0x41761b2c => 164
	i32 1106973742, ; 165: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 185
	i32 1121599056, ; 166: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 251
	i32 1127624469, ; 167: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 196
	i32 1149092582, ; 168: Xamarin.AndroidX.Window => 0x447dc2e6 => 278
	i32 1170634674, ; 169: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 170: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 189
	i32 1175144683, ; 171: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 274
	i32 1178241025, ; 172: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 259
	i32 1178797549, ; 173: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 299
	i32 1203215381, ; 174: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 312
	i32 1204270330, ; 175: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 220
	i32 1207180087, ; 176: NeocortexApi.SdrDrawerLib => 0x47f41b37 => 326
	i32 1208641965, ; 177: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 178: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 179: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 310
	i32 1243150071, ; 180: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 279
	i32 1253011324, ; 181: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 182: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 269
	i32 1267360935, ; 183: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 273
	i32 1273260888, ; 184: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 225
	i32 1275534314, ; 185: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 290
	i32 1278448581, ; 186: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 217
	i32 1293217323, ; 187: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 236
	i32 1309188875, ; 188: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 189: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 278
	i32 1324164729, ; 190: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 191: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 192: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 193: Xamarin.AndroidX.SavedState => 0x52114ed3 => 265
	i32 1379779777, ; 194: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 195: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 196: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 229
	i32 1408764838, ; 197: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 198: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 199: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 200: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 201: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 282
	i32 1439761251, ; 202: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 203: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 204: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 205: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 190
	i32 1457743152, ; 206: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 207: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 208: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 209: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 210: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 211: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 219
	i32 1470490898, ; 212: Microsoft.Extensions.Primitives => 0x57a5e912 => 198
	i32 1479771757, ; 213: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 214: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 215: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 216: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 266
	i32 1493001747, ; 217: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 302
	i32 1514721132, ; 218: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 297
	i32 1521091094, ; 219: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 193
	i32 1536373174, ; 220: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 221: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 222: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 223: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 180
	i32 1550322496, ; 224: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 225: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 317
	i32 1554762148, ; 226: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 300
	i32 1565862583, ; 227: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 228: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 229: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 230: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 231: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 318
	i32 1582372066, ; 232: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 235
	i32 1591080825, ; 233: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 325
	i32 1592978981, ; 234: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 235: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 283
	i32 1601112923, ; 236: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 237: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 238: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 239: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 255
	i32 1622358360, ; 240: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 241: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 277
	i32 1632842087, ; 242: Microsoft.Extensions.Configuration.Json => 0x61533167 => 186
	i32 1635184631, ; 243: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 239
	i32 1636350590, ; 244: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 232
	i32 1639515021, ; 245: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 246: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 247: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 248: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 179
	i32 1657153582, ; 249: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 250: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 271
	i32 1658251792, ; 251: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 280
	i32 1670060433, ; 252: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 227
	i32 1675553242, ; 253: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 254: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 255: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 256: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 257: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 258: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 259: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 287
	i32 1701541528, ; 260: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 261: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 248
	i32 1726116996, ; 262: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 263: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 264: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 223
	i32 1736233607, ; 265: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 315
	i32 1744735666, ; 266: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 267: System.IO.Pipelines.dll => 0x68139a0d => 208
	i32 1746316138, ; 268: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 269: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 270: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 271: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 178
	i32 1763938596, ; 272: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 273: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 274: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 270
	i32 1770582343, ; 275: Microsoft.Extensions.Logging.dll => 0x6988f147 => 194
	i32 1776026572, ; 276: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 277: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 278: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1786094402, ; 279: NeocortexApi.SdrDrawerLib.dll => 0x6a75a342 => 326
	i32 1788241197, ; 280: Xamarin.AndroidX.Fragment => 0x6a96652d => 241
	i32 1808609942, ; 281: Xamarin.AndroidX.Loader => 0x6bcd3296 => 255
	i32 1809966115, ; 282: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 310
	i32 1813058853, ; 283: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 286
	i32 1813201214, ; 284: Xamarin.Google.Android.Material => 0x6c13413e => 280
	i32 1818569960, ; 285: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 260
	i32 1818787751, ; 286: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 287: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 304
	i32 1824175904, ; 288: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 289: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 290: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 195
	i32 1842015223, ; 291: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 321
	i32 1847515442, ; 292: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 210
	i32 1858542181, ; 293: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 294: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 295: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 296: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 221
	i32 1888955245, ; 297: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 298: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 299: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 300: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 301: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 302: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 303: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 304: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 307
	i32 1961813231, ; 305: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 267
	i32 1968388702, ; 306: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 182
	i32 1983156543, ; 307: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 287
	i32 1985761444, ; 308: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 212
	i32 2011961780, ; 309: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 310: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 303
	i32 2019465201, ; 311: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 252
	i32 2025202353, ; 312: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 292
	i32 2031763787, ; 313: Xamarin.Android.Glide => 0x791a414b => 209
	i32 2043674646, ; 314: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 306
	i32 2045470958, ; 315: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 316: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 184
	i32 2055257422, ; 317: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 247
	i32 2060060697, ; 318: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 319: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 320: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 192
	i32 2079903147, ; 321: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 322: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 323: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 324: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 325: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 326: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 327: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 308
	i32 2159891885, ; 328: Microsoft.Maui => 0x80bd55ad => 203
	i32 2165051842, ; 329: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 315
	i32 2181898931, ; 330: Microsoft.Extensions.Options.dll => 0x820d22b3 => 197
	i32 2192057212, ; 331: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 195
	i32 2193016926, ; 332: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 333: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 291
	i32 2201231467, ; 334: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 335: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 274
	i32 2222056684, ; 336: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 337: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 256
	i32 2252106437, ; 338: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 339: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 340: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 341: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 183
	i32 2267999099, ; 342: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 211
	i32 2270573516, ; 343: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 300
	i32 2279755925, ; 344: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 263
	i32 2289298199, ; 345: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 319
	i32 2293034957, ; 346: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 347: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 348: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 349: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 350: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 215
	i32 2320631194, ; 351: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 352: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 353: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 354: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 355: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 356: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 320
	i32 2371007202, ; 357: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 182
	i32 2378619854, ; 358: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 359: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 360: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 361: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 238
	i32 2411328690, ; 362: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 176
	i32 2421380589, ; 363: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 364: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 311
	i32 2423080555, ; 365: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 225
	i32 2435356389, ; 366: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 367: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 368: Microsoft.JSInterop.dll => 0x919672ca => 199
	i32 2454642406, ; 369: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 370: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 371: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 372: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 228
	i32 2471841756, ; 373: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 374: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 375: Microsoft.Maui.Controls => 0x93dba8a1 => 201
	i32 2483903535, ; 376: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 377: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 378: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 379: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 380: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 250
	i32 2520433370, ; 381: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 317
	i32 2522472828, ; 382: Xamarin.Android.Glide.dll => 0x9659e17c => 209
	i32 2537015816, ; 383: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 175
	i32 2538310050, ; 384: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 385: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 386: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 387: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 251
	i32 2581819634, ; 388: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 273
	i32 2585220780, ; 389: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 390: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 391: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 177
	i32 2589602615, ; 392: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 393: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 189
	i32 2605712449, ; 394: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 291
	i32 2615233544, ; 395: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 242
	i32 2616218305, ; 396: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 196
	i32 2617129537, ; 397: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 398: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 399: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 232
	i32 2624644809, ; 400: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 237
	i32 2627185994, ; 401: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 402: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 403: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 246
	i32 2663391936, ; 404: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 211
	i32 2663698177, ; 405: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 406: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 407: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 408: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 409: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 410: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 179
	i32 2693849962, ; 411: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 412: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 271
	i32 2715334215, ; 413: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 414: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 415: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 416: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 417: Xamarin.AndroidX.Activity => 0xa2e0939b => 213
	i32 2735172069, ; 418: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 419: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 175
	i32 2737747696, ; 420: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 219
	i32 2740948882, ; 421: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 422: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 423: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 202
	i32 2764765095, ; 424: Microsoft.Maui.dll => 0xa4caf7a7 => 203
	i32 2765824710, ; 425: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 426: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 285
	i32 2778768386, ; 427: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 276
	i32 2779977773, ; 428: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 264
	i32 2788224221, ; 429: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 242
	i32 2801831435, ; 430: Microsoft.Maui.Graphics => 0xa7008e0b => 205
	i32 2802068195, ; 431: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 321
	i32 2803228030, ; 432: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 433: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 298
	i32 2810250172, ; 434: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 229
	i32 2819470561, ; 435: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 436: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 437: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 264
	i32 2824502124, ; 438: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 439: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 311
	i32 2833784645, ; 440: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 181
	i32 2838993487, ; 441: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 253
	i32 2849599387, ; 442: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 443: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 276
	i32 2855708567, ; 444: Xamarin.AndroidX.Transition => 0xaa36a797 => 272
	i32 2857259519, ; 445: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 297
	i32 2861098320, ; 446: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 447: Microsoft.Maui.Essentials => 0xaa8a4878 => 204
	i32 2870099610, ; 448: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 214
	i32 2875164099, ; 449: Jsr305Binding.dll => 0xab5f85c3 => 281
	i32 2875220617, ; 450: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 451: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 316
	i32 2884993177, ; 452: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 240
	i32 2887636118, ; 453: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 454: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 178
	i32 2899753641, ; 455: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 456: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 457: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 458: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 459: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 460: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 192
	i32 2916838712, ; 461: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 277
	i32 2919462931, ; 462: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 463: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 216
	i32 2936416060, ; 464: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 465: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 466: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 467: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 468: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 469: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 470: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 236
	i32 2987532451, ; 471: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 267
	i32 2996846495, ; 472: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 249
	i32 3016983068, ; 473: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 269
	i32 3023353419, ; 474: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 475: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 244
	i32 3038032645, ; 476: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 327
	i32 3056245963, ; 477: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 266
	i32 3057625584, ; 478: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 257
	i32 3059408633, ; 479: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 480: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 481: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 482: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 304
	i32 3085392760, ; 483: OxyPlot => 0xb7e75b78 => 206
	i32 3090735792, ; 484: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 485: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 486: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 487: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 488: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 489: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 490: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 491: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 492: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 493: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 494: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 495: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 258
	i32 3192346100, ; 496: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 497: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 498: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 499: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 500: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 235
	i32 3220365878, ; 501: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 502: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 503: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 504: Xamarin.AndroidX.CardView => 0xc235e84d => 223
	i32 3265493905, ; 505: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 506: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 507: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 508: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 509: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 510: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 511: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 512: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 513: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 514: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 233
	i32 3317144872, ; 515: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 516: SkiaSharp => 0xc71a4669 => 207
	i32 3340431453, ; 517: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 221
	i32 3345895724, ; 518: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 262
	i32 3346324047, ; 519: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 259
	i32 3358260929, ; 520: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 521: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 214
	i32 3362522851, ; 522: Xamarin.AndroidX.Core => 0xc86c06e3 => 230
	i32 3366347497, ; 523: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 524: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 263
	i32 3395150330, ; 525: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 526: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 527: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 234
	i32 3406629867, ; 528: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 190
	i32 3421170118, ; 529: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 184
	i32 3428513518, ; 530: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 187
	i32 3429136800, ; 531: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 532: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 533: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 237
	i32 3445260447, ; 534: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 535: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 200
	i32 3463511458, ; 536: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 303
	i32 3464190856, ; 537: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 177
	i32 3471940407, ; 538: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 539: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 540: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 316
	i32 3485117614, ; 541: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 542: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 543: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 226
	i32 3500000672, ; 544: Microsoft.JSInterop => 0xd09dc5a0 => 199
	i32 3509114376, ; 545: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 546: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 547: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 548: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 549: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 322
	i32 3560100363, ; 550: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 551: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3571358019, ; 552: MatBlazor.dll => 0xd4de9943 => 174
	i32 3596930546, ; 553: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 296
	i32 3597029428, ; 554: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 212
	i32 3598340787, ; 555: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 556: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 557: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 295
	i32 3624195450, ; 558: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 559: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 261
	i32 3633644679, ; 560: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 216
	i32 3638274909, ; 561: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 562: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 247
	i32 3643854240, ; 563: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 258
	i32 3645089577, ; 564: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 565: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 313
	i32 3657292374, ; 566: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 183
	i32 3660523487, ; 567: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 568: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 301
	i32 3672681054, ; 569: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 570: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 222
	i32 3684561358, ; 571: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 226
	i32 3686075795, ; 572: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 309
	i32 3697841164, ; 573: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 325
	i32 3700866549, ; 574: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 575: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 231
	i32 3716563718, ; 576: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 577: Xamarin.AndroidX.Annotation => 0xdda814c6 => 215
	i32 3722202641, ; 578: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 186
	i32 3724971120, ; 579: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 257
	i32 3732100267, ; 580: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 581: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 181
	i32 3737834244, ; 582: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 583: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 584: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3758424670, ; 585: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 185
	i32 3786282454, ; 586: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 224
	i32 3792276235, ; 587: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 588: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 200
	i32 3802395368, ; 589: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 590: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 591: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 592: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 593: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 188
	i32 3844307129, ; 594: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 595: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 596: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 597: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 598: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 599: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 600: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 272
	i32 3888767677, ; 601: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 262
	i32 3889960447, ; 602: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 324
	i32 3896106733, ; 603: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 604: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 230
	i32 3901907137, ; 605: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 606: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 607: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 275
	i32 3928044579, ; 608: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 609: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 610: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 260
	i32 3945713374, ; 611: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 612: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 613: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 218
	i32 3959773229, ; 614: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 249
	i32 3980434154, ; 615: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 319
	i32 3987592930, ; 616: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 301
	i32 4003436829, ; 617: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 618: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 217
	i32 4023392905, ; 619: System.IO.Pipelines => 0xefd01a89 => 208
	i32 4025784931, ; 620: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 621: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 202
	i32 4054681211, ; 622: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 623: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 624: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 305
	i32 4073602200, ; 625: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 626: Microsoft.Maui.Essentials.dll => 0xf40add04 => 204
	i32 4099507663, ; 627: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 628: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 629: Xamarin.AndroidX.Emoji2 => 0xf479582c => 238
	i32 4102112229, ; 630: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 314
	i32 4119206479, ; 631: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 312
	i32 4125707920, ; 632: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 309
	i32 4126470640, ; 633: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 187
	i32 4127667938, ; 634: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 635: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 636: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 637: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 638: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 639: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 640: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 641: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 642: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 254
	i32 4185676441, ; 643: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 644: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 645: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 646: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 314
	i32 4256097574, ; 647: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 231
	i32 4258378803, ; 648: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 253
	i32 4260525087, ; 649: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 650: Microsoft.Maui.Controls.dll => 0xfea12dee => 201
	i32 4274976490, ; 651: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 652: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 254
	i32 4293561379, ; 653: DrawDiagram.dll => 0xffea8c23 => 0
	i32 4294648842, ; 654: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 191
	i32 4294763496 ; 655: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 240
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [656 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 206, ; 2
	i32 108, ; 3
	i32 250, ; 4
	i32 284, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 293, ; 9
	i32 30, ; 10
	i32 124, ; 11
	i32 205, ; 12
	i32 102, ; 13
	i32 174, ; 14
	i32 268, ; 15
	i32 323, ; 16
	i32 107, ; 17
	i32 268, ; 18
	i32 139, ; 19
	i32 288, ; 20
	i32 77, ; 21
	i32 124, ; 22
	i32 13, ; 23
	i32 224, ; 24
	i32 132, ; 25
	i32 270, ; 26
	i32 151, ; 27
	i32 322, ; 28
	i32 323, ; 29
	i32 18, ; 30
	i32 222, ; 31
	i32 26, ; 32
	i32 244, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 91, ; 37
	i32 176, ; 38
	i32 227, ; 39
	i32 147, ; 40
	i32 246, ; 41
	i32 243, ; 42
	i32 294, ; 43
	i32 54, ; 44
	i32 69, ; 45
	i32 213, ; 46
	i32 83, ; 47
	i32 307, ; 48
	i32 245, ; 49
	i32 306, ; 50
	i32 294, ; 51
	i32 131, ; 52
	i32 55, ; 53
	i32 149, ; 54
	i32 74, ; 55
	i32 145, ; 56
	i32 62, ; 57
	i32 146, ; 58
	i32 327, ; 59
	i32 165, ; 60
	i32 318, ; 61
	i32 228, ; 62
	i32 12, ; 63
	i32 241, ; 64
	i32 125, ; 65
	i32 152, ; 66
	i32 113, ; 67
	i32 166, ; 68
	i32 164, ; 69
	i32 243, ; 70
	i32 256, ; 71
	i32 84, ; 72
	i32 305, ; 73
	i32 299, ; 74
	i32 198, ; 75
	i32 207, ; 76
	i32 150, ; 77
	i32 302, ; 78
	i32 288, ; 79
	i32 60, ; 80
	i32 194, ; 81
	i32 51, ; 82
	i32 103, ; 83
	i32 114, ; 84
	i32 40, ; 85
	i32 281, ; 86
	i32 279, ; 87
	i32 191, ; 88
	i32 120, ; 89
	i32 313, ; 90
	i32 52, ; 91
	i32 44, ; 92
	i32 119, ; 93
	i32 233, ; 94
	i32 0, ; 95
	i32 239, ; 96
	i32 81, ; 97
	i32 136, ; 98
	i32 275, ; 99
	i32 220, ; 100
	i32 8, ; 101
	i32 73, ; 102
	i32 293, ; 103
	i32 155, ; 104
	i32 290, ; 105
	i32 154, ; 106
	i32 92, ; 107
	i32 285, ; 108
	i32 45, ; 109
	i32 308, ; 110
	i32 296, ; 111
	i32 289, ; 112
	i32 109, ; 113
	i32 129, ; 114
	i32 25, ; 115
	i32 210, ; 116
	i32 72, ; 117
	i32 55, ; 118
	i32 46, ; 119
	i32 197, ; 120
	i32 234, ; 121
	i32 180, ; 122
	i32 22, ; 123
	i32 248, ; 124
	i32 86, ; 125
	i32 43, ; 126
	i32 160, ; 127
	i32 71, ; 128
	i32 261, ; 129
	i32 292, ; 130
	i32 3, ; 131
	i32 42, ; 132
	i32 63, ; 133
	i32 16, ; 134
	i32 53, ; 135
	i32 320, ; 136
	i32 284, ; 137
	i32 105, ; 138
	i32 289, ; 139
	i32 282, ; 140
	i32 245, ; 141
	i32 34, ; 142
	i32 158, ; 143
	i32 85, ; 144
	i32 32, ; 145
	i32 12, ; 146
	i32 324, ; 147
	i32 51, ; 148
	i32 298, ; 149
	i32 193, ; 150
	i32 56, ; 151
	i32 265, ; 152
	i32 36, ; 153
	i32 188, ; 154
	i32 295, ; 155
	i32 283, ; 156
	i32 218, ; 157
	i32 35, ; 158
	i32 58, ; 159
	i32 252, ; 160
	i32 173, ; 161
	i32 17, ; 162
	i32 286, ; 163
	i32 164, ; 164
	i32 185, ; 165
	i32 251, ; 166
	i32 196, ; 167
	i32 278, ; 168
	i32 153, ; 169
	i32 189, ; 170
	i32 274, ; 171
	i32 259, ; 172
	i32 299, ; 173
	i32 312, ; 174
	i32 220, ; 175
	i32 326, ; 176
	i32 29, ; 177
	i32 52, ; 178
	i32 310, ; 179
	i32 279, ; 180
	i32 5, ; 181
	i32 269, ; 182
	i32 273, ; 183
	i32 225, ; 184
	i32 290, ; 185
	i32 217, ; 186
	i32 236, ; 187
	i32 85, ; 188
	i32 278, ; 189
	i32 61, ; 190
	i32 112, ; 191
	i32 57, ; 192
	i32 265, ; 193
	i32 99, ; 194
	i32 19, ; 195
	i32 229, ; 196
	i32 111, ; 197
	i32 101, ; 198
	i32 102, ; 199
	i32 104, ; 200
	i32 282, ; 201
	i32 71, ; 202
	i32 38, ; 203
	i32 32, ; 204
	i32 190, ; 205
	i32 103, ; 206
	i32 73, ; 207
	i32 9, ; 208
	i32 123, ; 209
	i32 46, ; 210
	i32 219, ; 211
	i32 198, ; 212
	i32 9, ; 213
	i32 43, ; 214
	i32 4, ; 215
	i32 266, ; 216
	i32 302, ; 217
	i32 297, ; 218
	i32 193, ; 219
	i32 31, ; 220
	i32 138, ; 221
	i32 92, ; 222
	i32 180, ; 223
	i32 93, ; 224
	i32 317, ; 225
	i32 300, ; 226
	i32 49, ; 227
	i32 141, ; 228
	i32 112, ; 229
	i32 140, ; 230
	i32 318, ; 231
	i32 235, ; 232
	i32 325, ; 233
	i32 115, ; 234
	i32 283, ; 235
	i32 157, ; 236
	i32 76, ; 237
	i32 79, ; 238
	i32 255, ; 239
	i32 37, ; 240
	i32 277, ; 241
	i32 186, ; 242
	i32 239, ; 243
	i32 232, ; 244
	i32 64, ; 245
	i32 138, ; 246
	i32 15, ; 247
	i32 179, ; 248
	i32 116, ; 249
	i32 271, ; 250
	i32 280, ; 251
	i32 227, ; 252
	i32 48, ; 253
	i32 70, ; 254
	i32 80, ; 255
	i32 126, ; 256
	i32 94, ; 257
	i32 121, ; 258
	i32 287, ; 259
	i32 26, ; 260
	i32 248, ; 261
	i32 97, ; 262
	i32 28, ; 263
	i32 223, ; 264
	i32 315, ; 265
	i32 149, ; 266
	i32 208, ; 267
	i32 169, ; 268
	i32 4, ; 269
	i32 98, ; 270
	i32 178, ; 271
	i32 33, ; 272
	i32 93, ; 273
	i32 270, ; 274
	i32 194, ; 275
	i32 21, ; 276
	i32 41, ; 277
	i32 170, ; 278
	i32 326, ; 279
	i32 241, ; 280
	i32 255, ; 281
	i32 310, ; 282
	i32 286, ; 283
	i32 280, ; 284
	i32 260, ; 285
	i32 2, ; 286
	i32 304, ; 287
	i32 134, ; 288
	i32 111, ; 289
	i32 195, ; 290
	i32 321, ; 291
	i32 210, ; 292
	i32 58, ; 293
	i32 95, ; 294
	i32 39, ; 295
	i32 221, ; 296
	i32 25, ; 297
	i32 94, ; 298
	i32 89, ; 299
	i32 99, ; 300
	i32 10, ; 301
	i32 87, ; 302
	i32 100, ; 303
	i32 307, ; 304
	i32 267, ; 305
	i32 182, ; 306
	i32 287, ; 307
	i32 212, ; 308
	i32 7, ; 309
	i32 303, ; 310
	i32 252, ; 311
	i32 292, ; 312
	i32 209, ; 313
	i32 306, ; 314
	i32 88, ; 315
	i32 184, ; 316
	i32 247, ; 317
	i32 154, ; 318
	i32 33, ; 319
	i32 192, ; 320
	i32 116, ; 321
	i32 82, ; 322
	i32 20, ; 323
	i32 11, ; 324
	i32 162, ; 325
	i32 3, ; 326
	i32 308, ; 327
	i32 203, ; 328
	i32 315, ; 329
	i32 197, ; 330
	i32 195, ; 331
	i32 84, ; 332
	i32 291, ; 333
	i32 64, ; 334
	i32 274, ; 335
	i32 143, ; 336
	i32 256, ; 337
	i32 157, ; 338
	i32 41, ; 339
	i32 117, ; 340
	i32 183, ; 341
	i32 211, ; 342
	i32 300, ; 343
	i32 263, ; 344
	i32 319, ; 345
	i32 131, ; 346
	i32 75, ; 347
	i32 66, ; 348
	i32 172, ; 349
	i32 215, ; 350
	i32 143, ; 351
	i32 106, ; 352
	i32 151, ; 353
	i32 70, ; 354
	i32 156, ; 355
	i32 320, ; 356
	i32 182, ; 357
	i32 121, ; 358
	i32 127, ; 359
	i32 152, ; 360
	i32 238, ; 361
	i32 176, ; 362
	i32 141, ; 363
	i32 311, ; 364
	i32 225, ; 365
	i32 20, ; 366
	i32 14, ; 367
	i32 199, ; 368
	i32 135, ; 369
	i32 75, ; 370
	i32 59, ; 371
	i32 228, ; 372
	i32 167, ; 373
	i32 168, ; 374
	i32 201, ; 375
	i32 15, ; 376
	i32 74, ; 377
	i32 6, ; 378
	i32 23, ; 379
	i32 250, ; 380
	i32 317, ; 381
	i32 209, ; 382
	i32 175, ; 383
	i32 91, ; 384
	i32 1, ; 385
	i32 136, ; 386
	i32 251, ; 387
	i32 273, ; 388
	i32 134, ; 389
	i32 69, ; 390
	i32 177, ; 391
	i32 146, ; 392
	i32 189, ; 393
	i32 291, ; 394
	i32 242, ; 395
	i32 196, ; 396
	i32 88, ; 397
	i32 96, ; 398
	i32 232, ; 399
	i32 237, ; 400
	i32 31, ; 401
	i32 45, ; 402
	i32 246, ; 403
	i32 211, ; 404
	i32 109, ; 405
	i32 158, ; 406
	i32 35, ; 407
	i32 22, ; 408
	i32 114, ; 409
	i32 179, ; 410
	i32 57, ; 411
	i32 271, ; 412
	i32 144, ; 413
	i32 118, ; 414
	i32 120, ; 415
	i32 110, ; 416
	i32 213, ; 417
	i32 139, ; 418
	i32 175, ; 419
	i32 219, ; 420
	i32 54, ; 421
	i32 105, ; 422
	i32 202, ; 423
	i32 203, ; 424
	i32 133, ; 425
	i32 285, ; 426
	i32 276, ; 427
	i32 264, ; 428
	i32 242, ; 429
	i32 205, ; 430
	i32 321, ; 431
	i32 159, ; 432
	i32 298, ; 433
	i32 229, ; 434
	i32 163, ; 435
	i32 132, ; 436
	i32 264, ; 437
	i32 161, ; 438
	i32 311, ; 439
	i32 181, ; 440
	i32 253, ; 441
	i32 140, ; 442
	i32 276, ; 443
	i32 272, ; 444
	i32 297, ; 445
	i32 169, ; 446
	i32 204, ; 447
	i32 214, ; 448
	i32 281, ; 449
	i32 40, ; 450
	i32 316, ; 451
	i32 240, ; 452
	i32 81, ; 453
	i32 178, ; 454
	i32 56, ; 455
	i32 37, ; 456
	i32 97, ; 457
	i32 166, ; 458
	i32 172, ; 459
	i32 192, ; 460
	i32 277, ; 461
	i32 82, ; 462
	i32 216, ; 463
	i32 98, ; 464
	i32 30, ; 465
	i32 159, ; 466
	i32 18, ; 467
	i32 127, ; 468
	i32 119, ; 469
	i32 236, ; 470
	i32 267, ; 471
	i32 249, ; 472
	i32 269, ; 473
	i32 165, ; 474
	i32 244, ; 475
	i32 327, ; 476
	i32 266, ; 477
	i32 257, ; 478
	i32 170, ; 479
	i32 16, ; 480
	i32 144, ; 481
	i32 304, ; 482
	i32 206, ; 483
	i32 125, ; 484
	i32 118, ; 485
	i32 38, ; 486
	i32 115, ; 487
	i32 47, ; 488
	i32 142, ; 489
	i32 117, ; 490
	i32 34, ; 491
	i32 173, ; 492
	i32 95, ; 493
	i32 53, ; 494
	i32 258, ; 495
	i32 129, ; 496
	i32 153, ; 497
	i32 24, ; 498
	i32 161, ; 499
	i32 235, ; 500
	i32 148, ; 501
	i32 104, ; 502
	i32 89, ; 503
	i32 223, ; 504
	i32 60, ; 505
	i32 142, ; 506
	i32 100, ; 507
	i32 5, ; 508
	i32 13, ; 509
	i32 122, ; 510
	i32 135, ; 511
	i32 28, ; 512
	i32 72, ; 513
	i32 233, ; 514
	i32 24, ; 515
	i32 207, ; 516
	i32 221, ; 517
	i32 262, ; 518
	i32 259, ; 519
	i32 137, ; 520
	i32 214, ; 521
	i32 230, ; 522
	i32 168, ; 523
	i32 263, ; 524
	i32 101, ; 525
	i32 123, ; 526
	i32 234, ; 527
	i32 190, ; 528
	i32 184, ; 529
	i32 187, ; 530
	i32 163, ; 531
	i32 167, ; 532
	i32 237, ; 533
	i32 39, ; 534
	i32 200, ; 535
	i32 303, ; 536
	i32 177, ; 537
	i32 17, ; 538
	i32 171, ; 539
	i32 316, ; 540
	i32 137, ; 541
	i32 150, ; 542
	i32 226, ; 543
	i32 199, ; 544
	i32 155, ; 545
	i32 130, ; 546
	i32 19, ; 547
	i32 65, ; 548
	i32 322, ; 549
	i32 147, ; 550
	i32 47, ; 551
	i32 174, ; 552
	i32 296, ; 553
	i32 212, ; 554
	i32 79, ; 555
	i32 61, ; 556
	i32 295, ; 557
	i32 106, ; 558
	i32 261, ; 559
	i32 216, ; 560
	i32 49, ; 561
	i32 247, ; 562
	i32 258, ; 563
	i32 14, ; 564
	i32 313, ; 565
	i32 183, ; 566
	i32 68, ; 567
	i32 301, ; 568
	i32 171, ; 569
	i32 222, ; 570
	i32 226, ; 571
	i32 309, ; 572
	i32 325, ; 573
	i32 78, ; 574
	i32 231, ; 575
	i32 108, ; 576
	i32 215, ; 577
	i32 186, ; 578
	i32 257, ; 579
	i32 67, ; 580
	i32 181, ; 581
	i32 63, ; 582
	i32 27, ; 583
	i32 160, ; 584
	i32 185, ; 585
	i32 224, ; 586
	i32 10, ; 587
	i32 200, ; 588
	i32 11, ; 589
	i32 78, ; 590
	i32 126, ; 591
	i32 83, ; 592
	i32 188, ; 593
	i32 66, ; 594
	i32 107, ; 595
	i32 65, ; 596
	i32 128, ; 597
	i32 122, ; 598
	i32 77, ; 599
	i32 272, ; 600
	i32 262, ; 601
	i32 324, ; 602
	i32 8, ; 603
	i32 230, ; 604
	i32 2, ; 605
	i32 44, ; 606
	i32 275, ; 607
	i32 156, ; 608
	i32 128, ; 609
	i32 260, ; 610
	i32 23, ; 611
	i32 133, ; 612
	i32 218, ; 613
	i32 249, ; 614
	i32 319, ; 615
	i32 301, ; 616
	i32 29, ; 617
	i32 217, ; 618
	i32 208, ; 619
	i32 62, ; 620
	i32 202, ; 621
	i32 90, ; 622
	i32 87, ; 623
	i32 305, ; 624
	i32 148, ; 625
	i32 204, ; 626
	i32 36, ; 627
	i32 86, ; 628
	i32 238, ; 629
	i32 314, ; 630
	i32 312, ; 631
	i32 309, ; 632
	i32 187, ; 633
	i32 50, ; 634
	i32 6, ; 635
	i32 90, ; 636
	i32 21, ; 637
	i32 162, ; 638
	i32 96, ; 639
	i32 50, ; 640
	i32 113, ; 641
	i32 254, ; 642
	i32 130, ; 643
	i32 76, ; 644
	i32 27, ; 645
	i32 314, ; 646
	i32 231, ; 647
	i32 253, ; 648
	i32 7, ; 649
	i32 201, ; 650
	i32 110, ; 651
	i32 254, ; 652
	i32 0, ; 653
	i32 191, ; 654
	i32 240 ; 655
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}

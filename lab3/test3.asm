
_test3:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "types.h"
#include "stat.h"
#include "user.h"

int main(int argc, char* argv[]) {
    1000:	55                   	push   %ebp
    1001:	89 e5                	mov    %esp,%ebp
    1003:	83 e4 f0             	and    $0xfffffff0,%esp
    1006:	83 ec 20             	sub    $0x20,%esp
	int v = argc;
    1009:	8b 45 08             	mov    0x8(%ebp),%eax
	printf(1, "%p\n", &v);
    100c:	c7 44 24 04 61 17 00 	movl   $0x1761,0x4(%esp)
    1013:	00 
    1014:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
	int v = argc;
    101b:	89 44 24 1c          	mov    %eax,0x1c(%esp)
	printf(1, "%p\n", &v);
    101f:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    1023:	89 44 24 08          	mov    %eax,0x8(%esp)
    1027:	e8 94 03 00 00       	call   13c0 <printf>
	exit();
    102c:	e8 31 02 00 00       	call   1262 <exit>
    1031:	66 90                	xchg   %ax,%ax
    1033:	66 90                	xchg   %ax,%ax
    1035:	66 90                	xchg   %ax,%ax
    1037:	66 90                	xchg   %ax,%ax
    1039:	66 90                	xchg   %ax,%ax
    103b:	66 90                	xchg   %ax,%ax
    103d:	66 90                	xchg   %ax,%ax
    103f:	90                   	nop

00001040 <strcpy>:
    1040:	55                   	push   %ebp
    1041:	89 e5                	mov    %esp,%ebp
    1043:	8b 45 08             	mov    0x8(%ebp),%eax
    1046:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    1049:	53                   	push   %ebx
    104a:	89 c2                	mov    %eax,%edx
    104c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1050:	83 c1 01             	add    $0x1,%ecx
    1053:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1057:	83 c2 01             	add    $0x1,%edx
    105a:	84 db                	test   %bl,%bl
    105c:	88 5a ff             	mov    %bl,-0x1(%edx)
    105f:	75 ef                	jne    1050 <strcpy+0x10>
    1061:	5b                   	pop    %ebx
    1062:	5d                   	pop    %ebp
    1063:	c3                   	ret    
    1064:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    106a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001070 <strcmp>:
    1070:	55                   	push   %ebp
    1071:	89 e5                	mov    %esp,%ebp
    1073:	8b 55 08             	mov    0x8(%ebp),%edx
    1076:	53                   	push   %ebx
    1077:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    107a:	0f b6 02             	movzbl (%edx),%eax
    107d:	84 c0                	test   %al,%al
    107f:	74 2d                	je     10ae <strcmp+0x3e>
    1081:	0f b6 19             	movzbl (%ecx),%ebx
    1084:	38 d8                	cmp    %bl,%al
    1086:	74 0e                	je     1096 <strcmp+0x26>
    1088:	eb 2b                	jmp    10b5 <strcmp+0x45>
    108a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1090:	38 c8                	cmp    %cl,%al
    1092:	75 15                	jne    10a9 <strcmp+0x39>
    1094:	89 d9                	mov    %ebx,%ecx
    1096:	83 c2 01             	add    $0x1,%edx
    1099:	0f b6 02             	movzbl (%edx),%eax
    109c:	8d 59 01             	lea    0x1(%ecx),%ebx
    109f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    10a3:	84 c0                	test   %al,%al
    10a5:	75 e9                	jne    1090 <strcmp+0x20>
    10a7:	31 c0                	xor    %eax,%eax
    10a9:	29 c8                	sub    %ecx,%eax
    10ab:	5b                   	pop    %ebx
    10ac:	5d                   	pop    %ebp
    10ad:	c3                   	ret    
    10ae:	0f b6 09             	movzbl (%ecx),%ecx
    10b1:	31 c0                	xor    %eax,%eax
    10b3:	eb f4                	jmp    10a9 <strcmp+0x39>
    10b5:	0f b6 cb             	movzbl %bl,%ecx
    10b8:	eb ef                	jmp    10a9 <strcmp+0x39>
    10ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000010c0 <strlen>:
    10c0:	55                   	push   %ebp
    10c1:	89 e5                	mov    %esp,%ebp
    10c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
    10c6:	80 39 00             	cmpb   $0x0,(%ecx)
    10c9:	74 12                	je     10dd <strlen+0x1d>
    10cb:	31 d2                	xor    %edx,%edx
    10cd:	8d 76 00             	lea    0x0(%esi),%esi
    10d0:	83 c2 01             	add    $0x1,%edx
    10d3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    10d7:	89 d0                	mov    %edx,%eax
    10d9:	75 f5                	jne    10d0 <strlen+0x10>
    10db:	5d                   	pop    %ebp
    10dc:	c3                   	ret    
    10dd:	31 c0                	xor    %eax,%eax
    10df:	5d                   	pop    %ebp
    10e0:	c3                   	ret    
    10e1:	eb 0d                	jmp    10f0 <memset>
    10e3:	90                   	nop
    10e4:	90                   	nop
    10e5:	90                   	nop
    10e6:	90                   	nop
    10e7:	90                   	nop
    10e8:	90                   	nop
    10e9:	90                   	nop
    10ea:	90                   	nop
    10eb:	90                   	nop
    10ec:	90                   	nop
    10ed:	90                   	nop
    10ee:	90                   	nop
    10ef:	90                   	nop

000010f0 <memset>:
    10f0:	55                   	push   %ebp
    10f1:	89 e5                	mov    %esp,%ebp
    10f3:	8b 55 08             	mov    0x8(%ebp),%edx
    10f6:	57                   	push   %edi
    10f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    10fa:	8b 45 0c             	mov    0xc(%ebp),%eax
    10fd:	89 d7                	mov    %edx,%edi
    10ff:	fc                   	cld    
    1100:	f3 aa                	rep stos %al,%es:(%edi)
    1102:	89 d0                	mov    %edx,%eax
    1104:	5f                   	pop    %edi
    1105:	5d                   	pop    %ebp
    1106:	c3                   	ret    
    1107:	89 f6                	mov    %esi,%esi
    1109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001110 <strchr>:
    1110:	55                   	push   %ebp
    1111:	89 e5                	mov    %esp,%ebp
    1113:	8b 45 08             	mov    0x8(%ebp),%eax
    1116:	53                   	push   %ebx
    1117:	8b 55 0c             	mov    0xc(%ebp),%edx
    111a:	0f b6 18             	movzbl (%eax),%ebx
    111d:	84 db                	test   %bl,%bl
    111f:	74 1d                	je     113e <strchr+0x2e>
    1121:	38 d3                	cmp    %dl,%bl
    1123:	89 d1                	mov    %edx,%ecx
    1125:	75 0d                	jne    1134 <strchr+0x24>
    1127:	eb 17                	jmp    1140 <strchr+0x30>
    1129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1130:	38 ca                	cmp    %cl,%dl
    1132:	74 0c                	je     1140 <strchr+0x30>
    1134:	83 c0 01             	add    $0x1,%eax
    1137:	0f b6 10             	movzbl (%eax),%edx
    113a:	84 d2                	test   %dl,%dl
    113c:	75 f2                	jne    1130 <strchr+0x20>
    113e:	31 c0                	xor    %eax,%eax
    1140:	5b                   	pop    %ebx
    1141:	5d                   	pop    %ebp
    1142:	c3                   	ret    
    1143:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001150 <gets>:
    1150:	55                   	push   %ebp
    1151:	89 e5                	mov    %esp,%ebp
    1153:	57                   	push   %edi
    1154:	56                   	push   %esi
    1155:	31 f6                	xor    %esi,%esi
    1157:	53                   	push   %ebx
    1158:	83 ec 2c             	sub    $0x2c,%esp
    115b:	8d 7d e7             	lea    -0x19(%ebp),%edi
    115e:	eb 31                	jmp    1191 <gets+0x41>
    1160:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1167:	00 
    1168:	89 7c 24 04          	mov    %edi,0x4(%esp)
    116c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1173:	e8 02 01 00 00       	call   127a <read>
    1178:	85 c0                	test   %eax,%eax
    117a:	7e 1d                	jle    1199 <gets+0x49>
    117c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1180:	89 de                	mov    %ebx,%esi
    1182:	8b 55 08             	mov    0x8(%ebp),%edx
    1185:	3c 0d                	cmp    $0xd,%al
    1187:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    118b:	74 0c                	je     1199 <gets+0x49>
    118d:	3c 0a                	cmp    $0xa,%al
    118f:	74 08                	je     1199 <gets+0x49>
    1191:	8d 5e 01             	lea    0x1(%esi),%ebx
    1194:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1197:	7c c7                	jl     1160 <gets+0x10>
    1199:	8b 45 08             	mov    0x8(%ebp),%eax
    119c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
    11a0:	83 c4 2c             	add    $0x2c,%esp
    11a3:	5b                   	pop    %ebx
    11a4:	5e                   	pop    %esi
    11a5:	5f                   	pop    %edi
    11a6:	5d                   	pop    %ebp
    11a7:	c3                   	ret    
    11a8:	90                   	nop
    11a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000011b0 <stat>:
    11b0:	55                   	push   %ebp
    11b1:	89 e5                	mov    %esp,%ebp
    11b3:	56                   	push   %esi
    11b4:	53                   	push   %ebx
    11b5:	83 ec 10             	sub    $0x10,%esp
    11b8:	8b 45 08             	mov    0x8(%ebp),%eax
    11bb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    11c2:	00 
    11c3:	89 04 24             	mov    %eax,(%esp)
    11c6:	e8 d7 00 00 00       	call   12a2 <open>
    11cb:	85 c0                	test   %eax,%eax
    11cd:	89 c3                	mov    %eax,%ebx
    11cf:	78 27                	js     11f8 <stat+0x48>
    11d1:	8b 45 0c             	mov    0xc(%ebp),%eax
    11d4:	89 1c 24             	mov    %ebx,(%esp)
    11d7:	89 44 24 04          	mov    %eax,0x4(%esp)
    11db:	e8 da 00 00 00       	call   12ba <fstat>
    11e0:	89 1c 24             	mov    %ebx,(%esp)
    11e3:	89 c6                	mov    %eax,%esi
    11e5:	e8 a0 00 00 00       	call   128a <close>
    11ea:	89 f0                	mov    %esi,%eax
    11ec:	83 c4 10             	add    $0x10,%esp
    11ef:	5b                   	pop    %ebx
    11f0:	5e                   	pop    %esi
    11f1:	5d                   	pop    %ebp
    11f2:	c3                   	ret    
    11f3:	90                   	nop
    11f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    11fd:	eb ed                	jmp    11ec <stat+0x3c>
    11ff:	90                   	nop

00001200 <atoi>:
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	8b 4d 08             	mov    0x8(%ebp),%ecx
    1206:	53                   	push   %ebx
    1207:	0f be 11             	movsbl (%ecx),%edx
    120a:	8d 42 d0             	lea    -0x30(%edx),%eax
    120d:	3c 09                	cmp    $0x9,%al
    120f:	b8 00 00 00 00       	mov    $0x0,%eax
    1214:	77 17                	ja     122d <atoi+0x2d>
    1216:	66 90                	xchg   %ax,%ax
    1218:	83 c1 01             	add    $0x1,%ecx
    121b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    121e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
    1222:	0f be 11             	movsbl (%ecx),%edx
    1225:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1228:	80 fb 09             	cmp    $0x9,%bl
    122b:	76 eb                	jbe    1218 <atoi+0x18>
    122d:	5b                   	pop    %ebx
    122e:	5d                   	pop    %ebp
    122f:	c3                   	ret    

00001230 <memmove>:
    1230:	55                   	push   %ebp
    1231:	31 d2                	xor    %edx,%edx
    1233:	89 e5                	mov    %esp,%ebp
    1235:	56                   	push   %esi
    1236:	8b 45 08             	mov    0x8(%ebp),%eax
    1239:	53                   	push   %ebx
    123a:	8b 5d 10             	mov    0x10(%ebp),%ebx
    123d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1240:	85 db                	test   %ebx,%ebx
    1242:	7e 12                	jle    1256 <memmove+0x26>
    1244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1248:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    124c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    124f:	83 c2 01             	add    $0x1,%edx
    1252:	39 da                	cmp    %ebx,%edx
    1254:	75 f2                	jne    1248 <memmove+0x18>
    1256:	5b                   	pop    %ebx
    1257:	5e                   	pop    %esi
    1258:	5d                   	pop    %ebp
    1259:	c3                   	ret    

0000125a <fork>:
    125a:	b8 01 00 00 00       	mov    $0x1,%eax
    125f:	cd 40                	int    $0x40
    1261:	c3                   	ret    

00001262 <exit>:
    1262:	b8 02 00 00 00       	mov    $0x2,%eax
    1267:	cd 40                	int    $0x40
    1269:	c3                   	ret    

0000126a <wait>:
    126a:	b8 03 00 00 00       	mov    $0x3,%eax
    126f:	cd 40                	int    $0x40
    1271:	c3                   	ret    

00001272 <pipe>:
    1272:	b8 04 00 00 00       	mov    $0x4,%eax
    1277:	cd 40                	int    $0x40
    1279:	c3                   	ret    

0000127a <read>:
    127a:	b8 05 00 00 00       	mov    $0x5,%eax
    127f:	cd 40                	int    $0x40
    1281:	c3                   	ret    

00001282 <write>:
    1282:	b8 10 00 00 00       	mov    $0x10,%eax
    1287:	cd 40                	int    $0x40
    1289:	c3                   	ret    

0000128a <close>:
    128a:	b8 15 00 00 00       	mov    $0x15,%eax
    128f:	cd 40                	int    $0x40
    1291:	c3                   	ret    

00001292 <kill>:
    1292:	b8 06 00 00 00       	mov    $0x6,%eax
    1297:	cd 40                	int    $0x40
    1299:	c3                   	ret    

0000129a <exec>:
    129a:	b8 07 00 00 00       	mov    $0x7,%eax
    129f:	cd 40                	int    $0x40
    12a1:	c3                   	ret    

000012a2 <open>:
    12a2:	b8 0f 00 00 00       	mov    $0xf,%eax
    12a7:	cd 40                	int    $0x40
    12a9:	c3                   	ret    

000012aa <mknod>:
    12aa:	b8 11 00 00 00       	mov    $0x11,%eax
    12af:	cd 40                	int    $0x40
    12b1:	c3                   	ret    

000012b2 <unlink>:
    12b2:	b8 12 00 00 00       	mov    $0x12,%eax
    12b7:	cd 40                	int    $0x40
    12b9:	c3                   	ret    

000012ba <fstat>:
    12ba:	b8 08 00 00 00       	mov    $0x8,%eax
    12bf:	cd 40                	int    $0x40
    12c1:	c3                   	ret    

000012c2 <link>:
    12c2:	b8 13 00 00 00       	mov    $0x13,%eax
    12c7:	cd 40                	int    $0x40
    12c9:	c3                   	ret    

000012ca <mkdir>:
    12ca:	b8 14 00 00 00       	mov    $0x14,%eax
    12cf:	cd 40                	int    $0x40
    12d1:	c3                   	ret    

000012d2 <chdir>:
    12d2:	b8 09 00 00 00       	mov    $0x9,%eax
    12d7:	cd 40                	int    $0x40
    12d9:	c3                   	ret    

000012da <dup>:
    12da:	b8 0a 00 00 00       	mov    $0xa,%eax
    12df:	cd 40                	int    $0x40
    12e1:	c3                   	ret    

000012e2 <getpid>:
    12e2:	b8 0b 00 00 00       	mov    $0xb,%eax
    12e7:	cd 40                	int    $0x40
    12e9:	c3                   	ret    

000012ea <sbrk>:
    12ea:	b8 0c 00 00 00       	mov    $0xc,%eax
    12ef:	cd 40                	int    $0x40
    12f1:	c3                   	ret    

000012f2 <sleep>:
    12f2:	b8 0d 00 00 00       	mov    $0xd,%eax
    12f7:	cd 40                	int    $0x40
    12f9:	c3                   	ret    

000012fa <uptime>:
    12fa:	b8 0e 00 00 00       	mov    $0xe,%eax
    12ff:	cd 40                	int    $0x40
    1301:	c3                   	ret    

00001302 <shm_open>:
    1302:	b8 16 00 00 00       	mov    $0x16,%eax
    1307:	cd 40                	int    $0x40
    1309:	c3                   	ret    

0000130a <shm_close>:
    130a:	b8 17 00 00 00       	mov    $0x17,%eax
    130f:	cd 40                	int    $0x40
    1311:	c3                   	ret    
    1312:	66 90                	xchg   %ax,%ax
    1314:	66 90                	xchg   %ax,%ax
    1316:	66 90                	xchg   %ax,%ax
    1318:	66 90                	xchg   %ax,%ax
    131a:	66 90                	xchg   %ax,%ax
    131c:	66 90                	xchg   %ax,%ax
    131e:	66 90                	xchg   %ax,%ax

00001320 <printint>:
    1320:	55                   	push   %ebp
    1321:	89 e5                	mov    %esp,%ebp
    1323:	57                   	push   %edi
    1324:	56                   	push   %esi
    1325:	89 c6                	mov    %eax,%esi
    1327:	53                   	push   %ebx
    1328:	83 ec 4c             	sub    $0x4c,%esp
    132b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    132e:	85 db                	test   %ebx,%ebx
    1330:	74 09                	je     133b <printint+0x1b>
    1332:	89 d0                	mov    %edx,%eax
    1334:	c1 e8 1f             	shr    $0x1f,%eax
    1337:	84 c0                	test   %al,%al
    1339:	75 75                	jne    13b0 <printint+0x90>
    133b:	89 d0                	mov    %edx,%eax
    133d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    1344:	89 75 c0             	mov    %esi,-0x40(%ebp)
    1347:	31 ff                	xor    %edi,%edi
    1349:	89 ce                	mov    %ecx,%esi
    134b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    134e:	eb 02                	jmp    1352 <printint+0x32>
    1350:	89 cf                	mov    %ecx,%edi
    1352:	31 d2                	xor    %edx,%edx
    1354:	f7 f6                	div    %esi
    1356:	8d 4f 01             	lea    0x1(%edi),%ecx
    1359:	0f b6 92 6c 17 00 00 	movzbl 0x176c(%edx),%edx
    1360:	85 c0                	test   %eax,%eax
    1362:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
    1365:	75 e9                	jne    1350 <printint+0x30>
    1367:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    136a:	89 c8                	mov    %ecx,%eax
    136c:	8b 75 c0             	mov    -0x40(%ebp),%esi
    136f:	85 d2                	test   %edx,%edx
    1371:	74 08                	je     137b <printint+0x5b>
    1373:	8d 4f 02             	lea    0x2(%edi),%ecx
    1376:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)
    137b:	8d 79 ff             	lea    -0x1(%ecx),%edi
    137e:	66 90                	xchg   %ax,%ax
    1380:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    1385:	83 ef 01             	sub    $0x1,%edi
    1388:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    138f:	00 
    1390:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1394:	89 34 24             	mov    %esi,(%esp)
    1397:	88 45 d7             	mov    %al,-0x29(%ebp)
    139a:	e8 e3 fe ff ff       	call   1282 <write>
    139f:	83 ff ff             	cmp    $0xffffffff,%edi
    13a2:	75 dc                	jne    1380 <printint+0x60>
    13a4:	83 c4 4c             	add    $0x4c,%esp
    13a7:	5b                   	pop    %ebx
    13a8:	5e                   	pop    %esi
    13a9:	5f                   	pop    %edi
    13aa:	5d                   	pop    %ebp
    13ab:	c3                   	ret    
    13ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13b0:	89 d0                	mov    %edx,%eax
    13b2:	f7 d8                	neg    %eax
    13b4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    13bb:	eb 87                	jmp    1344 <printint+0x24>
    13bd:	8d 76 00             	lea    0x0(%esi),%esi

000013c0 <printf>:
    13c0:	55                   	push   %ebp
    13c1:	89 e5                	mov    %esp,%ebp
    13c3:	57                   	push   %edi
    13c4:	31 ff                	xor    %edi,%edi
    13c6:	56                   	push   %esi
    13c7:	53                   	push   %ebx
    13c8:	83 ec 3c             	sub    $0x3c,%esp
    13cb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    13ce:	8d 45 10             	lea    0x10(%ebp),%eax
    13d1:	8b 75 08             	mov    0x8(%ebp),%esi
    13d4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    13d7:	0f b6 13             	movzbl (%ebx),%edx
    13da:	83 c3 01             	add    $0x1,%ebx
    13dd:	84 d2                	test   %dl,%dl
    13df:	75 39                	jne    141a <printf+0x5a>
    13e1:	e9 c2 00 00 00       	jmp    14a8 <printf+0xe8>
    13e6:	66 90                	xchg   %ax,%ax
    13e8:	83 fa 25             	cmp    $0x25,%edx
    13eb:	0f 84 bf 00 00 00    	je     14b0 <printf+0xf0>
    13f1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    13f4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    13fb:	00 
    13fc:	89 44 24 04          	mov    %eax,0x4(%esp)
    1400:	89 34 24             	mov    %esi,(%esp)
    1403:	88 55 e2             	mov    %dl,-0x1e(%ebp)
    1406:	e8 77 fe ff ff       	call   1282 <write>
    140b:	83 c3 01             	add    $0x1,%ebx
    140e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1412:	84 d2                	test   %dl,%dl
    1414:	0f 84 8e 00 00 00    	je     14a8 <printf+0xe8>
    141a:	85 ff                	test   %edi,%edi
    141c:	0f be c2             	movsbl %dl,%eax
    141f:	74 c7                	je     13e8 <printf+0x28>
    1421:	83 ff 25             	cmp    $0x25,%edi
    1424:	75 e5                	jne    140b <printf+0x4b>
    1426:	83 fa 64             	cmp    $0x64,%edx
    1429:	0f 84 31 01 00 00    	je     1560 <printf+0x1a0>
    142f:	25 f7 00 00 00       	and    $0xf7,%eax
    1434:	83 f8 70             	cmp    $0x70,%eax
    1437:	0f 84 83 00 00 00    	je     14c0 <printf+0x100>
    143d:	83 fa 73             	cmp    $0x73,%edx
    1440:	0f 84 a2 00 00 00    	je     14e8 <printf+0x128>
    1446:	83 fa 63             	cmp    $0x63,%edx
    1449:	0f 84 35 01 00 00    	je     1584 <printf+0x1c4>
    144f:	83 fa 25             	cmp    $0x25,%edx
    1452:	0f 84 e0 00 00 00    	je     1538 <printf+0x178>
    1458:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    145b:	83 c3 01             	add    $0x1,%ebx
    145e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1465:	00 
    1466:	31 ff                	xor    %edi,%edi
    1468:	89 44 24 04          	mov    %eax,0x4(%esp)
    146c:	89 34 24             	mov    %esi,(%esp)
    146f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    1472:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    1476:	e8 07 fe ff ff       	call   1282 <write>
    147b:	8b 55 d0             	mov    -0x30(%ebp),%edx
    147e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1481:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1488:	00 
    1489:	89 44 24 04          	mov    %eax,0x4(%esp)
    148d:	89 34 24             	mov    %esi,(%esp)
    1490:	88 55 e7             	mov    %dl,-0x19(%ebp)
    1493:	e8 ea fd ff ff       	call   1282 <write>
    1498:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    149c:	84 d2                	test   %dl,%dl
    149e:	0f 85 76 ff ff ff    	jne    141a <printf+0x5a>
    14a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14a8:	83 c4 3c             	add    $0x3c,%esp
    14ab:	5b                   	pop    %ebx
    14ac:	5e                   	pop    %esi
    14ad:	5f                   	pop    %edi
    14ae:	5d                   	pop    %ebp
    14af:	c3                   	ret    
    14b0:	bf 25 00 00 00       	mov    $0x25,%edi
    14b5:	e9 51 ff ff ff       	jmp    140b <printf+0x4b>
    14ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    14c0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    14c3:	b9 10 00 00 00       	mov    $0x10,%ecx
    14c8:	31 ff                	xor    %edi,%edi
    14ca:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14d1:	8b 10                	mov    (%eax),%edx
    14d3:	89 f0                	mov    %esi,%eax
    14d5:	e8 46 fe ff ff       	call   1320 <printint>
    14da:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    14de:	e9 28 ff ff ff       	jmp    140b <printf+0x4b>
    14e3:	90                   	nop
    14e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14e8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    14eb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    14ef:	8b 38                	mov    (%eax),%edi
    14f1:	b8 65 17 00 00       	mov    $0x1765,%eax
    14f6:	85 ff                	test   %edi,%edi
    14f8:	0f 44 f8             	cmove  %eax,%edi
    14fb:	0f b6 07             	movzbl (%edi),%eax
    14fe:	84 c0                	test   %al,%al
    1500:	74 2a                	je     152c <printf+0x16c>
    1502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1508:	88 45 e3             	mov    %al,-0x1d(%ebp)
    150b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    150e:	83 c7 01             	add    $0x1,%edi
    1511:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1518:	00 
    1519:	89 44 24 04          	mov    %eax,0x4(%esp)
    151d:	89 34 24             	mov    %esi,(%esp)
    1520:	e8 5d fd ff ff       	call   1282 <write>
    1525:	0f b6 07             	movzbl (%edi),%eax
    1528:	84 c0                	test   %al,%al
    152a:	75 dc                	jne    1508 <printf+0x148>
    152c:	31 ff                	xor    %edi,%edi
    152e:	e9 d8 fe ff ff       	jmp    140b <printf+0x4b>
    1533:	90                   	nop
    1534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1538:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    153b:	31 ff                	xor    %edi,%edi
    153d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1544:	00 
    1545:	89 44 24 04          	mov    %eax,0x4(%esp)
    1549:	89 34 24             	mov    %esi,(%esp)
    154c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    1550:	e8 2d fd ff ff       	call   1282 <write>
    1555:	e9 b1 fe ff ff       	jmp    140b <printf+0x4b>
    155a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1560:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1563:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1568:	66 31 ff             	xor    %di,%di
    156b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1572:	8b 10                	mov    (%eax),%edx
    1574:	89 f0                	mov    %esi,%eax
    1576:	e8 a5 fd ff ff       	call   1320 <printint>
    157b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    157f:	e9 87 fe ff ff       	jmp    140b <printf+0x4b>
    1584:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1587:	31 ff                	xor    %edi,%edi
    1589:	8b 00                	mov    (%eax),%eax
    158b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1592:	00 
    1593:	89 34 24             	mov    %esi,(%esp)
    1596:	88 45 e4             	mov    %al,-0x1c(%ebp)
    1599:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    159c:	89 44 24 04          	mov    %eax,0x4(%esp)
    15a0:	e8 dd fc ff ff       	call   1282 <write>
    15a5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    15a9:	e9 5d fe ff ff       	jmp    140b <printf+0x4b>
    15ae:	66 90                	xchg   %ax,%ax

000015b0 <free>:
    15b0:	55                   	push   %ebp
    15b1:	a1 24 1a 00 00       	mov    0x1a24,%eax
    15b6:	89 e5                	mov    %esp,%ebp
    15b8:	57                   	push   %edi
    15b9:	56                   	push   %esi
    15ba:	53                   	push   %ebx
    15bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    15be:	8b 08                	mov    (%eax),%ecx
    15c0:	8d 53 f8             	lea    -0x8(%ebx),%edx
    15c3:	39 d0                	cmp    %edx,%eax
    15c5:	72 11                	jb     15d8 <free+0x28>
    15c7:	90                   	nop
    15c8:	39 c8                	cmp    %ecx,%eax
    15ca:	72 04                	jb     15d0 <free+0x20>
    15cc:	39 ca                	cmp    %ecx,%edx
    15ce:	72 10                	jb     15e0 <free+0x30>
    15d0:	89 c8                	mov    %ecx,%eax
    15d2:	39 d0                	cmp    %edx,%eax
    15d4:	8b 08                	mov    (%eax),%ecx
    15d6:	73 f0                	jae    15c8 <free+0x18>
    15d8:	39 ca                	cmp    %ecx,%edx
    15da:	72 04                	jb     15e0 <free+0x30>
    15dc:	39 c8                	cmp    %ecx,%eax
    15de:	72 f0                	jb     15d0 <free+0x20>
    15e0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    15e3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    15e6:	39 cf                	cmp    %ecx,%edi
    15e8:	74 1e                	je     1608 <free+0x58>
    15ea:	89 4b f8             	mov    %ecx,-0x8(%ebx)
    15ed:	8b 48 04             	mov    0x4(%eax),%ecx
    15f0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    15f3:	39 f2                	cmp    %esi,%edx
    15f5:	74 28                	je     161f <free+0x6f>
    15f7:	89 10                	mov    %edx,(%eax)
    15f9:	a3 24 1a 00 00       	mov    %eax,0x1a24
    15fe:	5b                   	pop    %ebx
    15ff:	5e                   	pop    %esi
    1600:	5f                   	pop    %edi
    1601:	5d                   	pop    %ebp
    1602:	c3                   	ret    
    1603:	90                   	nop
    1604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1608:	03 71 04             	add    0x4(%ecx),%esi
    160b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    160e:	8b 08                	mov    (%eax),%ecx
    1610:	8b 09                	mov    (%ecx),%ecx
    1612:	89 4b f8             	mov    %ecx,-0x8(%ebx)
    1615:	8b 48 04             	mov    0x4(%eax),%ecx
    1618:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    161b:	39 f2                	cmp    %esi,%edx
    161d:	75 d8                	jne    15f7 <free+0x47>
    161f:	03 4b fc             	add    -0x4(%ebx),%ecx
    1622:	a3 24 1a 00 00       	mov    %eax,0x1a24
    1627:	89 48 04             	mov    %ecx,0x4(%eax)
    162a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    162d:	89 10                	mov    %edx,(%eax)
    162f:	5b                   	pop    %ebx
    1630:	5e                   	pop    %esi
    1631:	5f                   	pop    %edi
    1632:	5d                   	pop    %ebp
    1633:	c3                   	ret    
    1634:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    163a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001640 <malloc>:
    1640:	55                   	push   %ebp
    1641:	89 e5                	mov    %esp,%ebp
    1643:	57                   	push   %edi
    1644:	56                   	push   %esi
    1645:	53                   	push   %ebx
    1646:	83 ec 1c             	sub    $0x1c,%esp
    1649:	8b 45 08             	mov    0x8(%ebp),%eax
    164c:	8b 1d 24 1a 00 00    	mov    0x1a24,%ebx
    1652:	8d 48 07             	lea    0x7(%eax),%ecx
    1655:	c1 e9 03             	shr    $0x3,%ecx
    1658:	85 db                	test   %ebx,%ebx
    165a:	8d 71 01             	lea    0x1(%ecx),%esi
    165d:	0f 84 9b 00 00 00    	je     16fe <malloc+0xbe>
    1663:	8b 13                	mov    (%ebx),%edx
    1665:	8b 7a 04             	mov    0x4(%edx),%edi
    1668:	39 fe                	cmp    %edi,%esi
    166a:	76 64                	jbe    16d0 <malloc+0x90>
    166c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
    1673:	bb 00 80 00 00       	mov    $0x8000,%ebx
    1678:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    167b:	eb 0e                	jmp    168b <malloc+0x4b>
    167d:	8d 76 00             	lea    0x0(%esi),%esi
    1680:	8b 02                	mov    (%edx),%eax
    1682:	8b 78 04             	mov    0x4(%eax),%edi
    1685:	39 fe                	cmp    %edi,%esi
    1687:	76 4f                	jbe    16d8 <malloc+0x98>
    1689:	89 c2                	mov    %eax,%edx
    168b:	3b 15 24 1a 00 00    	cmp    0x1a24,%edx
    1691:	75 ed                	jne    1680 <malloc+0x40>
    1693:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1696:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    169c:	bf 00 10 00 00       	mov    $0x1000,%edi
    16a1:	0f 43 fe             	cmovae %esi,%edi
    16a4:	0f 42 c3             	cmovb  %ebx,%eax
    16a7:	89 04 24             	mov    %eax,(%esp)
    16aa:	e8 3b fc ff ff       	call   12ea <sbrk>
    16af:	83 f8 ff             	cmp    $0xffffffff,%eax
    16b2:	74 18                	je     16cc <malloc+0x8c>
    16b4:	89 78 04             	mov    %edi,0x4(%eax)
    16b7:	83 c0 08             	add    $0x8,%eax
    16ba:	89 04 24             	mov    %eax,(%esp)
    16bd:	e8 ee fe ff ff       	call   15b0 <free>
    16c2:	8b 15 24 1a 00 00    	mov    0x1a24,%edx
    16c8:	85 d2                	test   %edx,%edx
    16ca:	75 b4                	jne    1680 <malloc+0x40>
    16cc:	31 c0                	xor    %eax,%eax
    16ce:	eb 20                	jmp    16f0 <malloc+0xb0>
    16d0:	89 d0                	mov    %edx,%eax
    16d2:	89 da                	mov    %ebx,%edx
    16d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    16d8:	39 fe                	cmp    %edi,%esi
    16da:	74 1c                	je     16f8 <malloc+0xb8>
    16dc:	29 f7                	sub    %esi,%edi
    16de:	89 78 04             	mov    %edi,0x4(%eax)
    16e1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
    16e4:	89 70 04             	mov    %esi,0x4(%eax)
    16e7:	89 15 24 1a 00 00    	mov    %edx,0x1a24
    16ed:	83 c0 08             	add    $0x8,%eax
    16f0:	83 c4 1c             	add    $0x1c,%esp
    16f3:	5b                   	pop    %ebx
    16f4:	5e                   	pop    %esi
    16f5:	5f                   	pop    %edi
    16f6:	5d                   	pop    %ebp
    16f7:	c3                   	ret    
    16f8:	8b 08                	mov    (%eax),%ecx
    16fa:	89 0a                	mov    %ecx,(%edx)
    16fc:	eb e9                	jmp    16e7 <malloc+0xa7>
    16fe:	c7 05 24 1a 00 00 28 	movl   $0x1a28,0x1a24
    1705:	1a 00 00 
    1708:	ba 28 1a 00 00       	mov    $0x1a28,%edx
    170d:	c7 05 28 1a 00 00 28 	movl   $0x1a28,0x1a28
    1714:	1a 00 00 
    1717:	c7 05 2c 1a 00 00 00 	movl   $0x0,0x1a2c
    171e:	00 00 00 
    1721:	e9 46 ff ff ff       	jmp    166c <malloc+0x2c>
    1726:	66 90                	xchg   %ax,%ax
    1728:	66 90                	xchg   %ax,%ax
    172a:	66 90                	xchg   %ax,%ax
    172c:	66 90                	xchg   %ax,%ax
    172e:	66 90                	xchg   %ax,%ax

00001730 <uacquire>:
    1730:	55                   	push   %ebp
    1731:	b9 01 00 00 00       	mov    $0x1,%ecx
    1736:	89 e5                	mov    %esp,%ebp
    1738:	8b 55 08             	mov    0x8(%ebp),%edx
    173b:	90                   	nop
    173c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1740:	89 c8                	mov    %ecx,%eax
    1742:	f0 87 02             	lock xchg %eax,(%edx)
    1745:	85 c0                	test   %eax,%eax
    1747:	75 f7                	jne    1740 <uacquire+0x10>
    1749:	0f ae f0             	mfence 
    174c:	5d                   	pop    %ebp
    174d:	c3                   	ret    
    174e:	66 90                	xchg   %ax,%ax

00001750 <urelease>:
    1750:	55                   	push   %ebp
    1751:	89 e5                	mov    %esp,%ebp
    1753:	8b 45 08             	mov    0x8(%ebp),%eax
    1756:	0f ae f0             	mfence 
    1759:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    175f:	5d                   	pop    %ebp
    1760:	c3                   	ret    

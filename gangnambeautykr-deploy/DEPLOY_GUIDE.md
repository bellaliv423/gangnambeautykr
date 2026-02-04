# 🚀 Gangnam Beauty 빠른 배포 가이드

## 📁 STEP 1: 이미지 파일 복사 (5분)

Windows 탐색기에서 아래 파일들을 복사하세요:

### DOD 병원 이미지
```
원본: D:\AI _coding_project_all\gangnam-beauty-website\gangnam-beauty-website\html-previews\images\dod\dod_1.jpg
복사위치: D:\AI _coding_project_all\gangnam-beauty-website\gangnambeautykr-deploy\images\dod\dod_1.jpg
```

### EL 병원 이미지  
```
원본: D:\AI _coding_project_all\gangnam-beauty-website\gangnam-beauty-website\html-previews\images\el\청담_el_프로필___8_.jpg
복사위치: D:\AI _coding_project_all\gangnam-beauty-website\gangnambeautykr-deploy\images\el\el_1.jpg
⚠️ 파일명 변경 필요! → el_1.jpg
```

### SNS QR코드 이미지
```
원본 폴더: D:\AI _coding_project_all\gangnam-beauty-website\gangnam-beauty-website\public\sns.image\
복사위치: D:\AI _coding_project_all\gangnam-beauty-website\gangnambeautykr-deploy\images\sns\

복사할 파일들 (파일명 변경 필요):
- wechat_qrcode.png → wechat_qrcode.png (그대로)
- wharapp_qrcode.jpg → whatsapp_qrcode.jpg (⚠️ 이름 수정!)
- KakaoTalk_qrcode.png → kakao_qrcode.png (⚠️ 이름 수정!)
- line_logo.jpg → line_qrcode.jpg (⚠️ 이름 수정!)
```

---

## 📤 STEP 2: GitHub 업로드 (5분)

### 방법 A: GitHub Desktop (추천 - 가장 쉬움)

1. GitHub Desktop 열기
2. File → Add Local Repository
3. `D:\AI _coding_project_all\gangnam-beauty-website\gangnambeautykr-deploy` 선택
4. "Create Repository" 클릭
5. Repository name: `gangnambeautykr`
6. "Publish repository" 클릭 (Public으로 설정)

### 방법 B: 명령어 (CMD/PowerShell)

```bash
cd "D:\AI _coding_project_all\gangnam-beauty-website\gangnambeautykr-deploy"

git init
git add .
git commit -m "Initial commit - Gangnam Beauty website"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/gangnambeautykr.git
git push -u origin main
```

---

## 🌐 STEP 3: Vercel 배포 (3분)

1. https://vercel.com 접속 → GitHub 로그인
2. "Add New Project" 클릭
3. `gangnambeautykr` 저장소 선택
4. "Deploy" 클릭
5. 배포 완료! → `gangnambeautykr.vercel.app` 확인

---

## 🔗 STEP 4: 도메인 구매 & 연결 (10분)

### 4-1. Vercel에서 도메인 구매 (가장 빠름!)

1. Vercel 프로젝트 → Settings → Domains
2. "Add" 클릭 → `gangnambeautykr.com` 입력
3. "Buy" 클릭 (약 $20/년)
4. 결제 완료 → 자동 연결!

### 4-2. 다른 곳에서 구매한 경우

Namecheap, GoDaddy 등에서 구매했다면:
1. Vercel → Settings → Domains → Add
2. `gangnambeautykr.com` 입력
3. 표시된 DNS 설정을 도메인 업체에서 설정:
   - A Record: 76.76.19.19
   - CNAME: cname.vercel-dns.com

---

## ✅ 최종 체크리스트

| 단계 | 작업 | 완료 |
|------|------|------|
| 1 | 이미지 파일 복사 | ☐ |
| 2 | GitHub 업로드 | ☐ |
| 3 | Vercel 배포 | ☐ |
| 4 | 도메인 연결 | ☐ |
| 5 | 웹사이트 테스트 | ☐ |

---

## 📂 최종 폴더 구조

```
gangnambeautykr-deploy/
├── index.html          ✅ 생성완료
└── images/
    ├── dod/
    │   └── dod_1.jpg   ← 복사 필요
    ├── el/
    │   └── el_1.jpg    ← 복사 필요 (이름변경!)
    └── sns/
        ├── wechat_qrcode.png   ← 복사 필요
        ├── whatsapp_qrcode.jpg ← 복사 필요 (이름변경!)
        ├── kakao_qrcode.png    ← 복사 필요 (이름변경!)
        └── line_qrcode.jpg     ← 복사 필요 (이름변경!)
```

---

## 🎯 회의용 공유 링크

배포 완료 후 강펠 이사님께 공유할 링크:

**임시 URL:** `https://gangnambeautykr.vercel.app`
**최종 URL:** `https://gangnambeautykr.com`

---

## 💡 빠른 테스트

로컬에서 먼저 테스트하려면:
1. `gangnambeautykr-deploy` 폴더로 이동
2. `index.html` 더블클릭하여 브라우저에서 열기
3. 이미지가 제대로 나오는지 확인

---

## 📞 문제 발생 시

- 이미지 안 나옴 → 파일명/경로 확인
- 폼 제출 안 됨 → Google Apps Script URL 확인
- 배포 실패 → GitHub 저장소 public 여부 확인

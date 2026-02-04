# 🎨 Gangnam Beauty 디자인 시스템 가이드
> Design System & Technical Guide | 設計系統與技術指南

---

## 📋 目錄 / 목차

1. [色彩系統 / 컬러 시스템](#-色彩系統--컬러-시스템)
2. [字體系統 / 폰트 시스템](#-字體系統--폰트-시스템)
3. [間距與圓角 / 간격과 모서리](#-間距與圓角--간격과-모서리)
4. [動畫效果 / 애니메이션](#-動畫效果--애니메이션)
5. [技術架構 / 기술 스택](#-技術架構--기술-스택)
6. [JSX vs HTML 差異 / 차이점](#-jsx-vs-html-差異--차이점)

---

## 🎨 色彩系統 / 컬러 시스템

### 主要品牌色 / 메인 브랜드 컬러

| 名稱 | HEX 色碼 | RGB | 用途 |
|------|----------|-----|------|
| **Gold (主色)** | `#D4AF37` | rgb(212, 175, 55) | 버튼, CTA, 강조 요소 |
| **Gold Dark** | `#B8860B` | rgb(184, 134, 11) | 텍스트, 호버 상태 |
| **Gold Light** | `#F5E6B3` | rgb(245, 230, 179) | 그라디언트, 배경 |
| **Amber 600** | `#D97706` | rgb(217, 119, 6) | 호버 상태 |

### 中性色 / 중성 컬러 (Stone 팔레트)

| 名稱 | HEX 色碼 | 用途 |
|------|----------|------|
| **Stone 50** | `#FAFAF9` | 밝은 배경 |
| **Stone 100** | `#F5F5F4` | 카드 배경, 구분선 |
| **Stone 200** | `#E7E5E4` | 테두리, 구분선 |
| **Stone 400** | `#A8A29E` | 비활성 텍스트 |
| **Stone 500** | `#78716C` | 보조 텍스트 |
| **Stone 600** | `#57534E` | 본문 텍스트 |
| **Stone 800** | `#292524` | 제목, 강조 텍스트 |
| **Stone 900** | `#1C1917` | 어두운 섹션 배경 |
| **Stone 950** | `#0C0A09` | 푸터 배경 |

### 強調色 / 강조 컬러

| 名稱 | HEX 色碼 | 用途 |
|------|----------|------|
| **Pink 50** | `#FDF2F8` | Hero 배경 |
| **Pink 100** | `#FCE7F3` | 아이콘 배경 |
| **Pink 200** | `#FBCFE8` | 그라디언트 |
| **Pink 500** | `#EC4899` | 강조 링크 |
| **Pink 600** | `#DB2777` | 배지, 태그 |
| **Green 500** | `#22C55E` | WhatsApp, 성공 상태 |
| **Green 600** | `#16A34A` | WeChat, 버튼 |
| **Emerald 600** | `#059669` | WeChat 버튼 |

### 漸層效果 / 그라디언트

```css
/* 金色漸層 / 골드 그라디언트 */
.gradient-gold {
  background: linear-gradient(135deg, #D4AF37 0%, #F5E6B3 50%, #D4AF37 100%);
}

/* 玫瑰漸層 / 로즈 그라디언트 */
.gradient-rose {
  background: linear-gradient(135deg, #fdf2f8 0%, #fce7f3 50%, #fbcfe8 100%);
}

/* Hero 區塊背景 / Hero 섹션 배경 */
.hero-bg {
  background: 
    linear-gradient(135deg, rgba(253, 242, 248, 0.95) 0%, rgba(252, 231, 243, 0.9) 100%),
    /* + 金色十字圖案 패턴 */;
}

/* 診所卡片 DOD / 클리닉 카드 DOD */
.clinic-gradient-dod {
  background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
}

/* 診所卡片 EL / 클리닉 카드 EL */
.clinic-gradient-el {
  background: linear-gradient(135deg, #2d3436 0%, #636e72 100%);
}
```

---

## 🔤 字體系統 / 폰트 시스템

### 字體家族 / 폰트 패밀리

```css
/* 主要字體 (多語言支援) */
font-family: 'Noto Sans TC', 'Noto Sans SC', 'Noto Sans KR', sans-serif;

/* 標題裝飾字體 */
font-family: 'Cormorant Garamond', serif;
```

| 字體 | 用途 | 語言 |
|------|------|------|
| **Noto Sans TC** | 本文、UI | 繁體中文 |
| **Noto Sans SC** | 本文、UI | 简体中文 |
| **Noto Sans KR** | 本文、UI | 한국어 |
| **Cormorant Garamond** | 標題、Logo | 英文裝飾 |

### 字體大小 / 폰트 크기

| 用途 | Desktop | Mobile | Class |
|------|---------|--------|-------|
| Hero 標題 | 7xl (72px) | 5xl (48px) | `text-5xl md:text-7xl` |
| 區塊標題 | 5xl (48px) | 4xl (36px) | `text-4xl md:text-5xl` |
| 卡片標題 | 2xl (24px) | xl (20px) | `text-xl md:text-2xl` |
| 副標題 | xl-2xl | lg-xl | `text-lg md:text-xl` |
| 本文 | base (16px) | sm (14px) | `text-sm md:text-base` |
| 小字 | sm (14px) | xs (12px) | `text-xs md:text-sm` |

---

## 📐 間距與圓角 / 간격과 모서리

### 圓角規範 / Border Radius

| 元素 | 數值 | Class |
|------|------|-------|
| 按鈕 (小) | 9999px | `rounded-full` |
| 按鈕 (大) | 12px | `rounded-xl` |
| 卡片 | 24px | `rounded-3xl` |
| 輸入框 | 12px | `rounded-xl` |
| 圖示背景 | 16px | `rounded-2xl` |
| 頭像 | 9999px | `rounded-full` |

### 間距規範 / Spacing

| 用途 | 數值 | Class |
|------|------|-------|
| 區塊間距 | 96px | `py-24` |
| 卡片內距 | 32px | `p-8` |
| 元素間距 | 16-24px | `gap-4` ~ `gap-6` |
| 容器最大寬度 | 1280px | `max-w-7xl` |

### 陰影效果 / Box Shadow

```css
/* 卡片懸浮效果 */
.card-hover:hover {
  transform: translateY(-8px);
  box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.15);
}

/* 按鈕陰影 */
.button-shadow {
  box-shadow: 0 20px 40px -10px rgba(212, 175, 55, 0.3);
}
```

---

## ✨ 動畫效果 / 애니메이션

### 過渡動畫 / Transitions

```css
/* 卡片懸浮 */
.card-hover {
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

/* 一般過渡 */
transition-all duration-300
transition-colors duration-200
```

### 關鍵幀動畫 / Keyframes

```css
/* 淡入上升 */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* 浮動效果 */
@keyframes float {
  0%, 100% { transform: translateY(0px); }
  50% { transform: translateY(-10px); }
}

/* 閃光效果 */
@keyframes shimmer {
  0% { background-position: -200% 0; }
  100% { background-position: 200% 0; }
}
```

### 動畫延遲 / Animation Delay

```css
.delay-100 { animation-delay: 0.1s; }
.delay-200 { animation-delay: 0.2s; }
.delay-300 { animation-delay: 0.3s; }
.delay-400 { animation-delay: 0.4s; }
```

---

## 🛠 技術架構 / 기술 스택

### 核心技術 / Core Technologies

| 技術 | 版本 | 用途 |
|------|------|------|
| **React** | 18+ | UI 框架 |
| **Next.js** | 14+ | 全棧框架 |
| **TypeScript** | 5+ | 型別安全 |
| **Tailwind CSS** | 3.4+ | 樣式系統 |

### 開發工具 / Development Tools

| 工具 | 用途 |
|------|------|
| **VS Code / Cursor** | 程式碼編輯器 |
| **npm / pnpm** | 套件管理 |
| **Git** | 版本控制 |
| **Vercel** | 部署平台 |

### 專案結構 / Project Structure

```
gangnam-beauty-website/
├── src/
│   ├── app/              # 頁面路由
│   │   ├── layout.tsx    # 全域佈局
│   │   ├── page.tsx      # 首頁
│   │   └── globals.css   # 全域樣式
│   ├── components/       # 可重用組件
│   ├── locales/          # 多語言翻譯
│   │   ├── zh-TW.json    # 繁體中文
│   │   ├── zh-CN.json    # 简体中文
│   │   └── ko.json       # 한국어
│   └── lib/              # 工具函數
├── public/               # 靜態資源
├── package.json
├── tailwind.config.js
└── tsconfig.json
```

---

## 🔄 JSX vs HTML 差異 / 차이점

### 簡單比較表 / 간단 비교표

| 項目 | HTML | JSX (React) |
|------|------|-------------|
| **檔案類型** | `.html` | `.jsx` / `.tsx` |
| **執行環境** | 瀏覽器直接執行 | 需要編譯後執行 |
| **資料綁定** | 無 (需 JavaScript) | 內建 `{}` 語法 |
| **組件化** | 無原生支援 | 原生支援 |
| **狀態管理** | 需手動操作 DOM | 自動響應式更新 |
| **樣式寫法** | `class="..."` | `className="..."` |
| **事件處理** | `onclick="..."` | `onClick={...}` |

### 詳細說明 / 자세한 설명

#### 1️⃣ 語法差異 / 문법 차이

```html
<!-- HTML -->
<div class="container" onclick="handleClick()">
  <p style="color: red;">Hello</p>
</div>
```

```jsx
// JSX (React)
<div className="container" onClick={handleClick}>
  <p style={{ color: 'red' }}>Hello</p>
</div>
```

#### 2️⃣ 動態資料 / 동적 데이터

```html
<!-- HTML - 需要 JavaScript 手動更新 -->
<p id="name">Loading...</p>
<script>
  document.getElementById('name').innerText = userName;
</script>
```

```jsx
// JSX - 自動響應式更新
const [userName, setUserName] = useState('');
return <p>{userName}</p>;
// userName 改變時，自動重新渲染
```

#### 3️⃣ 組件重用 / 컴포넌트 재사용

```html
<!-- HTML - 需要複製貼上 -->
<div class="card">
  <h3>Card 1</h3>
  <p>Content 1</p>
</div>
<div class="card">
  <h3>Card 2</h3>
  <p>Content 2</p>
</div>
```

```jsx
// JSX - 組件化重用
function Card({ title, content }) {
  return (
    <div className="card">
      <h3>{title}</h3>
      <p>{content}</p>
    </div>
  );
}

// 使用
<Card title="Card 1" content="Content 1" />
<Card title="Card 2" content="Content 2" />
```

#### 4️⃣ 條件渲染 / 조건부 렌더링

```html
<!-- HTML - 需要 JavaScript -->
<div id="greeting"></div>
<script>
  if (isLoggedIn) {
    document.getElementById('greeting').innerHTML = '<p>Welcome!</p>';
  } else {
    document.getElementById('greeting').innerHTML = '<p>Please login</p>';
  }
</script>
```

```jsx
// JSX - 直接在模板中判斷
{isLoggedIn ? <p>Welcome!</p> : <p>Please login</p>}
```

#### 5️⃣ 列表渲染 / 리스트 렌더링

```html
<!-- HTML - 需要迴圈建立 -->
<ul id="list"></ul>
<script>
  const items = ['A', 'B', 'C'];
  items.forEach(item => {
    const li = document.createElement('li');
    li.textContent = item;
    document.getElementById('list').appendChild(li);
  });
</script>
```

```jsx
// JSX - 使用 map
const items = ['A', 'B', 'C'];
<ul>
  {items.map((item, i) => <li key={i}>{item}</li>)}
</ul>
```

### 優缺點比較 / 장단점 비교

#### HTML 優點 / HTML 장점
- ✅ 學習門檻低
- ✅ 不需編譯，瀏覽器直接執行
- ✅ 適合簡單靜態頁面
- ✅ SEO 友好（原生）

#### HTML 缺點 / HTML 단점
- ❌ 難以維護大型專案
- ❌ 資料與視圖分離困難
- ❌ 重複代碼多
- ❌ 動態內容處理繁瑣

#### JSX (React) 優點 / JSX 장점
- ✅ 組件化開發，易於維護
- ✅ 自動狀態管理和更新
- ✅ 大型專案結構清晰
- ✅ 豐富的生態系統
- ✅ 支援 TypeScript 型別檢查

#### JSX (React) 缺點 / JSX 단점
- ❌ 學習曲線較陡
- ❌ 需要編譯環境
- ❌ 初始載入較慢
- ❌ 需要額外 SEO 處理（Next.js 解決）

---

## 📱 響應式設計斷點 / 반응형 브레이크포인트

| 斷點 | 寬度 | Tailwind Class |
|------|------|----------------|
| Mobile | < 640px | 預設 |
| sm | ≥ 640px | `sm:` |
| md | ≥ 768px | `md:` |
| lg | ≥ 1024px | `lg:` |
| xl | ≥ 1280px | `xl:` |

---

## 📚 參考資源 / 참고 자료

- [Tailwind CSS 文檔](https://tailwindcss.com/docs)
- [React 官方文檔](https://react.dev/)
- [Next.js 文檔](https://nextjs.org/docs)
- [Google Fonts - Noto Sans](https://fonts.google.com/noto)

---

**文件版本**: 1.0.0  
**最後更新**: 2025-12-31  
**維護者**: Gangnam Beauty Tech Team
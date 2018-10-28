# -エン×交　エンジニアの交流の場をコミット

[![Product Name](image.png)](https://www.youtube.com/watch?v=G5rULR53uMk)

### 開発背景  
　とある雑誌の一面に「2度と合コンしたくない企業」というトピックがあり、エンジニアに対し「開発系にあたるとハズレ。コミュ力が弱い。目が合わない。声が小さい。合コンやってる意味がない」という散々な評価がなされていた。その理由を考えたところ、私達のチームは一般人とエンジニアの間には大きな壁があるという結論に至った。  
そこで、エンジニア同士、同じ穴のムジナでコアな話やアイデア交換、出会いを提供できるエンジニア専用のマッチングアプリの製作が決定した。  
### 製品説明  
　既存のサービスと一味違うサービスを作るため、マッチングアプリにも関わらず、食事の当日までユーザが行うことは空いている日時をカレンダーに登録するのみという特徴がある。  
マッチングの仕組みは、  
　空いている日時を入力→同じ日時で空いている人をグループ化する→グループに対して店舗がオファーを出す→当日集まる  
である。  
　ユーザ、店舗の登録内容を以下に示す。なお、ログインにはLINEのログインサービスを用いており、オファーと予約前日のリマインダー機能がある。  
ユーザ(LINEログイン)  
　・LINE表示名(変更可能)    
　・性別  
　・年齢  
　・居住地  
　・コメント(任意)  
店舗  
　・店舗名  
　・店舗URL(任意)  
　・位置情報  

### 特徴  

#### 1. 特徴1  
　確実な合コンをコミットする。  

#### 2. 特徴2  
　消極的な人が多いエンジニアが簡単に交流の場を得られるとともに、店舗側も空いている時間に集客を狙える。  

#### 3. 特徴3  
　ユーザの情報は必要最低限にしている。(写真で評価することの多い、他マッチングアプリとの差別化)  
  LINEのログイン機能、chatbotの利用により簡単で手を出しやすいサービス形態。  

### 解決できること  
　エンジニアが楽しく出会いの場を手に入れられる。  

### 今後の展望  
　chatbotを用いた空き日時の閲覧、登録、編集  
　ユーザプロフィールに細かい職種の登録、使用言語等の項目追加  
　Hotpepperなどと組み合わせて自動予約(ユーザに予算項目の追加でフィルタリングも行う)  

## 開発内容・開発技術  
　データベースに登録された空き日時から自動でグループ作成を行う  
　予約形態が店舗→ユーザ  

### 活用した技術  
　Ruby on Rails  
　LINE(ログイン,Message API)  

#### API・データ  
　LINE(Message API)  

#### フレームワーク・ライブラリ・モジュール  
　Ruby on Rails  
　　-devise  
　　-bootstrap  

#### デバイス  
　ブラウザ  
　スマートフォン  

### 独自開発技術(Hack Dayで開発したもの)  
#### 2日間に開発した独自の機能・技術  
　店舗→ユーザの半自動予約システム  

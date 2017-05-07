---
title: ＃／Data Visualization and Storytelling
date: 2016-9-3 7:30:00
tags:
- Cal Poly
- MSBA
- Storytelling
- Data Science
categories: ＃
---
![](cover.png)

為了讓自己上課不要偷懶，或乾脆在家睡覺不去上課，我打算把自己上課所學整理發布到 McK & Note 上。有興趣的人可以留意網站裡的 [#Cal Poly](https://www.mcknote.com/tags/Cal-Poly/) 標籤。這篇文章先談我 MSBA 生涯修完的第一門課。<!--more-->

## 這一年要學的東西

先簡介一下接下來會上的幾門課。根據我到目前為止的理解，Business Analytics（BA）是一門跟數據分析有關的專業，定位大約介於 Data Science 跟傳統商科之間，常見的應用情境可能是**運用數據分析工具解決商業問題**。我的完整課表在[這裡](http://www.cob.calpoly.edu/gradbusiness/degree-programs/ms-business-analytics/curriculum/)，我們在這一年裡會學的東西包括：

* 統計軟體：R、STATA、Excel、Tableau……
* 數據分析概念：Econometric、Data Management、Analytics & Mining……
* 累積初步實務經驗：最後跟著 Advisory Board 做 Project，也可以自己另外做研究

其中第一門課就是這篇要講的 *Data Visualization and Storytelling*。

## 老師和教學方法

這門課的老師是 Dr. Samuel Frame，如果你看過 *Breaking Bad* 的話，他給人的感覺（還有一些特徵）滿像 [Hank Schrader](http://breakingbad.wikia.com/wiki/Hank_Schrader)。不過他不在 DEA 工作，他是 Cal Poly 統計系的副教授，曾在 Wells Fargo 當 [Advanced Analytics Consultant](http://statistics.calpoly.edu/faculty-updates)，以及在 UC Berkeley School of Information 任教。

![](hankbeer.jpg)
<center>（Let's have some more beer charts!）</center>

　
我們從八月十一日開始上課，到上週五結束。在這兩週多裡面，我們主要學三件事：

### 使用 [Tableau](http://www.tableau.com/) 分析數據 ###

Dr. Frame 從一開始就說他會讓我們在這門課好好學 Tableau，因為 Tableau 很貴也很強，美國業界都在用 Tableau。有幾段原話是這樣的：

* 「如果我在面試 Data Analyst，對方跟我說他在做 Analytics，結果用的是 Excel，那就謝謝再聯絡啦！」
* 「R 也很好用，但網路上到處都可以學 R；Tableau 很貴，所以你們可以在這門課上好好學。」
* 「我原本只是稍微知道 Tableau，直到上次有個 Tableau 的人來我們這裡講課，看他操作我都驚呆了！」

所以我們學了怎麼用 Tableau 做各式各樣的圖，參考書是 *[Jumpstart Tableau](https://www.amazon.com/Jumpstart-Tableau-Step-Step-Visualization/dp/1484219333)*。關於 Tableau 是用來幹嘛的，還有我們學些什麼，後面再詳細講。

### 閱讀跟討論 [*Storytelling with Data*](https://www.amazon.com/Storytelling-Data-Visualization-Business-Professionals/dp/1119002257) ###

這也是另一本讓 Dr. Frame 驚呆了的書，他的原話是：

* 「我以前覺得自己還算擅長 Data Science，讀完這本書以後我覺得自己什麼都不懂。」
* 「我讀完以後覺得自己過去做的模型都有問題，所以回去跟以前同事說把一切砍掉重練。」

總之，Dr. Frame 受這本書啟發很大，所以他在課程名稱裡加了 *Storytelling*，而且把這當成上課的主軸之一。

至於這本書講什麼，我等一下也會稍微提，但老實說整本書不厚也不難，如果對 Data Visualization 的心法感興趣的人可以找來好好讀一讀。讀過以後我真心覺得這本書很適合用來入門，也可以幫助初學者建立正確的概念（而不是直接一頭栽進圖表設計或 Coding）。

### 基礎資料分析實作 ###

既然學了軟體也讀了書，每堂課剩餘的時間就是用來（一）分析一些簡單數據（二）練習分工合作跟講故事啦。Dr. Frame 每堂課都會提供 Homework 或 Group Project，內容不外乎就是要我們用 Tableau 跑一些圖表，並按照 *Storytelling with Data* 的理念說說自己的 Insights（而非 Observation）。

整門課雖然只有兩週多，但因為我們每天都在分析、說故事，最後也累積了一些經驗，包括怎麼跟組員溝通故事上或設計上的細節，還有練習英文 Presentation 等等。

以下來詳細談談 **Tableau** 跟 ***Storytelling with Data*** 兩條上課主軸。

![](calpoly.png)
<center>（用來分隔過長文章的 Cal Poly 中庭大草坪。）</center>

## Tableau、Tableau、Tableau

如前所述，Tableau 是目前美國 Data Analytics 界滿熱門的軟體，不只 Dr. Frame 這麼說，連 Duke University 的 [Coursera 課程](https://zh-tw.coursera.org/learn/analytics-tableau)也這麼提到：「業界做資料分析都在用 Tableau。」

不過，以我們在這門課碰到的功能來說，我體驗到 Tableau 最大的優點應該是**聰明**跟**便利**吧。

### 我所體會到的 Tableau 優點

**聰明**是說 Tableau 對資料的處理非常純熟，從 Import Data 到製圖都很有一套規範，可以感覺得出對 Advanced Analytics User 來說，Tableau 的操作邏輯應該是友善的。很可惜我們學 Tableau 都只是跟著 *Jumpstart Tableau* 依樣畫葫蘆，沒有從資料型態等原理開始學，所以我還不是很能掌握這套流程背後的奧妙。

**便利**則是指在 Tableau 裡可以靠簡單的拖曳資料（Dimension 或 Measure）來做出各式各樣的圖表，從最基本的 Bar Chart 到比較炫的 [Slopegraph](http://dataremixed.com/2013/12/slopegraphs-in-tableau/) 都有，對一般人來說應該滿好上手。不過，當資料有問題、需要調整的時候，以我們目前的程度也只能摸摸鼻子開 Excel 調整。

![](tableau.png)

### 未來我還想怎麼學 Tableau

所以，沿著這兩個優點，我也想講講如果繼續學 Tableau，我覺得有什麼好學的。首先是**資料庫**。從 Tableau 的 Import 選單上可以看到 Tableau 其實支援很多資料庫，包括 MySQL、Oracle、Amazon Redshift 等等，這些功能我們過去都沒碰過，我也滿好奇實際對接以後的操作。

再來是**原始碼**。其實在 Tableau 的圖形界面裡，使用者已經能用一些初階的計算式，就像在 Excel 裡面用 SUM、AVG 等函數一樣。不過其實整個 Tableau Workbook（*.twb）格式的文件都能用純文字開啟、編輯。如果能省去拖曳的工夫，並使用更進階的函數（有碰 R 的人應該懂這種感覺），相信 Tableau 用起來會強大許多。

最後談談 Tableau 的小缺點。我覺得 Tableau 在格式設定（Formatting）上沒有 Keynote 用得順手，改個字體或顏色的流暢度大概跟用 Powerpoint 差不多，有點可惜，所以後期有些圖我還是回去用 Keynote 做。不過這或許也是直接編輯原始碼就能避掉的麻煩事（想想 [CSS](https://zh.wikipedia.org/zh-tw/%E5%B1%82%E5%8F%A0%E6%A0%B7%E5%BC%8F%E8%A1%A8)）。

### Tableau 學習資源

總之，前面的「所以我們學了怎麼用 Tableau 做各式各樣的圖」，其實是帶有感嘆意味的一個結論，畢竟我們只有兩週時間，如果還要專注在 Storytelling 上，能學的大概也就那麼多。

不過，Tableau 真的是很強大的軟體，操作一段時間後就不難想像為什麼它能稱霸業界，如果之後還有時間，我會想再繼續學。如果你也有興趣，前面提到的 Duke University [Coursera 課程](https://zh-tw.coursera.org/learn/analytics-tableau)是個很好的免費資源，Udemy 上有[不錯的付費課程](https://www.udemy.com/tableau/)（不過我沒上過，無法評論），Tableau 官方也給學生[一年的免費授權](http://www.tableau.com/academic/students)。如果再加上 [*Jumpstart Tableau*](https://www.amazon.com/Jumpstart-Tableau-Step-Step-Visualization/dp/1484219333)，學 Tableau 真的沒有很難（下定決心好好學一件事可能還比較難）。

## Exploratory vs. Explanatory

除了使用 Tableau 以外，Dr. Frame 最初希望在兩週內教我們的東西，包括讓我們瞭解何謂 Storytelling，以及 Storytelling 的重要性。

從一開始 [*Storytelling with Data*](https://www.amazon.com/Storytelling-Data-Visualization-Business-Professionals/dp/1119002257) 就把資料分析的方式分成兩種：Exploratory（勘察）跟 Explanatory（解釋）。引用書中一個很傳神的例子，前者是**打開蚌殼尋找珍珠**的過程，後者是**呈現這些珍珠**的藝術。不管中間花了多少時間和精力尋找珍珠，最後觀眾面對的是結果。因此，這本書講的是如何呈現結果，幫助講者**準確傳達訊息**。

### 用心思考和用心表達

讓我驚訝的是 *Storytelling with Data* 真的把整個改善過程講得專業又具體。對比我之前寫〈{% post_link Consulting-Template-Slide-Design ＃／諮詢業的簡報設計 %}〉的狀態，我覺得自己只算個懂一點設計就急著概括整件事的人（aka noob），但本書作者 Cole Nussbaumer Knaflic 才是瞭解一切並願意好好說明的人。從[這篇訪談](https://www.youtube.com/watch?v=8EMW7io4rSI)可以知道她多年前曾在 Google 的 [People Analytics and People Operations Team](https://www.google.com/about/careers/fields-of-work/people/) 工作，累積了豐富的 Data Viz 和簡報經驗。

從這本書的[目錄](http://www.wiley.com/WileyCDA/WileyTitle/productCd-1119002257.html)（Table of Contents）可以看出作者花了很多篇幅，從各個設計細節說明**什麼才是好的 Explanatory Analysis**，包括哪些資料需要用哪種圖表來呈現，怎麼讓整體視覺乾淨又不雜亂（declutter）等等。這些方針不只來自作者自己的經驗，也基於一些經典的心理學概念，像 [Gestalt Laws of Grouping](https://en.wikipedia.org/wiki/Gestalt_psychology)、[Pre-attentive Processing](https://en.wikipedia.org/wiki/Pre-attentive_processing) 跟[記憶理論](https://zh.wikipedia.org/zh-tw/%E8%A8%98%E6%86%B6#.E6.A0.B9.E6.8D.AE.E6.8C.81.E7.BB.AD.E6.97.B6.E9.97.B4.E5.88.86.E7.B1.BB)。

說真的，當初我在這本書的 Study Guide 上看到這些內容時，真的很佩服作者。我從高中以來設計了無數簡報，卻從來沒有試著後退一步歸納這些基本規則，或許過程中也繞了一點路，做過一些困擾人的設計吧。當然，作者提供的方針不用照單全收，其中一些建議，像是不要用 Pie Chart，或用橫長條圖（Horizontal）比用直長條圖（Vertical）好，也有討論空間。但我覺得厲害的是**至少這些建議背後都有很好的理由**。

### Keep it professional

這門課的小組討論也給我類似的感覺。每個人針對一張圖表的意見都不一樣，當我們問 Dr. Frame「這張圖表該怎樣設定比較好」的時候，也常會收到 You can argue that 或 Either way maybe 等回覆。但至少大家在交流的時候都有試著往**有理有據**的方向聚焦。從 Homework 到 Group Project 跟 Final Presentation，我至少經歷十幾次討論，小從一張長條圖應該怎麼做，大到整場 Presentation 的重心為何，其中有些意見真的很棒。

如果最初我選擇閉門造車，按自己的意思把整份 PPT 做完，或許結果會看起來不錯，但實際上我可能什麼新東西都學不到，也就不會有任何成長。既然來這邊讀書，遇到新的人，討論的還是我喜歡的主題，我很慶幸當初有選擇敞開心胸和別人溝通。畢竟 Explanatory 不像 Exploratory，它沒有單一的標準，也沒有絕對的好或壞，所以過程中的討論和取捨，也算重要的經驗和磨練 Storytelling 的一部份。

## 課堂成果

最後，我把這門課的 Group Project 跟 Final Presentation 都傳到 McK & Note 的 [SlideShare](http://www.slideshare.net/mcknote) 上了：

* Group Project: [Color Considerations on a Dark Background](http://www.slideshare.net/McKNote/color-considerations-on-a-dark-background-65651637)
* Final Presentation: [The Opposite Effect: Giving the Batter the Edge](http://www.slideshare.net/McKNote/the-opposite-effect-giving-the-batter-the-edge-65651645)

這些作品也遵循 McK & Note 的 [CC-BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/) 的分享原則。如果你也想做出不錯看的簡報，與其按我們小組的半成品（？）依樣畫葫蘆，不如好好讀一讀 [*Storytelling with Data*](https://www.amazon.com/Storytelling-Data-Visualization-Business-Professionals/dp/1119002257)，然後找幾個 Topic 練習一下吧。

　
*圖片來源：[Den of Geek](http://www.denofgeek.com/tv/breaking-bad/26489/why-breaking-bads-hank-is-the-real-john-mcclane)、[Best Practices for Designing Efficient Tableau Workbook](https://www.linkedin.com/pulse/tableau-software-data-visualization-analytics-user-marina-handschin)*

---
title: ＃／Data Analytics and Mining
date: 2017-12-05 22:38:25
tags:
- Cal Poly
- MSBA
- Data Science
- Data Mining
categories: ＃
---

![](cover.jpg)

寫完了落落長的 Oracle 分享後，我想改來談談冬季學期上的另一門課 Data Analytics and Mining。當時在課堂上努力維持清醒的我，大概從沒想過接近年末還得寫這門課的心得⋯⋯。

<!--more-->

## Data Mining 現形記

在上課前我對這門課是敬畏三分的。Data Mining 是資料科學界裡非常熱門的詞，很多人一入門就先問有哪些好的 Data Mining 工具（然後就跳過 `R` 或 `Python`，以及最重要的統計了），也有不少領域的資深人士對此深惡痛絕，一談起 Data Mining，劈頭就是「依賴那種東西只會讓你們找到垃圾啦！」所以也不難想像在踏入這個領域半年之後的我，看到課名時心中是作何感想。

不過值得慶幸的是，Data Analytics and Mining，在這門課裡並沒有受到過度吹捧，Dr. Chen 所教的內容也很實用，既沒有給人「Data Mining 拯救世界」的期望，卻也讓人覺得能清楚認識這些概念真是不錯。

雖然 Data Mining 的學習不時會遇到各式各樣的經驗談（thumb of rules），繼續深究很容易就跑到了領域知識（domain knowledge）的兔子洞前，耳邊還來一句 Dr. Chen 的「我猜他們把這搞得那麼複雜，大概是為了守住飯碗吧（for job security），哈哈！」但這也讓我體認到 Data Analytics and Mining 終究只是工具。就像沒有人說用了雙人牌廚具，就會成為小當家一樣，沒有任何一個 Data Mining 的工具、概念，能幫助初學者一步成為資料分析大師。學習過程中所遇到的模糊答案，反而凸顯了這門課的工具本質。

## 教學方法和用書

這門課用的書是清華大學徐茉莉（Galit Shmueli）教授的 *[Data Mining for Business Analytics](https://www.amazon.com/Data-Mining-Business-Analytics-Applications/dp/1118729277/ref=sr_1_1?ie=UTF8&qid=1512543620&sr=8-1&keywords=xlminer)*，不過上課大多是用 Dr. Chen 的 `SAS` 投影片，兩者的敘事和知識大致相同。使用這本書的主要原因是它採用了 [XLMiner](https://www.solver.com/xlminer-data-mining)，然後 XLMiner 的優點（？）是跟 Excel 結合滿緊密，缺點是收費頗貴，出了學校基本上不太可能會用。

除了 XLMiner 以外，我們還用了 `SAS`。Dr. Chen 曾說過如果不是為了 XLMiner 跟教科書，他也滿推薦 [RapidMiner](https://rapidminer.com)。

不過誠如前言，使用哪個工具真的不是很重要。我覺得對我幫助最大的一本書，是我在修課前幾個月就開始讀的 *[Statistical Learning](https://statlearning.class.stanford.edu/)*。我忘記以前有沒有隆重推薦過這本書，網站內不但有兩位作者公開的免費電子書，還有預錄好的十週課程。全書範例以 `R` 寫成，所有概念和函數的簡介都很紮實。

我在開課不久後就把這本書讀完了，所以對不同模型、其背後的數學原理、以及如何實作都有一定了解，也能比較專注於 Dr. Chen 分享的各種經驗和奇聞。不過從知識到實作，我也曾經歷過一段轉折期。

## 小太刀、手槍、萬國公法

大家可以想像，當我讀完 *Statistical Learning* 以後，上課初期基本上總是自信滿滿。我想說從線性回歸到支持向量機（Support Vector Machine，SVM），每一種模型的原理和函式我都略知一二了，這樣下去應該沒什麼問題。結果不久之後，我就先在 Dr. Chen 的隨堂小考上栽了個大跟斗，又目睹同學在剛入門的時候就快速用 `SAS` 搭起一個個模型。

這兩件事都讓我滿震驚。那陣子晚上回家的時候，我都會重新思考自己花了兩個月讀書，到底學了些什麼。雖然我知道一些原理，但那和經驗談是兩回事；雖然我知道怎麼用 `R` 建模，但那也不代表這些模型就比 `SAS` 裡的模型更好——如果沒做好最優化和預處理，大多時候只會弄得一團亂。於是，我最常想到的結論，是坂本龍馬的[這則趣聞](https://zh.wikipedia.org/wiki/坂本龙马#走在時代前端)：

> 坂本龍馬在日本人心目中的形象是不為過去所拘泥，永遠走在時代的前端。有一則小軼事，是坂本龍馬曾對土佐勤王黨成員檜垣直治說過：「今後在室內亂鬥的情況會變多了。我喜歡小太刀，小太刀靈活，比太刀實用（當時流行太刀）。」之後直治帶了小太刀再見龍馬，他卻掏出來一柄手槍：「這比小太刀更具威力。」坂本龍馬拜勝海舟為師後，直治帶了槍再見龍馬，這次龍馬掏出一部《萬國公法》並說道：「手槍只能殺傷敵人，此書可以振興日本！」

雖然 Data Mining 不能用來決鬥，也沒辦法用來振興一國，不過這則故事的寓意很簡單：當學習者遇到完全不同的學科時，就得根據目標靈活調整學習方向。

這也呼應了前面提到的 Data Mining 的工具本質：工具本身並無好壞，如何運用，端看個人興趣和需求。我最後訂下的目標是：我希望藉著 `SAS` 等工具實現更強的建模能力，也要利用過去多累積的知識和經驗為分析把關。

## 經驗談、建模、解決方案

有了目標以後，Data Analytics & Mining 在我看來有了兩個很明顯的學習方向：

1. 淺談資料概念，以及各類模型的使用方法和注意事項，例如：
    * 線性迴歸(linear regression，也包括 logit 跟 probit）
    * 樸素貝葉斯分類器（naive bayes classifier）
    * 決策樹（decision tree）
    * 隨機森林（random forest）
    * K 平均算法（k-Means clustering）
2. 透過範例，熟悉特定應用和分析工具的操作
    * SAS 和 XLMiner（或任何其他 Data Mining 工具）
    * 基本的 cross validation 知識和模型改善方法
    * 預測銷售量、違約機率、對消費者分群等等

第二點往往會根據不同案例介紹一些介於資料和結論之間的分析框架，就像學商業分析會聽到的 MECE、~~PTSD、~~SWOT 一樣。這裡我之所以沒列出來，是因為過了快十個月以後我都忘光了，寫這篇文章的時候手邊也沒教材。有興趣的人還是可以去找書讀讀那些框架，不過也要做好半年後這些概念會從腦海中淡去的準備。

學習過程和以前的課差不多，就是概念跟實作的循環。除了認識不同模型、了解何時該使用什麼模型之外，我們也學了一些能在 cross validation 下應用的參數（parameters），像是決策樹中 [entropy](http://chem-eng.utoronto.ca/~datamining/dmc/decision_tree.htm) 的意義，或是 naive bayes 的解讀方法等等。

雖然離開學校後，我聽到業界的應用不是直接 grid search 最佳解（有耐心一點的會把玩 gradient optimization），就是乾脆直接架起神經網路。除非志在挖掘原理，這門課所學到的知識在運算力爆棚的浪潮下，對提升預測能力並不是特別實用，有時只會在睡不著的時候霸佔念頭（「那個 ensemble 的原理是什麼來著？」）。不過至少接觸過這些名詞後，看到 parameter 會比較有概念，在小規模運用上也會少走一些彎路。

而小規模應用，或者說初期分析，正是我覺得 Data Mining 實用的地方——它可以幫助我快速掌握資料的特徵，並開始對分析結果問 [so what](https://www.youtube.com/watch?v=zqNTltOGh5c)。這在不強調預測準確度（accuracy）但看重解決方案的諮詢業裡顯得非常重要。

## 工作上的 Data Mining

比方說，當我很懶得一行一行比對資料的相似度時，我可以跑 kMeans cluster；當我看不清資料的起伏時，我可以用線性回歸簡單釐清變因（不過當然得算進{% post_link Advanced-Econometrics-II 季節性 %}等因素），或是用決策樹劃分資料。課堂上學到的知識，可以讓我在建模時免於犯下致命失誤，並合理解讀分析結果，但我也不會為了一兩個百分點的準確度斤斤計較。

有人可能會說，這種程度的應用不是跟 Data Visualization 很像嗎？我確實覺得 Data Mining 就像 *Data Visualization without Visualization*。兩者都可以幫助分析者看見資料，只是 Data Mining 不靠圖片罷了，這在處理複雜資料時也是個優點。

因此，在 Data Mining、Data Visualization 和 Data Management (SQL) 等輕便能力的輔助下，我能在很短的時間內開始對資料提出問題，並在過度沈迷於資料分析前，將自己引回提出問題、解決問題的正道上。這樣的應用固然和我前面提到的轉折和定位有關。

回到 Data Mining 的工具性本質，我想每位初學者或一聽到 Data Mining 就渾身不舒服的資深人士，都可以試著想想作為一件中性的工具，Data Mining 可以為自己手上的工作帶來哪些價值。

## 推薦的工具和資源



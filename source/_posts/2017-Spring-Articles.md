---
title: ＃／這半年發生的事
date: 2017-5-1 7:30:00
tags:
- MBA
- HBS
- Cal Poly
categories: ＃
---
{% asset_img cover.jpg %}
　
哈囉各位讀者，不好意思 McK & Note 又度過了緩慢更新的一個月。雖然接近畢業的我平常沒什麼空發文，但這半年也經歷了不少事情。為了避免之後忘記，也為了給等待中的各位一個交代，以下是我未來打算發布的內容。

<!--more-->

## 冬季學期的兩門課

和秋季學期一樣，我會將冬季學期的課程筆記整理成兩篇~~落落長又不知所云~~的文章。這兩門課分別是：

### Advanced Economitrics II

這門課談的是針對時間序列資料（Time Series Data）的分析方法，更具體一點說，就是 [ARIMA 模型](https://zh.wikipedia.org/wiki/ARIMA模型)。好奇如何處理時間序列資料的讀者，其實可以直接去上 Datacamp 上 Professor David Stoffer 開的 [*ARIMA Modeling with R*](https://www.datacamp.com/courses/arima-modeling-with-r) 了。我們上的內容跟這門課有九成像，用的教科書也是 Professor Stoffer 所寫的 [*Time Series Analysis and Its Applications: With R Examples*](https://www.amazon.com/Time-Analysis-Its-Applications-Statistics/dp/3319524518/)。想充份掌握時間資料型態的讀者，還可以再上一門 [*Manipulating Time Series Data in R with xts & zoo*](https://www.datacamp.com/courses/manipulating-time-series-data-in-r-with-xts-zoo)。整體來說這是一門偏簡單和應用的課程，與其說學會什麼強大的新方法，不如說學會如何避免處理時間序列資料的謬誤，這我會在文章裡詳細講。

### Data Mining

另一門課是學習如何利用 SAS 統計軟體做 Data Mining。由於使用 SAS 並不需要特別擔心 Optimization 或 Manipulation 等問題，比起我之前接觸過的課程和資源，這門課更強調各種分析方法的應用、比較與檢驗，像是如何 oversample 或 cross validate，但對運作原理著墨不多。簡而言之，這真的是一門頗重應用的課，算是大幅降低了資料分析的門檻，進而訓練資料分析的直覺。學這門課的時候，我不時會想到坂本龍馬[有關小太刀、手槍和萬國公法的軼事](https://zh.wikipedia.org/zh-tw/%E5%9D%82%E6%9C%AC%E9%BE%99%E9%A9%AC#.E8.B5.B0.E5.9C.A8.E6.99.82.E4.BB.A3.E5.89.8D.E7.AB.AF)，因為對當時的我來說，掌握新的技術並展望應用，又比學習理論來得重要一點。有興趣的讀者可以花點時間了解一下何謂 Data Mining，倒不用特別找 SAS 相關的資源。

## 以及兩個 Projects

春季學期除了兩門課以外，另一門課的時間就用來做兩門 projects。考慮到保密性，我不會在文章裡提供任何截圖或詳細描述，但會談設計想法、採用技術和學到的教訓。

### Oracle Analytics Challenge

第一個 project 是為 Oracle 分析雲端市場的業務和銷售資料，並提出發展建議。這是我第一次用 `R` 處理如此龐大的實際資料，也在途中學會了 `Shiny`、`Leaflet`、`Plotly` 和 `DataTable` 等套件。最後我和隊友完成了兩個成熟的 dashboard，提出了完整的資料分析方案，並獲得了 Best Data Science 的殊榮，這週三我們會去 Oracle 總部和高管們匯報成果。這個 project 讓我對 presentation design 產生了新的想法（這應該是我這輩子第一次設計 live demo），也是我首次自己思考如何設計分析流程和講故事。當然也體驗了很多自己還待加強的能力。雖然沒學到或用到物件導向設計（？）但還算是個不錯的經驗。

### Dignity Health Big Data Challenge

第二個 project 則是為西岸頗具規模的醫療集團 Dignity Health 分析急診放射科的資料，並建議改善方向。比起上個 project，這個 project 對資料清理的要求比較高，而且由於沒有設限目標，我們也更需要主動發想分析方向。最後我們想出了一個還算有創意（但後來發現其實有先例）、用於改善醫療品質的分析方法，完成了一個專注在預測準度（accuracy）的模型，以及一個用來加強解釋程度的 dashboard。雖然最後止步於決選名單，但我在這個 project 裡對模型的意義有更深的思考，也更了解不論演算法如何演進，終究只是解決方案的一部分。


## 一場全國競賽

在兩個 projects 之間，我和三位 MSBA 和 MBA 同學代表 Cal Poly 參加了今年由 3M 贊助的 [Iowa MBA Business Analytics Case Competition](http://tippie.biz.uiowa.edu/full-time-mba/competition/)。從釋出資料到報告，比賽為期兩週，目的是為 3M 的銷售資料提供可靠的報告系統和建議。我們運用了 RNN（LSTM）和 STL 模型，並由我負責完成了一個整合所有內容的 dashboard。雖然最後沒得名，但首次參賽的 Cal Poly 已經給評審和 3M 留下了很 quant 的印象。當然有機會和 Director 和 Dean 去 Iowa 走走也是個很不錯的經驗。除了談我們做了什麼，我也會談此行觀察到 3M 等企業目前對 Data Science 的想法。

## 一次（難忘的）申請經驗

在上一篇〈{% post_link East-Coast-MBA-Trip 規劃一趟美東 MBA 之旅 %}〉裡，我提了很多關於學校的觀察，但~~故意~~沒提我其實申請了本輪 HBS 2+2 Program。雖然最終無緣面試，但經過了長達三個月的認真準備後，我認為這對之後的申請是很寶貴的經驗，有太多不能忘掉的細節，也需要讓更多大學生知道這類機會的存在~~，更不能因為失敗了就抹掉黑歷史~~，所以我會寫一篇完整的準備過程，並談談事後的分析、心態調整、以及未來規劃。這應該也會是最長的一篇文章。

## 還沒想好的一份計畫

除了上面提到的 MBA 申請規劃以外，去年寫完的〈{% post_link One-Year-Five-Year 最近的規劃 %}〉放到今天來看已經有點不合時宜，所以也是時候想想新的計畫。我希望能結合自己至今學習 Data Science 和在美生活的想法，談談未來我想增強哪方面的能力和機會。但除此之外，我也想談 McK & Note 未來的規劃（沒有停寫，只有晚寫），或是我對 Data Science 和 Consulting 的看法。老實說經歷了以上成敗後，現在的我其實還在調整腳步、找尋新的目標，也不保證能寫出像去年一樣明確又熱血的計畫，不過等我有了主意也會誠實寫成一篇文章。

## 有的沒的 Side Projects

最後，除了上述內容，我還想寫幾篇關於 Cal Poly、英文口說練習、讀過的書等文章。這幾個月其實 McK & Note 的網站也有了一些變化，所以我也想整理第三篇架站筆記。

{% asset_img next_train.jpg %}

## 所以我說這些文章到底要寫多久

一口氣開了這麼多支票，相信知道我一個月寫一篇文章的讀者，都會捏把冷汗。的確，如果再算上春季學期的課程跟 project，還有工作之後的閱讀筆記跟心得，這樣下去只會越欠越多。不過由於我這學期的課外活動差不多告一段落，我打算在暑假前把這些文章寫完，畢竟事情隔了太久，忘了或感覺變了也不好。寫完這篇文章之後，我會開始寫冬季學期的課程，然後以比平常稍微快的速度寫完上面的內容。

有些讀者可能注意到我以前一週寫兩三篇文章，自從讀了 master 以後變慢成一個月一篇。由於這一年過得真的很忙碌，而且我對 McK & Note 的寫作方向，漸漸傾向紀錄更長遠的內容，而非一開始計劃的閱讀和評論，所以不但事情紀錄得慢，文章也變得越來越厚重。我誠心對每個月等待許久又耐心讀完文章的讀者們感到抱歉和感謝，也希望各位在等待期間不忘善用[過去提到的資源](https://www.mcknote.com/categories/M/)。

　
*走走拍拍：Highland Dr、MBTA Harvard*
---
title: ＃／Oracle Analytics Challenge
date: 2017-5-15 7:30:00
tags:
- MSBA
- Oracle
- Cal Poly
- Data Science
categories: ＃
---
![Oracle Air Show](cover.jpg)
　
這是我開始學 Data Science 後做的第一個專案，也是我第一次負責完整的分析流程：從了解資料、釐清問題，到團隊合作、打造可持續的解決方案。收下了 Best Data Science 的殊榮後，我們的旅途才正要開始。

<!--more-->

如果說這一年我在 SLO 過著類似夢境的生活，站在 Oracle 演講廳展示成果的那一刻，大概是我最不想醒來的時候吧。畢竟連我自己都很難相信，去年八月還在學 *{% post_link DataCamp-12 Introduction to R %}* 的我，能和隊友在三個月內完成一個有模有樣的解決方案，並獲得評審青睞，受邀到 Oracle 總部~~吃吃喝喝~~。過程中，出於對思考和美感的堅持，我學會了很多以前沒學過~~也懶得學~~的工具，也領悟了很多過去沒想過的事，這都對我未來職涯很有幫助。

在這篇文章中，我想談我們小組如何摸索資料分析的故事線、設計和溝通，並且考慮到保密性以及對同伴們的尊重，我不會談任何細節，還請各位讀者見諒，不過希望剩下的內容一樣有幫助。

> This article is mainly about the team dynamics experience and design thinking I had during the project. Complying with the Code of Conduct at Cal Poly MSBA program, I do not talk about any specific detail, demonstrate the end results, or supply business insights in any way.

## 課程安排和準備

冬季學期的安排是兩門課程和兩個專案，分別是：

* *{% post_link Advanced-Econometrics-II Advanced Econometrics II %}*：時間序列分析
* *Data Analytics and Mining*：SAS 建模
* *Oracle Analytics Challenge*
* *Dignity Health Big Data Challenge*

雖然比起秋季學期少了一門課，但由於兩個專案完全就是時間的無底洞，加上教授們營造的分組競爭，以及我個人反覆無常的得失心，冬季學期的課業遠比一開始看起來重得多。針對兩個專案所做的培訓包括小組討論、進度安排等等，技術上則以之前學的內容（請參見 [Cal Poly](https://www.mcknote.com/tags/Cal-Poly/) 標籤）和該學期的 *Data Analytics and Mining* 為基礎。

由於這些內容跟實際的解決問題、調和小組進度、建模和資料視覺化還是有段距離，我感覺大概有 80% 的內容是在死線驅使下自己摸索出來的。況且在接下來的內容和 *Data Analytics and Mining* 的分享裡，我也會提到工具和模型的使用本身並不難，注意使用情況和解讀也只是其次，最難也最重要的還是圍繞著模型、構築而成的解決方案。比方說，針對資料建了模型或做了圖表以後，我們會問的問題包括：

1. **這個結果正確嗎？**
   這是最基本、最常也最該被問的問題。Data Manipulation 本質上是一個取捨資料特性的過程，不管是取平均、加總還是創造 dummy variable 都會微調資料所傳遞的訊息。這時，在整個分析過程中不斷問「我在追逐什麼」、「資料背後有哪些假設」很重要。

2. **正確的話，這個結果代表什麼？**
   這和第一點是類似的思考，只不過涉及更多 domain knowledge。為了瞭解問題是什麼、問題的輕重和改進空間，就得下工夫理解資料提供者的觀點。當然，讀者可能會問「可是我又不是醫生、工程師⋯⋯，怎樣才算做足功課？」我會說可以先以了解結果意義為目標。

3. **如何改善這個結果？**
   一樣，這和第二點是類似的問題，不過換成了由研究者構思可行的解決方案。雖然一個疑慮是「如果連他們都解決不了，我能解決什麼」，但我認為研究者的價值在於不同能力和觀點，以及所採取的不同方法，所以根據分析而得的「曲線拯救」方案，往往就是價值所在。

這三個問題，就像~~國中課文裡的三個篩子~~三條高速公路一樣載運生硬的分析結果，並成為觸及整個解決方案的主軸。有玩過 SimCity 或 Cities Skyline 的讀者，應該理解在大學附近多蓋幾條高路公路的重要性吧？我相信理想上的解決方案，也應該給人遊覽一座城市的感覺。

![習回大城市](xifat.jpg)

## 三個月，五組贏家

言歸正傳，在 Oracle Analytics Challenge 裡我們班被分為五個小組，目標是為 Oracle 分析產品推廣。說到 Oracle 的產品，有點概念的讀者應該知道 [Oracle 的產品線](https://www.oracle.com/products/oracle-a-z.html)真的是五花八門。要在這麼龐大的資料裡尋找商機，確實不是很容易的事，不過久而久之也能觀察到各組採取的不同方法。有些擅長 due diligence 的同學，花了一兩週就對產品的功能和定位暸若指掌；有些擅長建模的同學，則馬上著手測試各種模型~~；幾位外號叫「大食客」的同學則以開會之名行品酒之實~~。三個月下來，我相信大家對自己在小組中的定位都有更深的了解，因此不論成果如何，這三個月內全班五組都收穫頗豐。

最後我們組 Team 5 和 Team 4 共同受邀到 Oracle 發表。從成果來看，我們採取的分析角度不同，側重的面向也不同。在我這個光說不練科技宅的影響下，我們組做的方向比較偏為 Oracle 打造可持續的分析工具，「一套任何人都可以接手繼續研究的資訊平台」，相較之下在具體建議方面就比較薄弱；另一組比較強調具體建議，所以雖然分析上沒有用什麼太瘋狂的分析方法，但提出了很多別出心裁的建議。由於兩組做的方向不太一樣，而且都做得很好，最後 Oracle 就選 Team 4 為 Best Recommendation 的冠軍組，我們則是 Best Data Science 的代表。

老實說，現在想想以資料分析和得出 insights 為目標的話，Team 4 做的內容才是比較切題的。一位在場的業界人士和我分享，如果這是一場 Hackathon 的話，五組裡面只有我們符合資格；但換句話說，如果這是一場嚴格以建議和預測為目的的競賽，我們也是最接近失格的一組。對此真的很感謝 Oracle 破格肯定我們的成果，不過會採取這樣的切入點，也和我們一連串的評估和設計思考有關。

![Oracle Team USA](oracle_team.jpg)

## 在打造火箭的路上

考慮到資料分析能力和研究的最大價值，我們從一開始（有點反常地）就不以模型和建議為主要目的。由於 Oracle 是全球第二大的軟體公司，我們不難想像它們已經有很成熟的資料分析體系，也相信不管是能力或規模，憑我們這群學生的能力都很難正面交鋒，所以當我們坐下來思考怎樣的分析才能對 Oracle 產生最大效益時，我是這麼說服組員的：

{% cq %}
We're not going to build a rocket in eight weeks, 
but we should pass on our end results and help them build the rocket.
{% endcq %}

由於組員們背景也以商業為主，我們同意這是我們能做好、也對 Oracle 比較有益的定位。在我們達成共識後，衍生出來的設計思考包括（ㄧ）可處理新資料的分析架構、（二）淺顯易懂的資料準備過程、（三）完整的 tutorial 和 documentation，當然開源和可持續性也成了必備條件。說到這裡，的確已經和打造工具有幾分相似了。雖然我們並沒有忽視資料分析過程中重要的 insights，但在這些前提下，我們所提的建議難免給人一種「這是用來示範如何使用這套系統」的感覺，這也是我們跟 Team 4 比較大的差異。

不過在看過 Team 4 的發表之後，我看到了就算能力和規模無法匹敵，學生們還是能提出 Oracle 意想不到的建議，也反省了自己先前採取的定位，是否迴避了一些責任。就成果而言，因為採取以上的定位而使得成果更加豐富，算是一件好事，Team 5 也很榮幸能為 MBSA 的歷史記下一筆「打造分析工具」的紀錄。我只是想提醒讀者，建議和方法並不是完全分離的兩件事情，以上的設計思考不僅適用於打造工具，開源、合理和可持續同時也是提出好建議的重要基礎，所以可別抱著「我不提建議，只打造工具」的心態去踢館。永遠要以客戶所需為目標。

決定好方向以後，我們的研究包括「定性或定量」、「提出或驗證假設」兩個主軸。平常組員們會用 Tableau 等工具視覺化資料，我也會試著建立簡單的模型，回報比較重要的變量。這樣的工作大概持續了三週，一面思考產品們的定位，一面挖掘潛在商機。直到第五週的中期發表前，我才開始思考如何整合前面提到的三個設計思考。

## 好，來做 Dashboard 吧！

剛才沒提到 Oracle 針對此次競賽所提供的獎品。為了讓戰況更加火熱，在一開始的專案介紹裡 Oracle 提到會供勝出隊伍去上 Professor [Edward Tufte](https://en.wikipedia.org/wiki/Edward_Tufte) 的 Data Visualization 培訓課程，從 Oracle 高管們介紹可以看出他們都是 Edward 的忠實粉絲。在中期發表前一週，我想起了這件事，並從圖書館借了四本 Edward 的書：

* [*Envisioning Information*](https://www.amazon.com/Envisioning-Information-Edward-R-Tufte/dp/0961392118/ref=asap_bc?ie=UTF8)
* [*Beautiful Evidence*](https://www.amazon.com/Beautiful-Evidence-Edward-R-Tufte/dp/0961392177/ref=asap_bc?ie=UTF8)
* [*The Visual Display of Quantitative Information*](https://www.amazon.com/Visual-Display-Quantitative-Information/dp/0961392142/ref=asap_bc?ie=UTF8)
* [*Visual Explanations*](https://www.amazon.com/Visual-Explanations-Quantities-Evidence-Narrative/dp/0961392126/ref=la_B000APET3Y_1_4?s=books&ie=UTF8&qid=1494111757&sr=1-4)

由於四本書的內容多到可以寫另外一篇談 Data Visualization 的文章了，我就先簡單說 Edward 影響我的思考。這四本書沒有一本是談具體的圖表怎麼畫，或如何使用 Data Visualization 的相關套件等等⋯⋯相反地，Edward 深刻分析了自古而來人類如何透過視覺理解資訊，並給出許多關於分析和溝通的實例和建議。其中一項影響我最深的思考，可以在這份摘錄 [*The Cognitive Style of PowerPoint*](http://www.inf.ed.ac.uk/teaching/courses/pi/2016_2017/phil/tufte-powerpoint.pdf)（PDF，726 KB）中讀到。

Edward 批評了傳統的 Powerpoint 能表達的內容不多，而且過於繁冗的 bullet points 只會讓文件更難懂。他舉了[哥倫比亞事故](https://zh.wikipedia.org/zh-hant/%E5%93%A5%E4%BC%A6%E6%AF%94%E4%BA%9A%E5%8F%B7%E8%88%AA%E5%A4%A9%E9%A3%9E%E6%9C%BA%E7%81%BE%E9%9A%BE)中 NASA 的內部文件為反例，並告誡 PowerPoint 在某些方面有著資訊過於片面的問題。讀完這些內容後，我了解到溝通應該要能讓聽眾體驗分析過程，也開始思考該如何整合上面提到的設計思考。於是，在進入第五週前，我跟組員們說「我要做一套供使用者探索資料的互動式 Dashboard，請告訴我你們感興趣的角度」。

現在想想，這的確是有點獨斷的想法，而且在那之後我幾乎把 80% 的時間都投入在 Dashboard 上，從一開始的學習，到之後不斷改進效率和功能，換在其他狀況下可能是個很冒險的決定。不過考慮到前面提到的可持續性、開源、設計和溝通，我應該還是會選擇走相同的路。幸好接下來幾週我學得很快，也清楚該用怎樣的工具或方法做出理想中的成品。最後這套方法獲得了 Oracle 首席 Data Scientist 的青睞。

### 簡易的分析和設計

說穿了，我們的設計流程分成四個很簡單的步驟，這是我們在幾週工作下來摸索出的切入角度。

1. 整理和初步分析資料，提出和驗證假設
2. 建模，著重 variable importance，並選出最重要的幾個變量（Dashboard）
3. 根據重要變量觀察和歸納資料特徵（Dashboard）
4. 藉由比較得出潛在的改進空間

中間做了兩個 Dashboard 負責探索和視覺化的內容。雖然我不能分享任何截圖，讀者可以參考這篇 Cal Poly OCOB 發出的[新聞稿](http://www.cob.calpoly.edu/newsevents/oracle-2017)，圖片是我們組在報告第二個 Dashboard。所以這套包含分析、設計、研究和思考的過程，符合了前面提到的各種設計，也成了一個很完整的解決方案。美中不足的是，報告中我們在第四點只有點到幾個有趣的市場，並沒有根據每個市場提出更深入的建議。不過我們也展示了這類研究的可行性。

### 採用的工具

這邊是一些我在過程中用到或學到的工具。整體而言我們有滿完整的工作流程，~~雖然沒有學到物件導向設計~~也足以應付各種狀況。很多時候我是先發想預期效果，才去 Stack Overflow、Quora 等地尋找解答，並花上幾小時自學相關內容，所以雖然上學期我幾乎沒空完成完整課程，也在過程中學了不少 Data Science 界的街頭智慧。目的和意義永遠先於工具，別受必學的障礙限制，也別安於這樣就好的想法。

#### `R`

在沒有碰 Deep Learning 的情況下，`R` 自然是我的首選。我用 `R` 完成了大部分的 Data Cleaning & Manipulation，並建了幾個試驗性的模型和圖表。下面提到的套件，有幾個也很需要 `R` 的基本功，大體來說我對 `R` 和 `RStudio` 所構築而成的工作流程非常滿意。

#### `R Markdown`

身為 Content Coordinator，我用了 [`R Markdown`](http://rmarkdown.rstudio.com/) 紀錄了分析過程中的每個步驟，最後建了一個完整的 documentation [網站](http://rmarkdown.rstudio.com/rmarkdown_websites.html)。雖然 `R Markdown` 並不是協作度最高的方案，但在生成 document 上綽綽有餘，最終成果看起來非常專業。撇開 `R` 的內容，我之前也在架站筆記中強力推薦學習 `Markdown`。

#### `Shiny`

由 `ui` 和 `server` 兩方面所組成的 [`Shiny`](https://shiny.rstudio.com/) 架構是此次建立 Dashboard 的核心套件。便利的 [Shiny Widget](http://shiny.rstudio.com/gallery/widgets.html)、聰明（也需要時間掌握）的 [Reactive 設計](https://shiny.rstudio.com/articles/reactivity-overview.html)、和[豐富的支援列表](https://shiny.rstudio.com/gallery/)讓 `Shiny` 在互動式內容上幾乎無所不能。如果懂得使用 `HTML` 和 `CSS`，在樣式設計上應該會感到如魚得水，不過就算只具備 `R` 的知識，不用擔心前端的設計，也能直接設計後端的資料處理流程。對 `R` 的使用者而言，能直接使用 `Shiny` 真的是一大福音。

#### `Leaflet`

[`Leaflet`](https://rstudio.github.io/leaflet/) 是一套用於繪製互動式地理資料的套件，如[新聞稿](http://www.cob.calpoly.edu/newsevents/oracle-2017)所示，我們的第二個 Dashboard 基本上就是由 `Leaflet` 所組成。使用 `Leaflet` 時最好對 [Spatial Data Types](https://rstudio-pubs-static.s3.amazonaws.com/172289_67a42eebbd574197b6bb15d1ef6cfe97.html) 有些概念，因為本質上 `Leaflet` 所接受的資料是個包含向量圖案和資料的大表格。除此之外 `Leaflet` 很易用，功能很強大，也很符合預期效果。

#### `Plotly`

[`Plotly`](https://plot.ly/) 也是另一個支援互動圖表的套件，不過用途比 `Leaflet` 更廣，通吃各種常見的圖表，如長條圖、散點圖等等。唯一的缺點（或障礙）是 `Plotly` 支援的圖表種類太多，功能和支援詳細程度不一，有時會遇到部署困難或繁雜的問題。撇開這點，我相信 `Plotly` 是和 `D3`、`Google Charts` 並列的強大互動式圖表套件。

#### `DataTable`

[`DataTable`](https://rstudio.github.io/DT/) 是個很便利的互動式表格 Widget，可以提供和 Excel 相近的預覽效果。雖然 `kable` 也能畫出不錯的表格，但資料一多就變得很冗長；`DataTable` 提供的互動元素可以解決收納問題。除此之外，`DataTable` 有很完整的輸出、排序等功能，連按鈕功能都可以自訂，彈性很高。

#### `SAS`

或許會讓某些讀者感到驚訝，我們在建模上採用的是 `SAS`。這一方面當然是因為 Cal Poly 有買，不過更重要的原因是 `SAS` 簡單、可靠的建模流程，讓其他 coding 能力中上的組員也能體驗建模的樂趣（？），從而達到更平衡的分工。在某些方面 `SAS` 的處理方法和能力也比 `R` 裡的統計套件更穩定，在不特別追求彈性的前提下，`SAS` 是個省時省力的方案。

#### `Tableau`

除了 `SAS` 之外，我們用了之前

## Not Because It's Easy

{% cq %}
~~We are going to build the dashboards,
and they're going to pay for them.~~
{% endcq %}

不好意思，引錯句子了，我想說的是下面這段：

{% cq %}
We choose to build the dashboards,
not because they're easy, 
but because they're hard.
{% endcq %}


![Oracle Campus](redwood_shore.jpg)

## 八小時公路旅行

## 是的，我都了解

回想起來了嗎，凱洛爾
故事，既不是資訊也不是資訊的累積
而是思考出來的結果

## 再次感謝

　
*走走拍拍：Oracle Corporation 500*
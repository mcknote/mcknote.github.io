---
title: ＃／Oracle Analytics Challenge（中）
date: 2017-5-16 7:30:00
tags:
- MSBA
- Oracle
- Cal Poly
- Data Science
categories: ＃
---
![Oracle Team USA](oracle_team.jpg)

在確定了資料分析的方向之後，Team 5 開始了日復一日的探索。不過，為了得出更深入的 insights，以及讓聽眾理解整個分析流程，在期中發表前，我們做了一個重要的決定。這篇文章來談打造 Dashboard 的過程。

<!--more-->

## 好，來做 Dashboard 吧！

{% post_link Cal-Poly-Oracle-Analytics-Challenge-2017-1 上一篇 %}沒提到 Oracle 針對此次競賽所提供的獎品。為了讓戰況更加火熱，在一開始的專案介紹裡 Oracle 提到會供勝出隊伍去上 Professor [Edward Tufte](https://en.wikipedia.org/wiki/Edward_Tufte) 的 Data Visualization 培訓課程，從 Oracle 高管們介紹可以看出他們都是 Edward 的忠實粉絲。在期中發表前一週，我想起了這件事，並從圖書館借了四本 Edward 的書：

* [*Envisioning Information*](https://www.amazon.com/Envisioning-Information-Edward-R-Tufte/dp/0961392118/ref=asap_bc?ie=UTF8)
* [*Beautiful Evidence*](https://www.amazon.com/Beautiful-Evidence-Edward-R-Tufte/dp/0961392177/ref=asap_bc?ie=UTF8)
* [*The Visual Display of Quantitative Information*](https://www.amazon.com/Visual-Display-Quantitative-Information/dp/0961392142/ref=asap_bc?ie=UTF8)
* [*Visual Explanations*](https://www.amazon.com/Visual-Explanations-Quantities-Evidence-Narrative/dp/0961392126/ref=la_B000APET3Y_1_4?s=books&ie=UTF8&qid=1494111757&sr=1-4)

由於四本書的內容多到可以寫另外一篇談 Data Visualization 的文章了，我就先簡單說 Edward 影響我的思考。這四本書沒有一本是談具體的圖表怎麼畫，或如何使用 Data Visualization 的相關套件等等⋯⋯相反地，Edward 深刻分析了自古而來人類如何透過視覺理解資訊，並給出許多關於分析和溝通的實例和建議。其中一項影響我最深的思考，可以在這份摘錄 [*The Cognitive Style of PowerPoint*](http://www.inf.ed.ac.uk/teaching/courses/pi/2016_2017/phil/tufte-powerpoint.pdf)（PDF，726 KB）中讀到。

Edward 批評了傳統的 Powerpoint 能表達的內容不多，而且過於繁冗的 bullet points 只會讓文件更難懂。他舉了[哥倫比亞事故](https://zh.wikipedia.org/zh-hant/%E5%93%A5%E4%BC%A6%E6%AF%94%E4%BA%9A%E5%8F%B7%E8%88%AA%E5%A4%A9%E9%A3%9E%E6%9C%BA%E7%81%BE%E9%9A%BE)中 NASA 的內部文件為反例，並告誡 PowerPoint 在某些方面有著資訊過於片面的問題。讀完這些內容後，我了解到溝通應該要能讓聽眾體驗分析過程，也開始思考該如何整合上面提到的設計思考。於是，在進入第五週前，我跟組員們說「我要做一套供使用者探索資料的互動式 Dashboard，請告訴我你們感興趣的角度」。

現在想想，這的確是有點獨斷的想法，而且在那之後我幾乎把 80% 的時間都投入在 Dashboard 上，從一開始的學習，到之後不斷改進效率和功能，換在其他狀況下可能是個很冒險的決定。不過考慮到前面提到的可持續性、開源、設計和溝通，我應該還是會選擇走相同的路。幸好接下來幾週我學得很快，也清楚該用怎樣的工具或方法做出理想中的成品。最後這套方法獲得了 Oracle 首席 Data Scientist 的青睞。

## 簡易的分析和設計

說穿了，我們的設計流程分成四個很簡單的步驟，這是我們在幾週工作下來摸索出的切入角度。

1. 整理和初步分析資料，提出和驗證假設
2. 建模，著重 variable importance，並選出最重要的幾個變量（Dashboard I）
3. 根據重要變量觀察和歸納資料特徵（Dashboard II）
4. 藉由比較得出潛在的改進空間

中間做了兩個 Dashboard 負責探索和視覺化的內容。雖然我不能分享任何截圖，讀者可以參考這篇 Cal Poly OCOB 發出的[新聞稿](http://www.cob.calpoly.edu/newsevents/oracle-2017)，圖片是我們組在報告第二個 Dashboard。所以這套包含分析、設計、研究和思考的過程，符合了前面提到的各種設計，也成了一個很完整的解決方案。美中不足的是，報告中我們在第四點只有點到幾個有趣的市場，並沒有根據每個市場提出更深入的建議。不過我們也展示了這類研究的可行性。

## 採用的工具

這邊是一些我在過程中用到或學到的工具。整體而言我們有滿完整的工作流程，~~雖然沒有學到物件導向設計~~也足以應付各種狀況。很多時候我是先發想預期效果，才去 Stack Overflow、Quora 等地尋找解答，並花上幾小時自學相關內容，所以雖然上學期我幾乎沒空完成完整課程，也在過程中學了不少 Data Science 界的街頭智慧。目的和意義永遠先於工具，別受必學的障礙限制，也別安於這樣就好的想法。

### `R`

在不打算碰 Deep Learning 的情況下，`R` 自然是我的首選。我用 `R` 完成了大部分的 Data Cleaning & Manipulation，並建了幾個試驗性的模型和圖表。下面提到的套件，有幾個也很需要 `R` 的基本功，大體來說我對 `R` 和 `RStudio` 所構築而成的工作流程非常滿意。

### `R Markdown`

身為 Content Coordinator，我用了 [`R Markdown`](http://rmarkdown.rstudio.com/) 紀錄了分析過程中的每個步驟，最後建了一個完整的 documentation [網站](http://rmarkdown.rstudio.com/rmarkdown_websites.html)。雖然 `R Markdown` 並不是協作度最高的方案，但在生成 document 上綽綽有餘，最終成果看起來非常專業。撇開 `R` 的內容，我之前也在架站筆記中強力推薦學習 `Markdown`。

### `Shiny`

由 `ui` 和 `server` 兩方面所組成的 [`Shiny`](https://shiny.rstudio.com/) 架構是此次建立 Dashboard 的核心套件。便利的 [Shiny Widget](http://shiny.rstudio.com/gallery/widgets.html)、聰明（也需要時間掌握）的 [Reactive 設計](https://shiny.rstudio.com/articles/reactivity-overview.html)、和[豐富的支援列表](https://shiny.rstudio.com/gallery/)讓 `Shiny` 在互動式內容上幾乎無所不能。如果懂得使用 `HTML` 和 `CSS`，在樣式設計上應該會感到如魚得水，不過就算只具備 `R` 的知識，不用擔心前端的設計，也能直接設計後端的資料處理流程。對 `R` 的使用者而言，能直接使用 `Shiny` 真的是一大福音。

### `Leaflet`

[`Leaflet`](https://rstudio.github.io/leaflet/) 是一套用於繪製互動式地理資料的套件，如[新聞稿](http://www.cob.calpoly.edu/newsevents/oracle-2017)所示，我們的第二個 Dashboard 基本上就是由 `Leaflet` 所組成。使用 `Leaflet` 時最好對 [Spatial Data Types](https://rstudio-pubs-static.s3.amazonaws.com/172289_67a42eebbd574197b6bb15d1ef6cfe97.html) 有些概念，因為本質上 `Leaflet` 所接受的資料是個包含向量圖案和資料的大表格。除此之外 `Leaflet` 很易用，功能很強大，也很符合預期效果。

### `Plotly`

[`Plotly`](https://plot.ly/) 也是另一個支援互動圖表的套件，不過用途比 `Leaflet` 更廣，通吃各種常見的圖表，如長條圖、散點圖等等。唯一的缺點（或障礙）是 `Plotly` 支援的圖表種類太多，功能和支援詳細程度不一，有時會遇到部署困難或繁雜的問題。撇開這點，我相信 `Plotly` 是和 `D3`、`Google Charts` 並列的強大互動式圖表套件。

### `DataTable`

[`DataTable`](https://rstudio.github.io/DT/) 是個很便利的互動式表格 Widget，可以提供和 Excel 相近的預覽效果。雖然 `kable` 也能畫出不錯的表格，但資料一多就變得很冗長；`DataTable` 提供的互動元素可以解決收納問題。除此之外，`DataTable` 有很完整的輸出、排序等功能，連按鈕功能都可以自訂，彈性很高。

### `SAS`

或許會讓某些讀者感到驚訝，我們在建模上採用的是 `SAS`。這一方面當然是因為 Cal Poly 有買，不過更重要的原因是 `SAS` 簡單、可靠的建模流程，讓其他 coding 能力中上的組員也能體驗建模的樂趣（？），從而達到更平衡的分工。在某些方面 `SAS` 的處理方法和能力也比 `R` 裡的統計套件更穩定，在不特別追求彈性的前提下，`SAS` 是個省時省力的方案。

### `Tableau`

除了 `SAS` 之外，有些組員用了去年學的 `Tableau` 生成基本分析圖表。雖然我已經退化到搞不清楚該怎麼拖曳 variables，但班上還是有不少同學習慣用 `Tableau`，也是個溝通 business insights 的好工具。另外 `Tableau` 也是建立互動式內容的解決方案之一。

## 一些小提醒

除了 `R`、`SAS` 和 `Tableau` 以外，我學這些工具的方法通常是直接 fork sample code 再根據自己所需慢慢改進，所以一開始花了很多時間試錯。我會建議比較不魯莽的學習方法，是跟著說明文件走一遍。

在使用這些工具時，除了釐清目的之外需要有心理準備的一點，是這些工具的使用並不是特別難，但大部分的時間是在做 Data Manipulation，將資料有效率的轉換為套件支援的格式。以 `Plotly` 為例，由於各種圖表的維護和更新相對獨立，在散點圖所做的更動，在長條圖上不一定適用，所以就有許多時間花在嘗試和修改上。這點套用在其他套件上也成立，而且等應用一多，還得考慮到 optimization 跟 work flow 等問題。

雖然打造 Dashboard 不算一件很輕鬆的事，我也因此體會到了許多過去沒想過的問題，像是如何安排 Dashboard 裡的 data flow、如何根據不同的用戶行為設計功能、以及最重要的，如何讓探索資料成為一件（和遊覽城市一樣）有趣的事。當時，在我的履歷上，我是一位 MSBA 學生；在我的腦海裡，我是個 Dashboard 開發者；但在我的心裡，我和觀眾一樣，都想更了解資料（[？](https://zh.wikipedia.org/wiki/%E5%B2%A9%E7%94%B0%E8%81%B0)）。

## 探索和解釋之間的平衡

於是經過兩天左右的開發，在期中發表前我完成了各位在新聞稿中看到的 Dashboard II，不過時至今日，我都還在思考 Dashboard 定位和功能。一直到 Oracle Analytics Challenge 接近尾聲時，我讀到了 MIT Review 上的 [*The Dark Secret at the Heart of AI*](https://www.technologyreview.com/s/604087/the-dark-secret-at-the-heart-of-ai/)，才漸漸理解 Dashboard 調和故事線的重要性。不管是 Edward 的提醒也好，還是 MIT Review 中提到的問題也好，都意外地包含在當初我們設想的框架（framework）內。

為了讓 Oracle 方面理解我們的分析流程，並能隨時接手擴大規模（scalibility），我們從一開始強調明確的問題解決框架、敘事邏輯、和分析中每個步驟的可執行性，並用兩個 Dashboard 展示 research 和 insights，以及做了一個很完整的 documentation 網站。我會說探索和解釋並不是兩件分開的事情，如果一開始忘了解釋，事後才加 Dashboard 或許效果也不會太好。唯有在每個步驟留意自己想傳達的訊息，才能維持故事線的連貫性（consistency）。各位讀者不妨先從思考上一篇文章提到的三個問題開始：

1. **這個結果正確嗎？**
2. **正確的話，這個結果代表什麼？**
3. **如何改善這個結果？**

下一篇文章我會談期末報告時 live demo 的心得，以及最近才剛結束的 Oracle 總部之旅。

　
*走走拍拍：Oracle Campus*
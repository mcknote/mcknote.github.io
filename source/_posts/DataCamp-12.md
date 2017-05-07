---
title: ＃／DataCamp 上十二門課
date: 2016-10-31 7:30:00
tags:
- DataCamp
- MSBA
- Statistics
- Data Science
- R
categories: ＃
---
![](cover.jpg)

一整個月都沒發文實在不妙，所以我決定趁十月最後一天（美西時間），~~吃老本~~為入門者介紹上次提到的 DataCamp 課程，有空再來自白為何 McK & Note 停擺了一個多月。
<!--more-->

## 為什麼要修這些課？

在利用 DataCamp 上的課程入門 Data Science 之前，請先花一點時間想想自己為什麼想學這些東西，是因為聽過這些課程或軟體而感興趣、因為工作或研究所需、還是因為想成為厲害的 Data Scientist 呢？

對我來說，上述三者都是支持我在這個領域中不斷學習的動力。從我一開始想成為顧問，到聽說 Analytics 是一個**分析和解決問題的強大工具**以後，就覺得自己選對了路，也決定把聽過的工具跟知識都學好，所以在學校課程以外，抱著「前面已經有這麼多人了，不趕快超車怎麼行」的想法，我在 [DataCamp](https://www.datacamp.com) 上修了一堆有的沒的課程，也逐漸對 Data Science 有了更深更廣的認識。

Data Science 在應用上並不像醫學、金融學，它是一門能為各種學科、專業所用的工具，不論是用來判定良性或惡性腫瘤，推薦零售購物清單，還是評估貸款的違約率，甚至是分析紅樓夢全書是否由曹雪芹所寫（？！），都是適合應用 Data Science 的領域。所以如果你和我一樣，對 Data 充滿熱情和興趣，也希望自己的 problem-solving skills 能更上一層樓，DataCamp 上的十二門課，和網路上各式各樣的資源，都能幫助你輕鬆踏出第一步。

以下的介紹將著重在這些課程的重點、難易度和輔助材料。

## 資源和付費策略

DataCamp 上有免費（open）和訂閱（premium）兩種課程，幾個月前的原價是一個月 25 美金，學生優惠是一個月 9 美金，直接付一年的話另有優惠。當時我覺得一個月 9 美金也不貴，而且應該不會花一整年學，所以就直接訂閱了。

但是前幾天朋友告訴我 DataCamp 把學生優惠取消了，原價變 29 美金……考慮到這點，底下我會按快速、省錢的方式介紹 Study Pace。如果付款不方便（例如沒有信用卡）或是真的不想花錢的話，我也會附上一些相關的免費資源。

大致的學習路徑如下：
{% cq %}
基礎操作（黃色）　→　資料讀取與處理（綠色）
→　暫停訂閱，讀書和修免費課程（註）　→　進階分析（紅色等等）
{% endcq %}
註：依能力和喜好，可以在任何時期停修。就算負擔得起持續訂閱，以上也是我認為比較合理的學習路徑。

## 基礎操作（黃色）
這裡學的是 R 的基本操作，從最基本的運算和迴圈（loop），到設計和運用各種函數，適合完全沒有 R Programming 基礎的人。**一切就是從這裡開始的！**因為底下課程連結裡都有學時和詳細課程表，在此就不贅述。

![](yellow.jpg)

### [Introduction to R](https://www.datacamp.com/courses/free-introduction-to-r)

介紹 R 語言中的基本運算，以及 Vectors、Matrices、Factors、Data frames、Lists 等五種資料型態。剛學的時候可能覺得這很簡單，但其實資料型態在 R 語言中是滿重要、嚴謹（甚至龜毛）的概念。如果這個階段沒把資料型態弄清楚，之後的資料處理上會繞一點遠路，建議在加減乘除之餘，多多注意各種型態的性質和用法。

**延伸：**
* skydome20，[R筆記–(2)基本資料型態](https://rpubs.com/skydome20/R-Note2-dataType)
* Robert I. Kabacoff，[Quick-R: Data Types](http://www.statmethods.net/input/datatypes.html)

**備註：**
這門課是免費的，所以如果暫時還懶得裝 [RStudio](https://www.rstudio.com/) 等開發環境的人，可以多多利用這門課所提供的 Console。不過長遠來看，如果不打算在 DataCamp 上實作，還是自己安裝開發環境比較好。

* skydome20，[R筆記–(1)安裝R與RStudio](https://rpubs.com/skydome20/R-Note1-R_and_RStudio)

### [Intermediate R](https://www.datacamp.com/courses/intermediate-r)

這門課的難度比起上一門高了不少，主要介紹流程控制（control flow），以及迴圈（loops）、函數（functions）等概念。

剛開始寫程式的人可能會納悶「為什麼要從這些東西學起」。我也曾經有這樣的疑問，不過當我後來理解「寫程式的目的之一，是自動處理各種流程，而這些架構正是用來執行自動化的工具」以後，就覺得這些工具非常好用。現在我寫程式大概有 90% if not 95% 以上的內容和這些概念相關。

其中，The apply family（lapply、sapply 和 vapply）真的是 R 語言中非常好用的函數，和迴圈互補，可以解決一大半問題。後面的課程中會介紹更多好用的函數。

**延伸：**
* skydome20，[R筆記–(11)流程控制(for, while, ifelse, switch)](http://rpubs.com/skydome20/R-Note11-Control_Flow)

**備註：**
在 Utilities 裡面，DataCamp 介紹了和字串（string）相關的函數。雖然說字串比較算資料處理的範圍，不是資料分析本身的重點，但一方面我們學校教授非常重視這個，一方面我也覺得以後可能時不時會遇到「需要把字串轉成資料」的問題，想學好這門技術的人可以參考這些資料。

* 陳鍾誠，[正規表示式](http://ccckmit.wikidot.com/regularexpression)
* 服務科學的分子廚房，[R的字串處理：GREP套件包](http://molecular-service-science.com/2015/01/18/text-processing-in-r-using-grep/)
* Gloria Li and Jenny Bryan，[Regular Expression in R](http://stat545.com/block022_regular-expression.html)
* gskinner：[RegExr: Learn, Build, & Test RegEx](http://regexr.com/)

### [Intermediate R - Practice](https://www.datacamp.com/courses/intermediate-r-practice)

因為 Intermediate 和 Introduction 的難度真的有差，如果想學得更紮實一點的人，就好好上 Practice 吧。修完這門課以後，應該會對何時用 while、for 和 apply family 有些心得，這都是將來**構思資料分析流程**中非常重要的知識。

### [Writing Functions in R](https://www.datacamp.com/courses/writing-functions-in-r)

這門課是由 RStudio 的超級大咖 [Hadley Wickham](http://hadley.nz/) 所主持。Hadley 的神，實在不是我在這三言兩語能說盡，只能說如果之後還有興趣探索 R 的各種用法，會很常看到他的名字。所以這也是 DataCamp 上很值得付錢上的一門課。

這門課從基礎介紹 Function 的設計和用法，從最基本的 scoping 概念，到進階的資料處理，中心思想是「如果一件事需要重複超過兩次，你就應該寫個函數。」在這裡，第一門課提到的資料型態就成了許多操作的關鍵因素。不過修完了這門課以後，我就成了一個特愛寫函數的人，連兩三步操作都想整合成單一函數。函數就像動詞，它背後的精神是溝通執行，如果學會怎麼讀寫函數，就會更清楚 Programmer 在做些什麼（不過不一定要狂寫函數啦）。

**延伸：**
* skydome20，[R筆記–(3)套件與函式](https://rpubs.com/skydome20/R-Note3-function_and_package)
* joe11051105，[R Basic：定義函數](https://joe11051105.gitbooks.io/r_basic/content/customize_function/define_function.html)

**備註：**
以這門課的範圍和深度來說，很難找到替代資源，所以感興趣的人還是直接衝一發吧~~至少比 Growth Hack 課程便宜~~。不過，這門課雖然提到了 scoping，對 global environment 和 hash table 並沒有太多著墨。由於這對字串查詢的運算速度（[Big O](https://en.wikipedia.org/wiki/Big_O_notation)）影響不小，也可以參考這些資料。對了，既然提到 Function，Big O 也是很重要的概念。

* Wikipedia，[大O符號](https://zh.wikipedia.org/wiki/%E5%A4%A7O%E7%AC%A6%E5%8F%B7)、[大Ω符號](https://zh.wikipedia.org/wiki/%E5%A4%A7%CE%A9%E7%AC%A6%E5%8F%B7)、[大Θ符號](https://zh.wikipedia.org/wiki/%E5%A4%A7%CE%98%E7%AC%A6%E5%8F%B7)
* YehYeh：[演算法評估與資料型別](http://notepad.yehyeh.net/Content/DS/CH01/3.php)
* Hadley Wickham：[Advance R - Environments](http://adv-r.had.co.nz/Environments.html)
* Zhoutaotao：[算法导论-散列表(Hash Table)-大量数据快速查找算法](http://www.cnblogs.com/zhoutaotao/p/4067749.html)
* StackOverflow：[How to create a dictionary / hash table by iterating through a column?](http://stackoverflow.com/questions/7804816/how-to-create-a-dictionary-hash-table-by-iterating-through-a-column)

　

![](highway.jpg)
<center>（這裡有兩條路唷）</center>

## 資料讀取與處理（綠色）

上完 DataCamp 黃色的課程以後，可以採取兩個策略：
1. 繼續學綠色的課程，學好以後再去學[免費課程](https://www.datacamp.com/community/open-courses)
2. 先去學免費課程

考慮到 DataCamp 是按月計費，而且黃色的課程應該半個月就能解決，這時接著上綠色課程比較理想。如果時間還有剩，可以再上 Data Manipulation（水藍）。

Data Importing & Cleaning 可能是正常工作流程中最枯燥的工作，但也是資料分析的基本功。可以趁一開始學習蜜月期的時候把這門課解決，以後印象中知道有這些工具，再查怎麼使用就好。當然，如果志在成為 The Best Data Importer & Cleaner On Earth（？），多多練習也很好。

![](green.jpg)

### Importing Data in R ([Part 1](https://www.datacamp.com/courses/importing-data-in-r-part-1)、[Part 2](https://www.datacamp.com/courses/importing-data-in-r-part-2))

這兩門課分別介紹**不同檔案格式**和**不同資料庫**的資料讀取，操作本身並不難，不過可以開開眼界，知道原來世界上存在各式各樣野生的資料。

**延伸：**
* Robert I. Kabacoff，[Quick-R: Importing Data](http://www.statmethods.net/input/importingdata.html)

**備註：**
如果只是粗淺應用，這兩門課真的沒什麼技巧，很輕鬆就能上完。不過也能稍微看出 R 語言中有各式各樣開發中的 packages，負責讀取不同資料。所以重點不是死記硬背，學會利用這裡提到的術語（檔案格式、資料型態等等）描述自己想怎樣處理資料，並上網搜尋相關工具和解決方案，是需要學習和適應的思考方式。

### [Cleaning Data in R](https://www.datacamp.com/courses/cleaning-data-in-r)

比起 Importing，Cleaning 的難度就高一點，需要注意的操作細節也比較多。終極目的是將資料整理成「列（row）為觀測值，行（column）為類別」的型態，以便分析。雖然函數的使用不難，一直練習，直到掌握資料的結構和型態還是滿重要的。

**延伸：**
* R-bloggers：[A Data Cleaning Example](https://www.r-bloggers.com/a-data-cleaning-example/)
* Johns Hopkins University：[Getting and Cleaning Data at Coursera](https://www.coursera.org/learn/data-cleaning)

**備註：**
Data Cleaning 真的是一門怎麼練習都不嫌多的專業，因為實務上可能遇到各式各樣的問題。聽說一個項目光 cleaning 就可以佔掉大部分的時間。當學生的時候還不會意識到這個問題，因為資料都是整理好的，但如果想為了以後工作做準備，還是得好好學。

另外，雖然 DataCamp 用的 data frame 都不大，可以直接看全部的內容，但實務上遇到的資料可能 row 跟 column 都數以千計，所以最好養成使用 `head()`、`tail()`、`summary()`、`str()` 等函數的習慣。另外，在資料處理中 **missing data** 是一件看似無所謂但其實很重要的概念，雖然這件事在一些進階的免費或訂閱課程中會提到，可以先了解一下處理跟解讀方法。

* R-bloggers：[Exploratory Data Analysis: Useful R Functions for Exploring a Data Frame](https://www.r-bloggers.com/exploratory-data-analysis-useful-r-functions-for-exploring-a-data-frame/)
* skydome20：[R筆記–(10)遺漏值處理(Missing Value)](http://www.rpubs.com/skydome20/R-Note10-Missing_Value)

### [Importing & Cleaning Data in R: Case Studies](https://www.datacamp.com/courses/importing-cleaning-data-in-r-case-studies)

最後用一個實例應用前面學到的所有東西，把型態詭異的氣象資料轉成適合分析的 data frame。這門課練習起來比實務還簡單，如果覺得不熟的話可以多練習幾遍，也可以在自己的電腦上試著整理幾次。

**備註：**
在寫完這篇文章前我還沒找到其它帶操作說明的練習資料，所以 DataCamp 上的 Data Cleaning 看起來雖然簡單，應該也是網路上少數有條理的教學了。如果真的很想練習，可以去找各地的開放資料。

* [Data.gov](https://www.data.gov/open-gov/)、[HealthData.gov](https://www.healthdata.gov/)
* Kaggle：[Datasets](https://www.kaggle.com/datasets)
* g0v.tw：[零時資料中心](http://data.g0v.tw/)

## 休息一下

學完黃色跟綠色課程，相信你對資料分析的流程已經有些概念。一個大略的分析流程應該長得像這樣：

{% cq %}
蒐集　→　讀取與處理　→　分析　→　下結論或做決定
{% endcq %}

撇開蒐集，到這裡為止我們已經學了一些 R 的基本操作，以及讀取與處理。如果你前面的練習都有認真做，也熟悉了大部分的操作，應該會產生「好，那我們來學資料分析吧！」的念頭。但我必須在這裡提醒你休息一下，出去吹吹風、曬曬太陽跟讀讀書，等你對**統計學**有了正確的認識以後再回來上 DataCamp 紅色的課程。

如我在上一篇 *{% post_link Quantitative-Methods-II Essential Statistics for Econometrics %}* 所提到的，雖然在 DataCamp 上學得很快，但這一步最忌諱的是**只是學會怎麼開車，卻不知道車子怎麼運作**的良好感覺（假的！）。資料分析中最重要的並不是操作，而是能**獨立思考分析流程並準確解讀結果**，要達成這點只能回去乖乖讀理論。所以，儘管理論讀起來沒有 coding 來得刺激，如果你的目標是成為厲害的 Data Scientist，請務必把該補的知識補一補。

就算跟我一樣忍不住跑去把紅色課程都學完了還是要回來讀書喔！

![](cars.jpg)
<center>（雖然路考只錯四題但還是不太會開車只好 [call shotgun](http://www.urbandictionary.com/define.php?term=call%20shotgun)）</center>

### Udacity：[Intro to Descriptive Statistics](https://www.udacity.com/course/intro-to-descriptive-statistics--ud827)

如果統計基礎薄弱，可以考慮從 Udacity 上最基本的統計學開始學，從機率、期望值等概念著手。

### Udacity：[Intro to Inferential Statistics](https://www.udacity.com/course/intro-to-inferential-statistics--ud201)

如果嫌上面那門課太簡單了，可以直接學 statistical inference，這門課程也涵蓋了很多重要的知識跟實例。

### Stanford：[Statistical Learning](https://lagunita.stanford.edu/courses/HumanitiesSciences/StatLearning/Winter2016/about)

最後，這是之前提過的超讚課程，從最基本的 Linear Regression 介紹到 Support Vector Machine，不但有免費影片，還有免費教科書，而且課本的重點已經盡可能減少理論，裡面也有很多 R 的實例。

雖然學完 Udacity 上的兩門課程就差不多可以去學紅色課程了，想學更多的話可以衝一發 Stanford 的課程。

### 推薦書籍

如果你想趁這個空檔，系統性地複習 R 語言，可以參考這幾本書：

* Teetor，[*R Cookbook: Proven Recipes for Data Analysis, Statistics, and Graphics*](https://www.amazon.com/Cookbook-Analysis-Statistics-Graphics-Cookbooks/dp/0596809158/)
* Cotton，[*Learning R: A Step-by-Step Function Guide to Data Analysis*](https://www.amazon.com/Learning-Step-Step-Function-Analysis/dp/1449357105/)
* Lander，[*R for Everyone: Advanced Analytics and Graphics*](https://www.amazon.com/Everyone-Advanced-Analytics-Graphics-Addison-Wesley/dp/0321888030/)
* Kabacoff，[*R in Action: Data Analysis and Graphics with R*](https://www.amazon.com/Action-Data-Analysis-Graphics/dp/1617291382/)

### DataCamp [Open Courses](https://www.datacamp.com/community/open-courses)

另外，在上紅色課程之前，如果你想先退訂去上免費課程，試玩不同的 package 跟 function，可以參考 DataCamp Open Courses。這不包含在十二門課程裡，它們涵蓋的範圍包括：

* 基礎機率跟統計學：[Basic Statistics](https://www.datacamp.com/community/open-courses/basic-statistics)、[Inferential Statistics](https://www.datacamp.com/community/open-courses/inferential-statistics)
* Machine Learning 入門：[Kaggle R Tutorial on Machine Learning](https://www.datacamp.com/community/open-courses/kaggle-r-tutorial-on-machine-learning)
* 有趣應用：[Intro to Computational Finance with R](https://www.datacamp.com/community/open-courses/computational-finance-and-financial-econometrics-with-r)

總之這上面的主題比較雜，如果找到自己感興趣的課程，當作 R 的延伸學習資源也不錯。

## 機率和統計（紅色）

最後就是資料分析中的重頭戲——機率和統計學了。這裡可以學到如何在 R 中執行基本的迴歸分析，並解讀分析結果中 t-statistics、F-statistics、p-value、degrees of freedom 等統計量。再提醒一下，如果你對這些概念不太熟，麻煩還是先去弄懂再繼續學。

![](red.jpg)

### [Intro to Statistics with R: Introduction](https://www.datacamp.com/courses/intro-to-statistics-with-r-introduction)

這是紅色課程中最簡單的一門課，計算不難，但其中有不少重要的概念，如 z-scale、central tendency 和 variability。這都是後續四門課程中會不斷提到（有時也容易搞混）的基礎。

### [Data Analysis and Statistical Inference](https://www.datacamp.com/community/open-courses/statistical-inference-and-data-analysis)

這是一門藏在免費區的超讚課程，從 R 的基礎操作介紹到多元線性迴歸（multiple linear regression），有一部份和黃色的基礎課程重疊，但難度坡度不小，另一部份就是完全的新東西了。如果你有先預習統計學的內容，這門課很適合用來瞭解定量、定性資料和迴歸模型。

**備註：**
如果在這裡有些不熟的地方也不用擔心，相似的運算、函數和分析方法會在後面幾門紅色課程中反覆提到。主要還是得熟悉基本概念和定義。

### Intro to Statistics with R * 3
* [Student's T-test](https://www.datacamp.com/courses/intro-to-statistics-with-r-students-t-test)
* [Analysis of Variance (ANOVA)](https://www.datacamp.com/courses/intro-to-statistics-with-r-analysis-of-variance-anova)
* [Repeated measures ANOVA](https://www.datacamp.com/courses/intro-to-statistics-with-r-repeated-measures-anova)

這裡的三門課，雖然彼此之間難度差不多，但都是滿進階的概念。如果學習過程中真的遇到「不知道自己在幹嘛不過還是算出結果了」的狀況，你可以硬著頭皮繼續練習，也可以暫停先去讀書，不論如何，知之為知之，不知為不知，把不懂的概念好好弄懂，通過漫長的隧道才會成長。

T-test 和兩門 ANOVA 課程的教學方法差不多，都是讓學生先照著公式計算一次，再說明有哪些函數可以用（let R do the dirty work），最後說明如何解讀結果。背後的概念包括常態分布、Z-value、標準差、假設檢驗等等，目的是「判斷統計值有多少機率來自理論分布函數」，並藉此決定是否拒絕假設。

學到這一步，最忌諱的是只記得哪幾項數值應該介於什麼範圍（例如 [p < 0.05](http://blog.minitab.com/blog/adventures-in-statistics/the-american-statistical-associations-statement-on-the-use-of-p-values)，R-squred 越大越好等），卻忽略了樣本數、假設等因素對結果所造成的影響，而做出錯誤判斷。要避免這些迷思，除了瞭解理論以外，就是懷疑結果，多花點時間思考統計值背後的意義，直到確認「對，我瞭解自己做了哪些分析，並得到怎樣的結果」。

**備註：**
在這個階段如果遇到不熟的觀念，除了上網 Google，可以考慮找一本課本參考。

* （上次提過的）Degroot，[*Probability and Statistics*](https://www.amazon.com/Probability-Statistics-4th-Morris-DeGroot/dp/0321500466/)
* Wooldridge，[*Introductory Econometrics: A Modern Approach*](https://www.amazon.com/Introductory-Econometrics-Modern-Approach-Economics/dp/130527010X)

## 學完以後

我大概是在一個半月前學完這十二門課程，在那之後我就跑去認真上這學期的三門課，以及學習 Machine Learning 了。不過，我到現在都還記得在 DataCamp 上寫第一行 R 的興奮感，也一直以學習過程中各種感受鞭策自己一定要把理論學好，努力成為負責任的顧問、研究員或 Data Scientist。

如果你跟我一樣對 Data Science 充滿熱情，這十二門課（和其它補充內容）是很好的入門，不過在這之後的路也還很漫長，永遠不要忘了自己當初是為何入門，把最初的經驗當成口糧，一直走下去。

最後，除了這條路，不管你是想從 Python 開始（[DataQuest](https://www.dataquest.io/)），還是往適合 Machine Learning 的 Matlab／Octave 走（[Coursera](https://www.coursera.org/learn/machine-learning)）：*The Internet has you covered, as always.*

　
*圖片來源：
Walt Disney Concert Hall
US 101 in San Luis Obispo (North Bound)
US 101 in Santa Monica (South Bound)*

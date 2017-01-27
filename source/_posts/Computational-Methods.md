---
title: ＃／Computational Methods
date: 2017-1-21 7:30:00
tags:
- Cal Poly
- MSBA
- R
categories: ＃
---
{% asset_img cover.jpg %}
　
雖然冬季學期已經開始了，但我連秋季學期的課都還沒講完⋯⋯除了上次介紹的 Econometrics，這篇談 BA 裡比較偏實作的發展方向：*Computational Methods*，也就是 R Programming。

<!--more-->

## 秋季學期的安排

雖然上次講過了，但還是 recap 一下。我們在 2016 年秋季學期上的課有三門，分別是：

* *Advanced Econometrics I*（理論、分析）
* *Computational Methods*（實作）
* *Data Management*（資料庫操作、管理）

　
{% post_link Advanced-Econometrics-I 上一篇 %}已經談完了公式佐定理滿滿的 *Advanced Econometrics*，這篇接下來談更偏應用的 *Computational Methods*。在這門課裡我們使用的程式語言是 `R`，涵蓋的範圍除了之前在 {% post_link DataCamp-12 DataCamp 上十二門課 %} 提到的內容以外，還多了 *Debugging*、*Optimization*、*MLE*、*Web Scraping* 等，比我一開始預期跟準備的還多不少，所以這篇可以當作是 DataCamp 那些課程在 Programming 方面的延伸，也希望能幫助讀者稍稍從 Computer Science 的角度看待整個資料分析的流程。

## 老師和教學方法

這門課的老師是 Dr. Shafran，因為他在 Computer Science 和 Economics 兩個領域都有很高的成就，所以上這門課雖然一開始都在講 Programming，到後面就開始和 *Advanced Econometrics* 與 *Data Management* ~~串通~~配合教一些更進階的建模與分析方法。上課方式就是單純的投影片跟帶電腦實作，偶爾講到理論會有板書。整個學期的課程安排如下：

**期中考前**
* **入門**：Intro to R、R Data Structure、Flow Control and Functions
* **設計**：Debugging、Code Optimization、Recursion and Sorting、Hash Tables
* **應用**：Strings and Regular Expressions、Web Scraping、Data Organization & Cleanup、Pseudorandom Numbers

**期中考後**
* **運算**：Monte Carlo Methods、Econometrics in R、MLE in R、Numerical Optimization in R、Numerical Methods of Optimization
* **其他**：Intro to Database、SQL、Dynamic Programming

　
從這份清單可以看出，雖然當初我上 DataCamp 的目的就是為了準備這門課，但兩者實際重疊的部分大概只有入門的前兩週，後面則漸行漸遠，所以~~不能躺著上這門課~~需要學習的內容還是很多。特別是上面有幾個主題，像是 Hash Tables 或 Optimization（Big O），如果只是抱著 Data Science 的角度切入學習可能會忽略，缺乏經驗的話又會誤解網路上的資料與實務無關，Dr. Shafran 的課程安排剛好補齊了這個空缺。

除了掌握上面各個主題以外，其實 Dr. Shafran 的教學重點在於「讓我們學會如何利用 Computational Method 解決問題」，所以在上課過程中他會特別強調的點包括：

* 「程式語言很多，學 R 的目的是讓你們知道怎麼學其它語言，與利用程式解決問題」
* 「不一定要記得確切的 function 或 argument，但至少要知道解決流程以及查詢函數用法」
* 「要學會怎麼將抽象的公式、規則和流程化為程式」
* ~~「但 regular expression 一定要背熟，錯一個字就錯整題」~~（註）

註：考慮到 Strings 和 Web Scraping，Dr. Shafran 對 RegEx 的堅持也不是沒有道理，只是相較於對待 Function 的寬鬆態度⋯⋯。

之後當我在學 `SQL`、`Python` 和 `SAS` 時，也差不多是抱著這些觀念在接觸新東西。

最後，雖然這門課的推薦書目是 Richard Cotton 的 [*Learning R*](http://shop.oreilly.com/product/0636920028352.do)，但 Programming 的相關內容，課程投影片上都有了，DataCamp 上也有很完整的教學跟練習。以下內容會著重在剛才提到的**設計**、**應用**、**運算**和**其他**。

{% asset_img tainan.jpg %}

## 設計

設計所涵蓋的主題大概是會讓從 Computer Science 切入的人感覺「這不是我們以前學過的東西嗎？」不過如果是從 Statistics 切入、修 DataCamp、Udacity 或 DataQuest 的人來說可能是全新的東西。

其實，如果讀者在學習的過程中對 Programming 本身感興趣，或遇過某些奇妙的問題，例如發現用字串 `table["thirdrow", "secondcolumn"]` 定位比用數字 `table[3,2]` 還久，而去搜尋 [*Harvard CS50*](http://cs50.org) 或 [*UC Berkeley CS61A*](http://inst.eecs.berkeley.edu/~cs61a/fa16/)、[*CS61B*](http://www-inst.eecs.berkeley.edu/~cs61b/fa15/) 等課程的話，比較有機會接觸到這些內容。學習的目的在於了解如何設計出有效率的程式，或至少避免狂踩沒效率的地雷，畢竟資料只要一多，就連最微小的差別，都可能造成執行上數小時甚至數天的差異，而時間就是金錢（如 AWS 或 DigitalOcean 的租金）。如果一開始只有小規模練習，可能很難察覺到這些差異，所以 Dr. Shafran 的教學安排與~~高難度~~作業對我來說也是前所未聞。

如果有點底子或只是想複習的讀者，也可以直接參考強者我朋友 [amazingandyyy](http://amazingandyyy.github.io/)（三個 y）推薦的 [*Cracking the Coding Interview*](https://www.amazon.com/Cracking-Coding-Interview-Programming-Questions/dp/0984782850)。它完全涵蓋了我們教的 Big O、Hash Tables、Recursion、Sorting Algorithms 等概念，而且因為重點在準備面試，所以講得很實際和完整，外加 Microsoft、Amazon、Google、Apple、Facebook 和 Palantir 等公司的面試心法，真的是從 motivation 到 excercise 都包了~~，大概只差房地產投資攻略~~。

### Debugging

Debugging 的內容教我們怎麼用 RStudio 裡的 debug tools 了解程式的問題所在。在此之前我通常都是~~像沖馬桶一樣~~直接 source 全部程式碼，看哪裡卡住就通哪裡。不過一樣，如果程式碼一多，source 一次要六小時，最後才發現某個部份有錯導致結果全沒了也很慘，所以長遠來說還是得學會用 debug tools 與合理設計執行流程。

相關內容在 RStudio 的[官方說明文件](https://support.rstudio.com/hc/en-us/articles/205612627-Debugging-with-RStudio)中已經寫得很詳細了，建議可以在自己的電腦上也安裝 RStudio，用簡單的程式練習操作。雖然 RStudio 的介面很友善，但在漫長的 Data Science 生涯中讀者不一定會一直使用這套開發工具，所以我覺得學到最後，應該掌握的是怎麼合理安排包含「設計—執行—改善」、並能體現出錯誤和即時停損的工作流程。簡單來說，別再像沖馬桶一樣把出錯的風險都交給電腦承擔啦。

### Code Optimization

這裡先介紹了 [Big O](https://zh.wikipedia.org/zh-tw/%E5%A4%A7O%E7%AC%A6%E5%8F%B7) 的概念，沒聽過的讀者可以想像成是一個用來程式複雜度的表達方式，用於比較不同寫法的執行效率：複雜度越高，執行所需的時間就越長。*Cracking the Coding Interview* 裡用了這個比喻：

> 如果你要傳給同事一個很大的檔案（如 1TB，內容不明），你可以上傳這個檔案，或是直接飛去把檔案交給他。如果檔案大小是 `s`，上傳檔案就是一個 `O(s)` 的做法，因為檔案越大，所需時間也會線性增加；相較之下搭飛機就是 `O(1)`，和檔案大小無關（忽略見面後傳輸檔案的時間）。

需要注意的是上面的例子中 Big O 強調的是「隨著檔案大小變化的時間變化」，和初始條件無關，所以在上面的例子中，有可能在檔案夠小的情況下，上傳檔案還是比搭飛機更省時。了解了基本概念後，需要掌握的包括：

* 算／看出不同 algorithms 的 Big O，也就是[算法分析](https://zh.wikipedia.org/wiki/%E7%AE%97%E6%B3%95%E5%88%86%E6%9E%90)，這和**入門**中的 Flow Control and Functions，如 `if`、`for`、`while` 有關
* 知道哪些寫法可以改善 Big O，當然最後選哪個 algorithm 也得考慮初始條件

　
我們沒有往下深入到計算複雜度理論或 NP 完全之類的概念，只是大略有個「這在實務上很重要」的概念。不過，雖然考試也就只是考簡單的 Big O 判別，我自己曾有過 draft 和 final 執行起來時間差了一百倍左右的經驗，這也會影響結果的精度，即程式能處理到小數點下第幾位的數值，所以我之後寫程式都會格外注意。

### Recursion and Sorting

Recursion 和 Sorting 是兩個題目，前者是設計不用 `for` 或 `while` 也能不斷循環的程式，例如：

``` r
recurfunc <- function(x){
  if(x <= 0){
    return(x)
  }
  return(x + recurfunc(x-1))
}
```

可以看出因為在第二個 `return` 中又執行了一次 `recurfunc()`，所以在 `(x <= 0)` 條件滿足而跳出前，程式會一直循環下去。不過最後這個主題的結論是「因為 recursion 跟 loop function 基本上可互通，以後方便起見還是都用 loop function 寫就好。」

Sorting 則是讓我們寫寫看不同的排序算法，[Wikipedia 上的介紹](https://en.wikipedia.org/wiki/Sorting_algorithm)很詳細，我們練習的是 Selection sort 和 Bubble sort，上課另外有提過 Merge sort 和 Quicksort。這邊提 sorting 的主要目的是看出不同演算法的 Big O，還有用 `system.time()` 比較執行時間，至於如何精進 sorting algorithm 就超出教學範圍了。

### Hash Tables

Hash table 是一個用來記錄 key 和 value 的結構，主要功用是用來節省表格中定位的時間。前面提到 `table["secondrow","thirdcolumn"]` 定位起來之所以會比 `table[2,3]` 慢，是因為後者的記憶體位置是確定的（「調閱書架上第三層第二本書」），前者卻要先一個個查詢才能確認位置（「調閱一本叫《三ノ二》的書」）。如果把書名和書的位置先記錄成 hash table，調閱起來就會快很多。

在 `R` 裡面 hash table 的實作是透過 `environment`，這邊有一小段例子：

``` r
myenv <- new.env()
values <- seq(26)
for(i in 1:26){
  myenv[[letters[i]]] <- values[[i]]
}
```

在建立完 `myenv` 以後，利用 `for` 把所有字母的位置（key）都記錄一遍，執行完以後就可以從 `myenv` 中調閱各個字母的位置（key）。需要注意的是 hash table 的用法是單向的：

1. 利用 `myenv[["a"]] <- 1` 記錄位置後
2. 執行 `myenv[["a"]]` 會回傳 `1`
3. 利用回傳的 `1` subset 其他表格

　
所以像 `myenv[[1]]` 這種指令是沒意義的，設計時也別忘了使用 hash table 的目的是用來改善 string subsetting 的速度，所以在上面的例子裡，可以說是把原本的 `table["secondrow","thirdcolumn"]` 化為 `table[shelf[["secondrow"]], number[["thirdcolumn"]]]`，讓它的速度和 `table[2,3]` 幾乎一樣快。除了自己用 `new.env()` 和 `for` 建立 hash table 以外，CRAN 上的 package [hash](https://cran.r-project.org/web/packages/hash/hash.pdf) 也可以用來建立 hash table。

{% asset_img vedai.jpg %}

## 應用

前面提到的 Strings and Regular Expressions、Web Scraping、Data Organization & Cleanup、Pseudorandom Numbers 四堂課，在之前的 {% post_link DataCamp-12 DataCamp 上十二門課 %}裡也有提到一點，因為寫那篇文章的時候我剛好上到這裡。前兩個 **Strings and Regular Expression** 和 **Web Scraping** 可以歸類到和字串（string）有關的應用；**Data Organization & Cleanup** 一部份還是和字串有關，一部分和如何處理 data frame 有關；**Pseudorandom Numbers** 則只是簡單說明 `runif()`、`rnorm()` 等函數怎麼來的，所以以下稍微介紹一下前三章。

### Strings and Regular Expressions 和 Web Scraping

在我寫這篇文章的時候，我回去查了 DataCamp 的課表，確定和 Regular Expression 相關的內容只有 [*Intermediate R*](https://www.datacamp.com/courses/intermediate-r) 裡 Utilities 的五個 exercise，差不多也就是十分鐘的份量，所以如果讀者過去是走這條路，很容易忽略 string。但其實綜觀 Data Science 的應用場合，有 string 所佔據的資訊量應該是滿可觀的，甚至有時候為了從茫茫資料海中找出數據，也得先過 string 這關。如果專注在 string 的處理，後續延伸包括 [Text Mining](https://en.wikipedia.org/wiki/Text_mining)，和在 Social media 和 Healthcare 領域發展很快的 [Natural Language Processing](https://cran.r-project.org/web/views/NaturalLanguageProcessing.html)，應用包括判斷 tweets 語氣是否正面，或分析急診指令是否妥當等等。

不過我們學的都是很基礎的內容，包括：
* 使用 `strsplit()`、`sub()`、`grep()`、`regexpr()`、`gregexpr() 等函數處理字串
* 寫 Regular expression，如 `([A-Z])\w+`

關於怎麼運用，可以參考以下這個用來提取 LaTeX 表格資訊的工作流程，

``` r
# Naren, Jordan, Simon, Jimmy
lttable <- readLines("lttable.tex") # 讀取 .tex
lttable <- paste(lttable,collapse="") # 把讀取後分散的資訊整合成一個字串
g<-gregexpr("\\\\.*?\\\\",lttable)[[1]] # 找出各行資料

# 建立儲存最終資訊的表格
d <- data.frame(A=numeric(),
                B=numeric(),
                C=numeric(),
                D=numeric(),
                E=numeric(),
                F=numeric(),
                G=numeric()
                )

# 一行一行處理資料
for(i in 4:(length(g)-2)){

  lt <- substr(lttable,g[i],g[i]-1+attr(g,"match.length")[i]) # 提取單行資料

  ltlist <- strsplit(lt,"&") # 把一行中各列資料分開
  ltvector <- ltlist[[1]] # 需要的資料在清單一裡面

  ltvector <- sub("\\\\","",ltvector) # 刪除雜訊 \\ 
  ltvector <- sub("hline","",ltvector) # 刪除雜訊 hline

  # 把分好的資料寫入表格
  d <- rbind(d,data.frame(A=as.numeric(ltvector[1]),
                          B=as.numeric(ltvector[2]),
                          C=as.numeric(ltvector[3]),
                          D=as.numeric(ltvector[4]),
                          E=as.numeric(ltvector[5]),
                          F=as.numeric(ltvector[6]),
                          G=as.numeric(ltvector[7])
                          )
             )
}
```

經過一連串處理，最後 `d` 就是一個整齊的 data frame 了。當然，實際上的工作流程可能不必這麼麻煩，因為 CRAN 上可能都有相應的 package 了，但就是練習一下流程安排，培養對 string 的感~~情~~覺。相關資料包括：

* CRAN 的 [*Regular Expressions as used in R*](https://stat.ethz.ch/R-manual/R-devel/library/base/html/regex.html) 包含了 Regular expression 的用法
* 服務科學的分子廚房的 [R 的字串處理：GREP 套件包](http://molecular-service-science.com/2015/01/18/text-processing-in-r-using-grep/)也有很好的說明和範例
* Gaston Sanchez 的 [*Handling and Processing Strings in R*](http://molecular-service-science.com/2015/01/18/text-processing-in-r-using-grep/)（PDF，408 KB）包含了所有在 `R` 裡處理 string 要注意的大小事，很完整。

　
通常在 web scraping 的時候比較會需要親自處理字串，這時處理前只要多一個下載資料的流程就好。詳細的方法跟 packages 可以參考 Robert Norberg 的 [*Getting Data From An Online Source*](https://www.r-bloggers.com/getting-data-from-an-online-source/) 與 Phil Spector 的 [*Reading Web Pages with R*](http://statistics.berkeley.edu/computing/r-reading-webpages)。

### Data Organization & Cleanup

Data Organization & Cleanup 分兩部分，一部分是利用 `readLines()` 加上上述的字串處理方法，從純文字開始建立 data frame。雖然這聽起來有點瘋狂，但事實上即使是最一般的 `.csv` 檔案都有可能遇到這些狀況：

* 表格裡包含子表格
* 包含 built-in function 無法處理的字串
* 用 `read.csv()` 載入寬表格（wide table，即 variable 很多的表格）總是出錯

最後如果遇到無法正常載入，但用 Sublime Text 等編輯器打開看得出 pattern 的狀況，就只好認命從頭 organize data 了。

另一部分是學會怎麼用 `merge()` 等函數處理已經載入好的表格，DataCamp 的 [*Data Manipulation in R with dplyr*](https://www.datacamp.com/courses/dplyr-data-manipulation-r-tutorial) 也是類似性質的課程。 不過我個人還是比較習慣一遇到問題就自己寫 function 解決。如果想多學怎麼寫 function 也可以參考 DataCamp 另一門 [*Writing Functions in R*](https://www.datacamp.com/courses/writing-functions-in-r)。

### Pseudorandom Numbers

Pseudorandom Numbers 只是稍微介紹一下 `R` 裡面 `runif()`、`rnorm()` 等函數是怎麼產生偽隨機數的，以及說明產生偽隨機數前 `set.seed()` 的重要性。以前我讀 [Kaggle](https://www.kaggle.com) 上的 code 時總會納悶為什麼大家的起手式都是 `set.seed()`，後來才知道，因為偽隨機數是基於特定變數所產生，所以一開始先 `set.seed()` 才能確保別人也能做出一樣的結果。

不過除此之外我已經把 `runif()` 等函數背後的原理忘光了⋯⋯幸好 Google 一下發現 `R` 的官方文件中有說明，有興趣的讀者可以參考：[*Random Number Generation*](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Random.html)。


{% asset_img linbian.jpg %}

## 運算

學完以上的資料處理後，我們開始往 Monte Carlo、MLE 等運算方法深入。雖然在學這些內容的時候，我感覺跟前面差不多，只是寫寫 code、交交作業罷了，但現在想想，這邊教的內容也能幫助讀者了解為何 Data Science 由 Statistics 和 Computer Science 兩大學科所組成，以及示範 Data Scientist 能如何善用運算能力。

一切先從預估方法講起。當我們想了解某項統計數值時，能採取的預估方法大略可以分成兩種：從原理推導而得的 analytical，和利用大量重複觀察而得的 numerical。例如，如果想知道擲硬幣正反面的機率，analytical 的方法是從樣本空間出發，推出 1/2；numerical 則是擲一千遍，觀察平均值趨近於 1/2。雖然後者聽起來很傻，但日益強大的運算能力讓 numerical 方法的應用成本越來越低，甚至可以用來得出一些無法從 analytical 推出的結果，例如[四色定理](https://zh.wikipedia.org/wiki/四色定理)或[教會電腦怎麼下圍棋](https://zh.wikipedia.org/wiki/AlphaGo)等等。

所以學會怎麼連結 Computer Science 的運算能力，和 Statistics 想解決的問題，就成了 Data Science 的命題之一。前面提到的「要學會怎麼將抽象的公式、規則和流程化為程式」在這階段就成了很重要的能力。如前所述，我們接觸的方法包括 Monte Carlo、MLE modeling、Grid Search、Newton-Raphson 等，並在最後完成了一個囚徒困境下 Reinforcement Learning 的 Project，還有之前在 {% post_link Advanced-Econometrics-I *Advanced Econometrics I* %} 提到的 MLE 估計方法作業。

由於這邊直接把 code 貼上來實在對讀者幫助不大，我花了一點時間搜尋有沒有相關的資源，並把它們列在下面，附上我的經驗和見解。這些都是有點難度的主題，是 Econometrics 中比較會應用的方法。

### Monte Carlo

Monte Carlo 簡單來說是藉由對特定函數代入大量隨機數，並從結果估計期望值的方法。一個簡單的範例如下，假設我們要估計 {% raw %}$\int _{0}^{1}\left( x^{2}+1\right) dx${% endraw %}：

``` r
x <- runif(10000) # 先取大量 (0,1) 之間的偽隨機數
fx = x^2+1 # 直接代入運算
If = mean(fx) # 取平均值
serror = sd(fx)/sqrt(10000) # 計算 std. err
ci = c(If+qnorm(0.025)*serror,If+qnorm(0.975)*serror) # 計算這次估計的信心區間
```

上面只是一個很基本的例子，隨著問題不同，使用的抽樣函數和處理方法也會不同，像是 `If` 之所以是 `fx` 的平均值，是因為一開始的抽樣函數是 `runif()`，如果換一個方式抽樣（例如採取 [importance sampling](https://en.wikipedia.org/wiki/Importance_sampling)），`If` 的算法也會不同。不過背後的 Monte Carlo 原理基本上不變。

[這份文件](http://inst-mat.utalca.cl/jornadasbioestadistica2011/doc/CursoCasella/%20UseR-SC-10-B-Part1.pdf)（PDF，586 KB）是 [*Introducing Monte Carlo Methods with R*](http://www.springer.com/us/book/9781441915757) 的簡報，包含了一點 Monte Carlo 的原理。已經會 `R` 的讀者可以跳過第一章 Basic R Programming，直接讀 Random Variable Generation。

### MLE

比起 Monte Carlo，MLE 又更難用一小段說明了⋯⋯可以先參考我在 {% post_link Advanced-Econometrics-I *Advanced Econometrics I* %} 裡提到的內容。除此以外，我又試著搜尋一些補充資料：

* [這篇 Quora](http://stats.stackexchange.com/questions/112451/maximum-likelihood-estimation-mle-in-layman-terms) 裡有不少入門解釋，說明為何 MLE 和 data 背後分佈函數的關係，以及為何這樣能得出最佳解。

* 上次提到的 [*The Method of Maximum Likelihood for Simple Linear Regression*](https://www.stat.cmu.edu/~cshalizi/mreg/15/lectures/06/lecture-06.pdf)（PDF，356 KB）包含了 MLE 的原理和例子，其課程網站 [*Modern Regression*](http://www.stat.cmu.edu/~cshalizi/mreg/15/) 上有很完整的講義和練習。

* 如果想試試看 MLE 的處理流程  [*Example of MLE Computations, using R*](http://www.ms.uky.edu/~mai/sta321/MLEexample.pdf)（PDF，74 KB）裡也包含了一些例子。

從 Quora 上的回應可以看出，簡單來說 MLE 是在假設樣本分佈後，利用 numerical 方法找出最有可能產生現有樣本的函數。比方說，如果讀者還記得我在 *Advanced Econometrics I* 提到的 Linear Regression Model，應該知道模型中包含了一組 {% raw %}$b${% endraw %}。而既然是 numerical 方法，代表我們應該找一堆 {% raw %}$b${% endraw %} 代入檢驗。這時，我們要代入的目標函數是什麼呢？最佳的結果又是什麼呢？

答案就是 Maximum Likelihood：藉由假設樣本分佈，得出 likelihood function（與便於計算的 log-likelihood function），並藉由代入不同 {% raw %}$b${% endraw %} 找出使 likelihood 最大的組合。這麼做的好處，在於只要能寫出 likelihood function，就能代入檢驗各項 parameters，所以 Dr. Shafran 和 Dr. James 說 MLE 在 Econometrics 的應用很廣（不過我 paper 讀得少~~不要騙我~~所以不太確定具體情況）。

### Numerical Methods of Optimization

[Grid search](https://en.wikipedia.org/wiki/Hyperparameter_optimization#Grid_search) 和 Newton-Raphson 是在 MLE 方法下提到的兩個找出最大值的方法。前者差不多就是俗稱的暴力破解法：界定範圍與數量以後，將所有組合代入找出最大值。Grid search 在一兩個參數的情況下很好用，但參數一多運算要求會呈指數成長。我曾用 grid search 找 support vector machine 中 {% raw %}$C${% endraw %} 和 {% raw %}$\gamma${% endraw %} 的最佳組合，當時的分法是：

{% raw %}
$$
C\in \left\{ 2^{-1}, 2^{0}, \ldots, 2^{6}\right\}, \gamma\in \left\{ 2^{-7}, 2^{-6}, \ldots, 2^{0}\right\} 
$$
{% endraw %}

　
也就是一共 64 個組合。由於執行 `svm()` 以後，發現過了一天都還沒算完，所以還特別去 AWS 上架了 RStudio Server（[教學在此](https://www.r-bloggers.com/rstudio-in-the-cloud-for-dummies/)）算了幾天，雖然最終結果還是不理想⋯⋯總之這是我的 grid search 經驗。

Newton-Raphson 則是利用[泰勒展開式](https://zh.wikipedia.org/wiki/泰勒级数)（Taylor series）找出每一個點上的斜率和變異數（從 Hessian matrix 獲得），並以此判斷應該往哪邊逼近才能得到最大值。這個算法在某些情況下比 grid search 更有效率，不過有時也有可能陷入無法收斂（converge）的問題，grid search 就沒這個困擾。很多 `R` 的 optimization function，如 `optim()` 和 `nlminb()` 裡都有內建 Newton-Raphson 方法。相關的資源如下：

* Nikodemus Karlsson 的 [Youtube 影片](https://www.youtube.com/watch?v=r3KXzyGS2zg)簡單說明了 Newton-Raphson 的運作原理。
* 這份來自 UBC 的 [*The Newton-Raphson Method*](https://www.math.ubc.ca/~anstee/math104/104newtonmethod.pdf) 講義（PDF，182 KB）把 Newton-Raphson 的原理和應用講得很完整，不過沒提到 Hessian matrix。
* 對 Hessian matrix 感興趣的讀者可以參考這份中正大學朱威達副教授的簡報，[*Newton’s Method: An Introduction to Optimization*](https://www.cs.ccu.edu.tw/~wtchu/courses/2014s_OPT/Lectures/Chapter%209%20Newton's%20Method.pdf)（PDF，1.5 MB），裡面提到一些由 Hessian matrix 所衍生的限制與解決方案。
* ~~如果跟我一樣聽到 Hessian matrix 會怕的讀者可以多讀[線代啟示錄](https://ccjou.wordpress.com/tag/hessian-矩陣/)壓壓驚。~~

## 其他

剩下的內容和 SQL Database 還有讓人聯想到[圖論](https://zh.wikipedia.org/wiki/图论)的 Dynamic Programming。後者只有講一堂課，也只是讓我們熟悉如何用 programming 解決問題，所以應該只能算一個 exercise；前者幾乎是複習我們另一門 [*Data Management*] 其中的一小部分，所以這邊的內容我就留到~~半年後的~~下一篇文章。

如果你對 SQL 很感興趣，可以參考這份 [cheat sheet](http://www.cheat-sheets.org/sites/sql.su/)，或是直接去這個[很神奇但請低調的網站](http://ingenieriacognitiva.com/developer/cursos/OracleDeveloper/)，裡面的簡報已經包含了所有初階語法，雖然是 Oracle 的教材，但和一般 SQL 大同小異；打算用 `R` 實作 SQL 的讀者，可以安裝 `RSQLite` 這個 package，然後去 [SQLite Tutorial](http://www.sqlitetutorial.net/sqlite-sample-database/) 下載範例資料庫 `chinook.db` 玩玩看。

{% asset_img ntfsh.jpg %}


## 練習和學習

老實說，寫到最後我還真不知道該推薦什麼額外的資料，一方面是因為上面的各個主題下已經有很多補充資料了，一方面，如果談的是 Computational Method 或 `R` 本身，我的建議還是多多練習，即使蒐集了各種 O'Reilly 教材或網路資源，也得不斷 coding。我的朋友 AmazingAndyyy（triple y）在他的[公開貼文](https://www.facebook.com/amazingandyyy/posts/1829094613771537)裡也提到：

{% cq %}
態度與能力及動力才是讓「人才」之所以脫穎而出的原因
重點是The ability to be self-reliant (x3)
{% endcq %}

至於 Computational Method 提到的那些概念，其實只要有一定經驗，回去翻閱相關資源（如上面提到的 *Cracking the Coding Interview*）也能很快調整自己的節奏。希望到時候這篇文章能再助讀者一臂之力。

最後，我想感謝 Dr. Shafran 選了 `R`，因為 Data Science 裡該有的東西，`R` 已經全部內建好了，安裝很容易，使用起來也很方便。最近我在寫 `Python` 教材（手上有的 N 件事之一），感覺 `Python` 上的 Data Science 環境基本上還是利用 `Numpy` 和 `Pandas` 等 packages 建立起一個有 array (matrix) 和 data frame 的類 `R` 世界。對於還不會接觸到 `tensorflow` 等進階應用，或是對語言沒有特別偏好的初學者來說，`R` 最大的優勢還是在於方便、容易入門。在我學了半年多之後，再次推薦給對 Data Science 有興趣的讀者。

　
*走走拍拍：台灣大學、台南火車站、霧台鄉（Vedai）、林邊鄉、台中一中*
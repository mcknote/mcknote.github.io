---
title: ＃／Advanced Econometrics II
date: 2017-5-5 7:30:00
tags:
- Cal Poly
- MSBA
- Data Science
- Econometrics
categories: ＃
---
![Cover](cover.jpg)

既上一篇 *{% post_link Advanced-Econometrics-I Advanced Econometrics I %}* 介紹了線性迴歸模型後，冬季學期的下半堂課則是針對時間序列資料的分析方法。技術上和上半堂課老實說沒有太多區別，但針對週期性的分析和處理是這門課最有趣的特點。

<!--more-->

## 冬季學期的安排

我們在冬季學期上了三堂課，其中一門 *Collaborative Industry Project* 其實是做兩個 projects，所以實際上學習只有這兩門課程：

* *Advanced Econometrics II*（時間序列）
* *Data Analytics and Mining*（SAS 建模）

誠如之前在〈{% post_link 2017-Spring-Articles 這半年發生的事 %}〉所提到的，這兩門課都不是太偏理論的課程。這一部分是因為當時我們全班都在忙 project，所以教授們的教學方向也更偏操作和應用，或許還很佛心地避免考太過艱深的理論。不過時間序列是個滿有趣的資料型態，我也能就我所學到的皮毛談一談學習心得。如果對時間序列或 ARIMA 模型有點認識的讀者，恐怕會覺得我的分享太淺了，不過如果不介意童言童語的話，還請不吝指正。

## 老師和教學方法

這門課的老師是 Professor Garland Durham，教學方法是板書、教材和 `R` 並用，教材主要是之前提過的 [*Time Series Analysis and Its Applications: With R Examples*](https://www.amazon.com/Time-Analysis-Its-Applications-Statistics/dp/3319524518/)，由於時間關係，我們只上了前三章多一點。`R` programming 方面，我們用的套件是作者 Professor Stoffer 寫的 [`astsa`](https://cran.r-project.org/web/packages/astsa/index.html)。為了上這門課，我也上了一輪 Datacamp 上的相關課程，其中以 [*ARIMA Modeling with R*](https://www.datacamp.com/courses/arima-modeling-with-r) 和 [*Manipulating Time Series Data in R with xts & zoo*](https://www.datacamp.com/courses/manipulating-time-series-data-in-r-with-xts-zoo) 最為實用。其他課程其實也不錯，只適合這門課教的內容重疊較少。換句話說，學了以上兩門課程，就和我們所學有八成左右的重疊，剩下的兩成大多是理論的證明和推導，有興趣的讀者也能去讀教材。

事後想想，其實這門課的最終目標，就是讓我們了解如何利用 ARIMA 模型建模，並理解背後原理。前者雖然不難，實務上也大多是靠[自動函數](https://www.rdocumentation.org/packages/forecast/versions/7.3/topics/auto.arima)解決，但要理解後者還是得花不少時間，這和使用 `lm` 函數是一樣的道理。我覺得學到後來，印象最深的是時間序列資料的特性，以及處理上要留意的謬誤。

## 資料產生過程和週期性

時間序列，顧名思義就是和時間有關的資料，更精確一點說，是根據時間排列的資料，所以諸如每日氣溫、銷量，每季度的 CPI、M1，或每年的 GDP 都是時間序列資料。雖然呈現上，時間序列資料和一般資料一樣，也是由行和列構成，只是其中一行是時間，但兩者之間在資料產生過程（data generating process，DGP）上有根本差異。

由於時間序列是根據資料產生順序所排列的一組資料，每一筆資料間有分先後，而且在先後之間或許還有週期性（periodicity，或季節性 seasonality）。如果不考慮先後這點，回想一下線性迴歸中資料的處理，就會發現不論資料產生的時間，觀測值都是根據大小來排列，比方說排成一條斜線；但如果考慮到先後，七月的資料，就得排在二月之後。而且不同時間內，資料可能有週期性，例如七月的氣溫持續比二月高。考慮到這兩個基本特性，資料處理和建模的方法就需要改變。

反過來說，如果我們用一般的方法處理時間序列資料，可能會遺漏一些重要的特性。比方說，如果用一般的線性迴歸法解決季節性的問題，將年和月分別當作連續和不連續的變因建模的話，這樣雖然能區分每個月份的特性，也能得出不同年份的整體趨勢，但這麼做又忽略了順序這項特質，特別是「前者是否對後者有影響」的相關性。畢竟今年八月的氣溫，比起去年八月，可能和今年七月的氣溫更有關聯，上述方法無法從月份之間平均值的區別掌握這層關聯性，也無法從每年的平均值捕捉到兩個月之間的關係。

所以透過另一套方法分析時間序列資料就顯得很重要。某種程度上，我喜歡把時間序列分析想成是一套 data manupulation 的方法。就建模技術上，時間序列資料和一般資料的區別並不大，就設計和假設上所需考慮的面向也很相近，但考慮到上面提到的特性，我們需要一套能正確分析關係的流程，時間序列分析也就應運而生。

## 訊號和雜訊

如果將上面的敘述用更精準的數學式表達的話，可以先將時間序列資料的組成分為兩者：訊號和雜訊（signal and noise），兩者的區別和線性迴歸提過的一樣，前者是分析的目標，屬於真正的資料產生過程，後者是可忽略、也就是長期平均值為零的雜訊。不過和一般迴歸不同的是，在一般迴歸裡看待兩者的觀點，給我的感覺比較接近「在模型下區分訊號和噪音」，但在時間序列裡考慮到週期性和相關性，觀點比較接近「歸納幾種特定的 DGP 後，用這些關係設計建模方法」。這算是一個滿微妙的區別。

我記得上學期在一般迴歸裡，一開始我認識訊號和雜音的差異很簡單：教授在黑板上點幾個點，在中間畫一條線，說這條線就是模型，點和線之間的距離是雜訊，並接著談最小平方法（OLS）等等；但在這門課裡，我們是先從訊號和雜訊如何構成 AR、MA、RW 等數列講起，才接著說明各種數列的特性，最後沿用之前學過的建模方法。雖然兩種說法對訊號和雜訊的看法完全相同，但後者接近 bottom-up 的做法，或許也說明了為什麼我覺得時間序列的處理，某部分很像融合不同考量的 data manipulation。

在以下的模型表達式中，{% raw %}$x_{t}${% endraw %} 代表訊號，{% raw %}$w_{t}${% endraw %} 代表雜訊，兩者共有的 {% raw %}$t${% endraw %} 則表示時間順序。這邊先提幾個我自己歸納的資料生成規則：

* 順序：{% raw %}$t${% endraw %} 決定資料順序，例如一個序列 {% raw %}$X${% endraw %} 包含從 {% raw %}$x_{1}${% endraw %} 到 {% raw %}$x_{t}${% endraw %} 等資料。
* 關聯：每一筆資料可能包含前一筆資料中**不同比例和深度的訊號和雜訊**，例如 {% raw %}$x_{t} = \alpha_{1} \cdot x_{t-1} + \alpha_{2} \cdot x_{t-3}${% endraw %} 或 {% raw %}$x_{t} = \beta_{1} \cdot w_{t-2} + \beta_{2} \cdot w_{t-4}${% endraw %} 或兩者混合。
* 平穩：每種數列都需要考慮其週期或[平穩性](https://zh.wikipedia.org/wiki/%E5%B9%B3%E7%A8%B3%E8%BF%87%E7%A8%8B)，另外 {% raw %}$w${% endraw %} 可以被簡單當作[白噪音](https://zh.wikipedia.org/wiki/白雜訊)。

這些只是一些簡單的規則，更嚴謹的定義和術語可以參考 Wikipedia 上的[時間序列](https://zh.wikipedia.org/wiki/時間序列)。如果讀者還記得 *{% post_link Advanced-Econometrics-I Advanced Econometrics I %}* 中提到的五個假設，用 Mean Independence 和 Homoskedasticity 其實很好理解時間序列的假設，也能從而推敲何謂 de-trending 和 [GARCH 模型](https://zh.wikipedia.org/wiki/ARCH模型)所解決的問題。

![San Jose](sanjose.jpg)


## 幾種不同的數列

理解了 {% raw %}$x_{t}${% endraw %} 和 {% raw %}$w_{t}${% endraw %} 的簡單規則後，以下談由兩者組成的各種數列。理解這些數列的目的，是了解不同資料產生過程所帶來的各種特性，這些會直接影響之後的建模和預測。

### White Noise 白噪音

資料產生過程：{% raw %}$w \sim N\left( 0,\sigma_{w}^{2}\right)${% endraw %}

這裡假設 {% raw %}$w${% endraw %} 符合平均值為零和狹義的[平穩性](https://zh.wikipedia.org/wiki/%E5%B9%B3%E7%A8%B3%E8%BF%87%E7%A8%8B)（stationarity），所以我們上課時直接將 {% raw %}$w${% endraw %} 當作符合 {% raw %}$N(0,\sigma^{2}_{w})${% endraw %} 分佈的數列。根據 Wikipedia 上的[介紹](https://zh.wikipedia.org/wiki/%E7%99%BD%E9%9B%9C%E8%A8%8A)，白噪聲在功率、頻寬等方面有一些有趣的假設，相信這和統計上的理論和方法設計很有關係，但我所上過的幾門課程並沒有詳細說明這點。不過現實生活中有很多時間序列資料，如金融數據，並不呈正態分佈，有著[肥尾](https://zh.wikipedia.org/wiki/%E8%82%A5%E5%B0%BE%E5%88%86%E5%B8%83)（fat-tailed）或變異數隨時間變化等特徵，所以白噪音也不全面適用。

### Random Walk 隨機漫步

資料產生過程：{% raw %}$x_{t} = c + x_{t-1} + w_{t}${% endraw %}

隨機漫步模型（RW）的特點是累加 {% raw %}$w${% endraw %}，數列本身的期望值不為零，需要透過各項相減還原回 {% raw %}$w${% endraw %}。當 {% raw %}$c${% endraw %} 不為零時，模型也被稱為 Random Walk with Drift。我上過的課程裡並沒有特別強調 RW，不過透過相減追求平穩性這項特質，在實務上是消除 Drift 滿常見的處理方法。另外 RW 這個詞，相信讓不少讀者聯想到《[漫步華爾街](https://zh.wikipedia.org/wiki/%E6%BC%AB%E6%AD%A5%E8%8F%AF%E7%88%BE%E8%A1%97)》這本書，以及背後的[有效市場假說](https://zh.wikipedia.org/wiki/%E6%95%88%E7%8E%87%E5%B8%82%E5%A0%B4%E5%81%87%E8%AA%AA)（EMH）。理所當然地，在[隨機漫步假說](https://zh.wikipedia.org/wiki/%E9%9A%A8%E6%A9%9F%E6%BC%AB%E6%AD%A5%E5%81%87%E8%AA%AA)的簡易模型中也能發現 {% raw %}$w${% endraw %} 的存在，不過這就超出我~~這個偽金融學生~~的守備範圍了。

### Autoregressive 自迴歸

資料產生過程：{% raw %}$x_{t} = c + \sum _{i=1}^{p}\varphi _{i}x_{t-i} + w_{t} \\= c+ (\varphi _{1} x_{t-1}+\varphi _{2}x_{t-2}\ldots + \varphi _{p}x_{t-p}) + w_{t} ${% endraw %}

自迴歸模型（AR）的特點是每一項都帶有過去項的影響，這項設計讓它可以包涵「第 {% raw %}$t${% endraw %} 項數受過去訊號影響」這項假設。特別的是，由於 AR 模型中每一項都能往以前追溯，針對 AR 模型的平均數和變異數分析，可以先利用[迭代法](https://zh.wikipedia.org/wiki/%E8%BF%AD%E4%BB%A3)還原回最低項，再計算平均數、確認平穩性等等。

### Moving Average 移動平均

資料產生過程：{% raw %}$x_{t} = c + \sum _{i=0}^{p}\theta _{i}w_{t-i} \\= c+ (\theta _{1}w_{t-1}+\theta _{2}w_{t-2}\ldots + \theta _{p}w_{t-p}) + w_{t} ${% endraw %}

移動平均模型（MA）和 AR 相似的地方在於包含過去項的關聯，不過 MA 包含的是雜訊而非訊號，有點像 RW 的變形。由於過去項都是雜訊，MA 模型的平均數和變異數分析比較簡單，圖形上比起 AR 看起來也相對穩定。從這邊也能看出 AR 和 MA 的組成不同，兩者可以互補成 ARMA 模型，用於包含過去訊號和雜訊對往後的影響。

### ARMA 和省略的內容

資料產生過程：{% raw %}$x_{t} = c + \sum _{i=1}^{p}\varphi _{i}x_{t-i} + \sum _{j=0}^{q}\theta _{j}w_{t-j}${% endraw %}

這就是時間序列分析中使用的 ARMA 模型了，為了區分兩者的範圍，這邊的 {% raw %}$w${% endraw %} 項數有所更動，不需要和 {% raw %}$x${% endraw %} 一樣。為了簡化表達，針對這個只包含 {% raw %}$w${% endraw %}、{% raw %}$x${% endraw %} 和 {% raw %}$c${% endraw %} 的數學式，我們可以用 {% raw %}$B${% endraw %} 表達數項中的滯後關係，把它寫成：

{% raw %}
$$
(1-\varphi _{1}B-\varphi _{2}B^2- \ldots -\varphi _{p}B^{p}) \cdot x_{t} = c + (1+\theta _{1}B+\theta _{2}B^2+ \ldots +\theta _{q}B^{q}) \cdot w_{t}
$$
{% endraw %}

其中 {% raw %}$ B^{q} \cdot w_{t} = w_{t-q}${% endraw %}，左邊的連加變連減是因為移項。{% raw %}$B${% endraw %} 可以讀作 Backward，有時也會用 {% raw %}$L${% endraw %} 代替，稱為 Lag Operator。這只是一種用來簡化 {% raw %}$\sum${% endraw %} 的寫法，也能讓滯後關係更直觀。我們還可以進一步簡化成下式：

{% raw %}
$$
\varphi (B) \cdot x_{t} = c + \theta (B) \cdot w_{t}
$$
{% endraw %}

利用這個模型，時間序列分析能包涵上述特性所帶來的影響。簡化到這一步，相信不難看出我們如何從界定訊號 {% raw %}$x${% endraw %} 和雜訊 {% raw %}$w${% endraw %}，到考慮到前後影響，加入滯後等設計。不過，雖然這很接近 ARIMA 建模中所使用的模型了，和上一門課一樣，我省略了很多重要的概念和證明。雖然理解這些模型，已經足以使用等一下會提到的函數，以及初步解讀結果，但如果想更精準分析和預測時間序列資料，這些是值得學習的概念：

* [Wold's Theorem](https://en.wikipedia.org/wiki/Wold%27s_theorem)：ARMA 模型適用於時間序列分析的基礎，大意是任何平穩的時間序列資料都能表達為 AR 和 MA 的合體。
* [ACF](https://en.wikipedia.org/wiki/Autocorrelation)／[PACF](https://en.wikipedia.org/wiki/Partial_autocorrelation_function)：分析數列中前後關聯的方法，用於分辨數列的平穩性。由於時間序列的擬合過程是一段不斷拆解，直到成果接近 {% raw %}$w${% endraw %} 的過程，利用 ACF 或 PACF [分辨 AR、MA](http://mropengate.blogspot.com/2015/11/time-series-analysis-box-jenkins.html)、ARMA 或 WN 很重要。
* [Causality／Invertibility](https://people.ucsc.edu/~ealdrich/Teaching/Econ211C/LectureNotes/Unit1-ARMA/causality.html)：利用滯後因子分析 AR 或 MA 數列的方法，判斷平穩性和是否收斂。某些情況下 AR 和 MA 可透過 matching coefficient 方法互換。

以上是三個我覺得比較重要的概念，想學得更完整的讀者，可以參考 Wharton 的 [*Stat910: Time Series Analysis*](http://www-stat.wharton.upenn.edu/~stine/stat910/)，上面有很詳盡的講義和 `R` code。

## ARIMA 建模

時間序列資料的建模並不難，只要掌握不同模型的特徵就能入門。如前所述，ARIMA 建模本質上就是迴歸分析，只是需要考慮到和一般資料不同的架構。以下先從如何利用 `arima.sim()` 產生數列，再從另一端談如何建模。

### 產生資料

了解了不同模型之後，這裡談一下如何產生不同數列。產生時間序列資料的方法有三種：

1. 利用迴圈產生數列
2. 利用 `filter()` 函數
3. 利用 `arima.sim()` 函數

第一個方法很簡單，利用 `rnorm()` 等函數產生必要的雜訊，並定義 $x_{0}$ 等基本項後，就能用 `for` 迴圈生成向量了。第二種老實說我也不太會用⋯⋯我試著讀過說明文件，但當時沒有很認真想弄懂。這邊想談的主要是第三種，`arima.sim()` 的使用方法。

在 `arima.sim()` 模型裡可以定義的變數如下：

* `n`：項數
* `model`：由 `list(order = (p,d,q))` 組成，後三項分別是 AR、差分、MA 的滯後項係數
* 其他的變數包括雜訊產生方法（例如 `rnorm`）等等

其中由 `(p,d,q)` 所產生的模型，就稱為 ARIMA(p,d,q)。前面沒提到的差分項 $d$，讀者可以參考 Wikipedia 上的 [ARIMA 模型](https://zh.wikipedia.org/wiki/ARIMA模型)。ARIMA 的（數階）差分即為 ARMA 模型。由 `arima.sim()` 產生的數列為 `ts` 資料型態，想多了解如何處理 `ts` 的讀者可以參考前面推薦的 [*Manipulating Time Series Data in R with xts & zoo*](https://www.datacamp.com/courses/manipulating-time-series-data-in-r-with-xts-zoo)。

以下是一些 `arima.sim()` 的範例：

{% raw %}
$$
AR(2): x_{t} = 1.5 x_{t−1} − 0.75 x_{t−2} + w_{t}
$$
{% endraw %}

```r
ar_2 <- arima.sim(model = list(order = (2,0,0),
                               ar = c(1.5, -0.75)),
                  n = 1000)
```

{% raw %}
$$
MA(1): x_{t} = w_{t} - 0.8 w_{t-1}
$$
{% endraw %}

```r
ma_1 <- arima.sim(model = list(order = (0,0,1),
                               ma = -0.8),
                  n = 1000)
```

{% raw %}
$$
ARMA(1,1): x_{t} = 0.9 x_{t-1} + w_{t} - 0.4 w_{t-1}
$$
{% endraw %}

```r
arma_1_1 <- arima.sim(model = list(order = (1,0,1),
                                   ar = 0.9,
                                   ma = -0.4),
                      n = 1000)
```

{% raw %}
$$
ARIMA(1,1,0): x_{t} - x_{t-1} = y_{t} = 0.9 y_{t-1} + w_{t}
$$
{% endraw %}

```r
arima_1_1_0 <- arima.sim(model = list(order = (1,1,0),
                                      ar = 0.9,
                         n = 1000)
```


### `arima` 函數和 SARIMA

了解了如何利用 `arima.sim()` 產生時間序列資料後，就能利用 `arima()` 分析。`arima()` 的使用方法和 `arima.sim()` 大同小異，唯一區別是 `arima()` 是用來分析資料，後者是用來產生資料。所以在 `arima()` 裡需要指定的變量包括：

* `y`：`ts` 類別的時間序列資料
* `order`：由 `list(p,q,r)` 組成，即三者的滯後深度
* `seasonal`：由 `list(P,Q,R)` 組成，即整個 ARMA 模型的季節性
* `xreg`：外在變量
* 其他選項包括是否包括 mean、drift 等等

其中 `seasonal` 是前面沒提到的季節性。延續前面提到的 ARMA 模型，Seasonal ARIMA（SARIMA）模型的型態如下：

$$
\Phi (B^{s}) \cdot \varphi (B) \cdot x_{t} = \Theta (B^{s}) \cdot \theta (B) \cdot w_{t}
$$

加入了 $\Phi$ 和 $\Theta$ 之後，SARIMA 可以包涵長期（$ B^{s} $）的週期性，例如每隔十二個月的變化可以表示為：

$$
SARIMA(0,0,1) \times (1,0,0)_{12}: x_{t} = \Phi x_{t-12} + w_{t} + \theta w_{t-1}
$$

可以看出 $\theta$ 決定了前項和後項間 $w$ 的關係，但 $\Phi$ 決定了前後間隔十二項 $x$ 的關係。雖然這個表達式看起來有點複雜，剛入門的讀者可以把這想成是包含季節性的設計。總而言之，在 `arima()` 函數裡，我們需要指定最多七項（`p`、`d`、`q`、`P`、`D`、`Q`、`period`）變量，以供 `arima()` 測定係數。但問題來了，在測試這些數值時，怎樣才算好的模型呢？

### 模型選擇

我們所學的簡易工作流程如下：

1. 先用 `plot()` 或 `ts.plot()` 觀察散點或線條圖
2. 如果圖形看起來不太像白噪音，例如斜率不為零或平均不為零，就利用 `log()`、差分函數 `diff()`、線性迴歸 `lm()` 等方式 de-trend 數據
3. 利用 `acf()`、`pacf()` 和 `acf2()` 等模型判定資料產生過程
4. 帶入不同的變量，觀察 AIC、BIC 等數值，直到找出最佳模型

可以看出前三項是我前面沒提到，但也滿重要的步驟。我前面有稍微提到「時間序列的擬合過程是一段不斷拆解，直到成果接近 $w$ 的過程」，所以這就是那段讓我感覺像 data manipulation 的步驟，也是需要掌握理論的原因。老實說，第四個步驟就只是 grid-search 和 performance comparison，所以除了一組一組係數慢慢試，也能寫個 `for` 迴圈批次測試。所以更進階的用法涉及兩個函數：`sarima()` 跟 `auto.arima()`。

`sarima()` 是 `astsa` 套件中的函數，和 `arima()` 的功能基本上差不多，不過 `sarima()` 能提供更詳盡的報告，像是殘差的 ACF、Q-Q plot、[Ljung–Box test](https://en.wikipedia.org/wiki/Ljung%E2%80%93Box_test) 等等，也就多了不少可比較的面向。當然，要理解這些報告的意義為何，就和理解 `lm()` 的報告一樣，最好先熟悉理論。

另一個更強大的函數是 `forecast` 套件裡的 `auto.arima()`，顧名思義，這個函數直接包辦了第四步驟的自動化，省下不少一組一組係數測試的時間。不過有時 `auto.arima()` 返回的結果，不一定是最理想的，所以在更嚴謹的建模中，通常會用 `auto.arima()` 判斷 AR、MA 係數等建模方向後，再用 `sarima()` 確認最佳模型。這當然一部分是因為模型間能比較的面向不只一個，所以有時也不存在絕對正確的模型。這也是建模的樂趣（？）之一。

![San Diego Zoo](sandiego.jpg)

## 重視時間序列的特性，否則⋯⋯

以上就是我們所學的內容，差不多就是了解 `auto.arima()` 的運作原理，以及學會一些處理不同狀況、改進模型的知識。除此之外，我真心覺得整堂課學下來最重要的一件事，是**如果資料和時間相關，請謹慎處理，不要直接當作一般（截面）資料**。讓我[講得更清楚一點](https://www.facebook.com/thedailyshow/videos/10153265702071800/?type=1&theater)：

我：如果資料產生的過程和時間相關，別忽略時間序列分析，也別直接當一般資料處理。
某：所以我不能把時間當一個 variable 丟進 `lm()` 裡就好嗎？
我：不行，因為這樣會忽略許多重要的性質。
某：就算我先用 `as.Date()` 改變資料型態？
我：還是不行，這跟改不改 `Date` 沒什麼關聯。平面的 `lm()` 無法捕捉上述幾種模型的特質。
某：那如果直接用 `lm()` 發現結果正合我意⋯⋯
我：不！你不能用錯誤的分析方法得出偏頗的結論！
某：可是我完全不會用 `arima()` 也不了解時間序列分析，怎麼辦？
我：⋯⋯人生很長，你可以慢慢學。
某：我同意。我現在就來去嗑一點 `lm()` 模型。

會想特別強調這件很基本的事，是因為在之前提到的 Iowa Case Competition 裡，確實有參賽隊伍將時間序列資料當一般資料建模。他們將時間作為一項 variable，和其他的外在因素丟進 `lm()` 分析以後，得出了「氣溫和銷量呈正相關，而且很顯著」的結論。雖然氣溫的確可能和某些商品的銷量相關，但我們分析的是 3M 的銷售資料⋯⋯於事主管當場就問那支隊伍「氣候暖化那年，我們的銷售額怎麼不增反減？」

聰明的讀者應該一看就知道問題所在。氣溫之所以會和銷量相關，是因為兩者在年復一年的狀況下，都存在季節性等循環，所以他們共同符合「某個時段會上升或下降」的特徵，但這不代表撇除季節性之後，兩者還是有所關聯。也就是說，氣溫和銷量的相似，在於它們有類似的結構，這就像公寓鄰居間雖然房型差不多，但不能因此就說每家的生活很相似一樣。所以，容我再說一次，時間序列分析某種程度上很像 data manipulation，透過假設分離出不同的比較面向後，得出合理的擬合。如果想包含外在因素，請善用 `arima()` 模型中的 `xreg` 變量。


## 眺望遠方的應用

最後，我想說這些內容只算入門。上述幾種數列，和現實中的資料還是有些差異，像是雜訊的分佈不一定常態，這使得擬合的精度不是很高，預測上更是困難重重，誤差大到不實用。所以現今金融市場的應用，又比這篇文章的介紹深入許多，有些是在時間序列的架構下，改善對不同假設的支援，像是前面提到的 GARCH 模型；有些則是結合 Machine Learning 技術，強化模型的 robustness，或是用 RNN 等模型處理時間序列資料的特性。觀察和理解不同技術如何改進時間序列分析，真的是滿有趣的學習經驗，也讓我對仍在和金融工程奮鬥的朋友們充滿敬意。

　
*走走拍拍：朋友家好動的 Zoey、San Jose、San Diego Zoo*

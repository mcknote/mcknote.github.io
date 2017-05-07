---
title: ＃／Essential Statistics for Econometrics
date: 2016-9-25 7:30:00
tags:
- Cal Poly
- MSBA
- Statistics
- R
categories: ＃
---
![](cover.jpg)

沒錯，統計學。這也是我這輩子第三次修統計學，但這次我試著讓一切不只是背公式和計算。我想知道為什麼學、該怎麼用。現在的我比任何時候都想把這門課學好。
<!--more-->

## 學得更多，發現有更多要學

我在九月初就修完了這門課，之後放了一週假，現在正準備開始上 Fall Quarter。之所以會過了一段時間才總結這門課的內容，是因為我很想瞭解為什麼要學統計（不是輸入資料、做做圖就好了嗎？），還有怎麼把統計學的知識轉為優勢。~~不是因為放假那週我在洛杉磯忙著吃台灣牛肉麵跟港式點心。~~

於是，除了這門課相關的學習，我另外花了兩三倍的時間修網路課程、學 R 跟找各式各樣的文章跟書籍。這些 Side Projects 讓我意識到 Data Science 的水真的很深，每一個分支都有好多要學的東西，自己的時間也快不夠用了。當然，要掌握任何一個分支的知識，**統計學都扮演了舉足輕重的角色**。沒錯，就算只想走 Data Visualization，也得把統計學學好，才能正確解圖圖表。所以現在的我不只甘願讀統計學，**我想把統計學讀好**，配合使用各式各樣的工具，逐步培養自己的 Data Analysis 能力。

以下先從我對 *Essential Statistics for Econometrics* 的課前準備開始談起。

## 課前準備

前面提到這是我第三次學統計學，第一次是高三數學，第二次是上海交大的機率統計課跟統計學。回想前兩次學習經驗，我發現自己最後其實只記得一些公式，但從觀念到應用幾乎都忘光了。我心想這樣不行~~以後還得靠這個吃飯啊~~，所以在開課前就開始在 [Datacamp](https://www.datacamp.com/) 上學 R，並慢慢補回一些基礎統計觀念。

![](datacamp.jpg)
<center>（我最近幾週在 Datacamp 上修完的課程）</center>

　
學完前面幾門黃色徽章的基本課程以後，我開始學 [Statistical Inference](https://en.wikipedia.org/wiki/Statistical_inference) 相關的課程，包括 t-test、F-test 跟 ANOVA 等等。從這裡開始，我漸漸意識到一個滿嚴重的問題：我可以在用 R 輕易算出各式各樣的數值，但我不確定該怎麼解釋結果。甚至，一旦少了註解跟指示，面對一個 Dataset，我不知道該用什麼方法、從何開始分析。

這是我前兩次學統計學時沒有意識到的問題，因為當時的我過度專注在題目和計算上。從高中學的常態分布，到大學學的 F-test，我覺得自己學到最多的是計算能力：根據題目要求給出正確答案。但現在的情況完全不同，利用 R 的 Package 跟 Function 我可以不用擔心計算錯誤，也不用一步一步推出各種數值；重點變成**我為什麼要算這些東西，以及我該怎麼解讀算出來的結果**。

所以從八月中修完 *{% post_link Data-Visualization-Storytelling Data Visualization and Storytelling %}* 以來，我預習統計學的方法有三個：

* 繼續在 [Datacamp](https://www.datacamp.com/) 上 Coding 學 R
* 找一些基礎的書來讀，例如 [*Naked Statistics*](https://www.amazon.com/Naked-Statistics-Stripping-Dread-Data/dp/039334777X/) 跟 [*The Signal and the Noise*](https://www.amazon.com/Signal-Noise-Many-Predictions-Fail-but/dp/0143125087)
* 偶爾~~想偷懶的時候~~上 [Kaggle](https://www.kaggle.com/) 開開眼界

直到上課前，我至少已經把心態從「這門課好難」轉成「這門課很重要」，也下定決心要把這門課學好。

## 老師和教學方法

這門課的老師是 Dr. Carlos Flores，教學方法沒什麼特別的，就是版書跟筆記。這跟我原先預期的不太一樣，因為當初課程內容寫「有可能會學 R 跟 Stata」，結果第一堂課 Dr. Flores 就宣布「這門課很難，要把 Statistical Inference 講完，所以我們會著重在課本上的理論，不會用到電腦。」所以後來我抄筆記、交作業就用掉了快兩本筆記本，並從聽不太懂墨西哥口音，到可以跟老師正常對話（one of the biggest achievements）。

我們用的課本是 Casella & Berger 的 [*Statistical Inference*](https://www.amazon.com/Statistical-Inference-George-Casella/dp/8131503941/)（台譯：《[統計推論](http://www.tenlong.com.tw/items/9789572924601?item_id=55562)》）。雖然我很想接著說「這是一本很棒的書，有興趣的人可以找來讀！」，但其實這本書充滿了定理、證明跟公式，對底子薄弱的人（例如我）來說直接讀實在有點吃力，很容易迷失在符號海洋當中。我是在 Dr. Flores 的導讀下才比較清楚整本書的架構，所以對正在閱讀這篇文章的你，我的建議是可以從這些資源入門：

* 前面提到的 [*Naked Statistics*](https://www.amazon.com/Naked-Statistics-Stripping-Dread-Data/dp/039334777X/) 和 [*The Signal and the Noise*](https://www.amazon.com/Signal-Noise-Many-Predictions-Fail-but/dp/0143125087)（*1）
* Udacity 上的 [*Intro to Descriptive Statistics*](https://www.udacity.com/course/intro-to-descriptive-statistics--ud827) 和 [*Intro to Inferential Statistics*](https://www.udacity.com/course/intro-to-inferential-statistics--ud201)（*1）
* Degroot 的 [*Probability and Statistics*](https://www.amazon.com/Probability-Statistics-4th-Morris-DeGroot/dp/0321500466/)（*2）

註一：這些資源是來自 Mitch Crowe 所寫的 [*Learn Data Science the Hard Way*](http://www.mitchcrowe.com/learn-data-science-the-hard-way/)，強力推薦。
註二：這是 Dr. Flores 推薦的 Reference Textbook，比起 *Statistical Inference* 圖比較多，實例也比較多。雖然 Amazon 上有「定義不清楚」的評價，對於不太鑽研數學原理的人來說應該還行。

## 上課內容

所以平常上課就是照著 *Statistical Inference* 一直讀下去。課後我也找各式各樣的資源，一方面是幫助自己更加瞭解上課內容（例如找定理的實例，直接歸納怎麼解題），一方面也如前面所說，希望能保持學習統計學的熱情。過程中涵蓋的章節如下：

|章節|內容|
|:---|:---|
|一、[集合論](https://zh.wikipedia.org/zh-hant/%E9%9B%86%E5%90%88%E8%AE%BA)|介紹集合概念，配合[文氏圖](https://zh.wikipedia.org/wiki/%E6%96%87%E6%B0%8F%E5%9B%BE)解釋運算規則|
|二、[機率論](https://zh.wikipedia.org/zh-hant/%E6%A6%82%E7%8E%87%E8%AE%BA)|介紹事件和樣本空間，配合上述運算規則|
|三、[條件機率](https://zh.wikipedia.org/zh-hant/%E6%9D%A1%E4%BB%B6%E6%A6%82%E7%8E%87)|在不同情況下計算機率，介紹[全機率律](https://zh.wikipedia.org/zh-hant/全概率公式)和[貝氏法則](https://zh.wikipedia.org/zh-hant/贝叶斯定理)|
|四、[隨機變數](http://ccckmit.wikidot.com/st:randomvariable)|用數值指代集合和事件，方便運算[期望值](https://zh.wikipedia.org/wiki/%E6%9C%9F%E6%9C%9B%E5%80%BC)和[變異數](https://zh.wikipedia.org/wiki/%E6%96%B9%E5%B7%AE)|
|五、[機率分布](https://zh.wikipedia.org/zh-tw/%E6%A6%82%E7%8E%87%E5%88%86%E5%B8%83)|介紹 [CDF](https://zh.wikipedia.org/zh-hant/%E7%B4%AF%E7%A7%AF%E5%88%86%E5%B8%83%E5%87%BD%E6%95%B0)、[PMF/PDF](https://zh.wikipedia.org/wiki/%E6%A9%9F%E7%8E%87%E5%AF%86%E5%BA%A6%E5%87%BD%E6%95%B8)、[MGF](https://en.wikipedia.org/wiki/Moment-generating_function) 等函數形式，配合微積分推導定理和公式|
|六、[分布特例](https://zh.wikipedia.org/wiki/Template:%E5%B8%B8%E8%A7%81%E4%B8%80%E5%85%83%E6%A6%82%E7%8E%87%E5%88%86%E5%B8%83)|分成離散和連續兩種，介紹各種分布的特徵和用法|
|七、[多變量隨機分布](www.math.ncu.edu.tw/~yu/ps98/boards/lec34_ps_98.pdf)|綜合前面的內容（主要是條件機率和機率分布），對兩個以上的變量運算機率、[共變異數和相關係數](http://greenhornfinancefootnote.blogspot.com/2007/08/covariance-and-correlation-coefficient.html)|
|（期中考）|以上所有內容|
|八、[隨機抽樣](https://en.wikipedia.org/wiki/Simple_random_sample)|研究對象從[母體轉為樣本](http://www.stat.nuk.edu.tw/prost/content2/statics_1.htm)，應用新的定理、算法和分布特徵|
|九、[點估計](http://homepage.ntu.edu.tw/~huilin/2008-1/ch10.pdf)|利用樣本統計量估計母體，介紹 [MOM](http://w3.math.sinica.edu.tw/math_media/d312/31201.pdf) 和 [MLE](http://ccckmit.wikidot.com/st:maximumlikelihood) 的性質和使用方法|
|十、[評估估計量](https://www.probabilitycourse.com/chapter8/8_2_1_evaluating_estimators.php)|評估 MOM 和 MLE 的估計結果，分成 [Accuracy 和 Precision](https://zh.wikipedia.org/wiki/%E6%BA%96%E7%A2%BA%E8%88%87%E7%B2%BE%E5%AF%86) 兩個面向；介紹[均方差](https://zh.wikipedia.org/zh-tw/%E5%9D%87%E6%96%B9%E5%B7%AE)|
|十一、[漸近理論](http://www3.nccu.edu.tw/~hmlien/statistics/lecture/ch8a.ppt)|配合極限逼近求估計量；介紹漸進過程中的[一致性](http://murphymind.blogspot.com/2011/10/estimation.html)和[中心極限定理](https://zh.wikipedia.org/zh-tw/%E4%B8%AD%E5%BF%83%E6%9E%81%E9%99%90%E5%AE%9A%E7%90%86)|
|十二、[假設檢定](https://zh.wikipedia.org/zh-tw/%E5%81%87%E8%A8%AD%E6%AA%A2%E5%AE%9A)|基於上述理論和算法，利用[常態分布](https://zh.wikipedia.org/wiki/%E6%AD%A3%E6%80%81%E5%88%86%E5%B8%83)性質檢驗統計結果，算出[信賴區間](https://zh.wikipedia.org/wiki/%E7%BD%AE%E4%BF%A1%E5%8C%BA%E9%97%B4)|
|（期末考）|從期中考之後的內容|

需要注意的是，雖然我用了幾行字簡單概括每個章節的內容，也附上了一些參考資料，但其實上面每個章節都可以各自寫成一篇很長的文章，中間的定理、推導過程和邏輯也不容忽視。有興趣研究以上內容的人，還是先從[老師和教學方法](#老師和教學方法)裡提到的資源入手比較合適。

## 漫漫長路

會列這張表，只是想說明過去只重計算的我，果然在期中考後就嘗到苦頭了，對 Sample 和 Estimator 的概念掌握不深，看到作業上的題目也一頭霧水……不過我當時也清楚，自己已經不能再用「這些不是交給電腦算就好了嗎」等理由跳過這個過程，所以還是花了不少時間過這關。過程中也曾陷入明明都會照著 Cookbook Procedure 做題，但不知道自己在算什麼的窘況，只好回去追進度，重新連結不同知識。

最後，我必須坦承這個過程很無聊。我不會刻意把學習統計學講得多有趣，因為如果想學好這門課，就是**得花幾十個小時看書、寫題目跟思考**。不論我在過程中找了多少補充資料，終究會有迴避不掉，需要靜下心來耐心學習的過程，就像在通過一個漫長、不知何時才到出口的[隧道](https://www.youtube.com/watch?v=NR3iBaN-758)一樣。希望上面這些說明不會讓讀者產生「所以只要讀這些東西就好了」的錯覺，也能在意識到 Data Science（或自己所處的領域）水真的很深以後，勇敢花時間好好努力。

![](train.jpg)
<center>（Amtrak 火車也很深，還雙層的）</center>

## 下一站：Statistical Learning

修完這門課以後，我覺得自己已經站在跟過去完全不同的起點上。在修 *{% post_link Data-Visualization-Storytelling Data Visualization and Storytelling %}* 的時候，我還處於不斷追逐統計軟體的狀態，但在學了 Tableau、R，還有讀一些 Kaggle 上的案例以後，我決定把多花點時間在學習基礎知識上，摸索**怎麼分析**和**為何分析**兩大問題。現在的我：

* 不再輕視或懼怕理論，也能正常閱讀公式跟符號
* 相信統計學是一門**必須掌握**的專業
* 想掌握更多 Data Science 相關的知識跟工具

所以順著 R 的學習路徑和統計學的[發展趨勢](http://magazine.amstat.org/blog/2016/01/01/data-science-the-evolution-or-the-extinction-of-statistics/)，我把下一個目標訂在 Stanford 的 [*Statistical Learning*](https://lagunita.stanford.edu/courses/HumanitiesSciences/StatLearning/Winter2016/about) 課程，也就是更廣為人知的 Machine Learning。

會選這門課的理由跟我剛在[課前準備](#課前準備)中提到的差不多，主要是因為我在 Kaggle 上看到很多分析都在用 Machine Learning，讀了 Code 以後，發現自己基本上都會操作，但也完全不了解背後的原理。所以，順著接下來 Fall Quarter 要學的 Econometrics 和 Linear Regression，我相信 Machine Learning 不管在理論或應用上都是我未來的目標，也就找到了上面這門課。

要是兩三年前的我，可能完全不會對這種艱澀的課感興趣（轉身去學很潮的領導力），但現在的我比任何時候都想把這門課學好。再加上這門課的教授 [Trevor Hastie](http://web.stanford.edu/~hastie/) 和 [Robert Tibshirani](http://statweb.stanford.edu/~tibs/) 真的很佛心：親自講課，還免費公開著作 [*An Introduction to Statistical Learning*](https://www.amazon.com/Introduction-Statistical-Learning-Applications-Statistics/dp/1461471370)。有這麼棒的資源，真是萬事俱備，只欠時間。等放假完，Fall Quarter 開始以後，我就要準備好踏上另一段旅程了。
　
*圖片來源：Surf Station of Amtrak*

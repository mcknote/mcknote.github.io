---
title: ＃／McK & Note 架站筆記
date: 2016-4-4 14:30:00
tags: 
- Hexo
- GitHub
- NexT
- DNS
- Cloudflare
categories: 想
comments: true
---
{% asset_img cover.jpg %}
　
2016 年三月十五日，在朋友[蛋元](http://tanyuans.tumblr.com/)的介紹下，我決定自己架 McK & Note 網站。話題的開頭很簡單，我和蛋元抱怨 Facebook Page 的發文介面太簡陋，很難安排超連結、文章結構等內容，而且不是每個人都有閒在 Timeline 吸收這些內容，所以在考慮自己架站。<!--more-->

當時我的選擇是 Wordpress，但以前的經驗告訴我 WP 太肥、太難管理，很容易分心。我把想要單純寫作的想法跟蛋元說，他建議我試試看 GitHub + Jekyll，[稍微研究以後](https://forum.suse.org.cn/viewtopic.php?f=5&t=2377)覺得真的不錯，[Markdown 格式](http://markdown.tw/)也符合我力求簡單的寫作需求，所以就快速架了一個網站。不過之後陰錯陽差看到了超漂亮的主題 [NexT](http://theme-next.iissnan.com/) 以及[這篇知乎](https://www.zhihu.com/question/21981094)，所以就換用 GitHub + Hexo，之後幾天我把所有時間花在網址設定和版面調校上。

如果你看不懂我在寫什麼，沒關係，這很正常，換成是三月初的我大概也不知道這些是什麼，這幾週我幾乎是從零學習怎麼架站；不過如果你**很想持之以恒地寫作，很想擁有一個簡單、強大、免費的平台，很想督促自己快快成長**，請參考以下的教學，一天之內，你也能擁有如 McK & Note 一樣完整的網站。

　
# 空間：GitHub

　
架站第一步是先找到裝檔案的空間，[GitHub](https://github.com/) 是個滿理想的選擇，因為它免費、穩定，功能用來應付[靜態網頁（Static Webpage）](http://gordon168.tw/?p=100)綽綽有餘。本步驟需要完成的事情有：

> 1. [註冊 GitHub 個人帳號](https://github.com/)
> 2. [建立一個倉庫（Repository）](https://backlogtool.com/git-guide/tw/intro/intro2_1.html)
> 3. [安裝 Git](https://help.github.com/articles/set-up-git/)
> 4. [部署 SSH Key](https://help.github.com/articles/generating-an-ssh-key/)

## 注意 SSH Key

其中 SSH Key 應該是比較複雜而且容易碰到錯誤的步驟，如果看了 GitHub 官方的說明文件還是不清楚，可以參考[愛流浪的小風（Windows）](https://dotblogs.com.tw/kirkchen/2013/04/23/use_ssh_to_interact_with_github_in_windows)或 [QA的雜七雜八筆記本（Mac）](http://qbsuranalang.blogspot.com/2015/01/gitgithubgitlab.html)的圖文教學。完成了這個步驟，你就擁有免費的網站空間了。

　
# 系統：Hexo

　
McK & Note 使用的是 [Hexo 系統](https://hexo.io/)，Hexo 有很多不錯的[主題（Theme）](https://hexo.io/themes/)，安裝和維護也很方便。Hexo 的運作原理是**「將 [Markdown 格式](http://markdown.tw/)的純文字文件處理成 HTML 以後，上傳到 GitHub 上」**，所以一旦安裝完畢，日後使用者只需要專注在 Markdown 的寫作上。本步驟需要完成的事情有：

> 1. [安裝 Node.js](https://nodejs.org/en/)（如果還沒有的話）
> 2. [安裝 Hexo](https://hexo.io/zh-tw/docs/index.html)
> 3. [初始化 Hexo，並在**目標資料夾**建立所需檔案](https://hexo.io/zh-tw/docs/setup.html)
> 4. [安裝 hexo-deployer-git](https://hexo.io/zh-tw/docs/configuration.html)
> 5. [在 _config.yml 中設定 Git 等資訊](https://hexo.io/zh-tw/docs/configuration.html)

## 純文字命令和編輯器

需要注意的是這些工作大部分都在**純文字命令**的環境中，對某些人來說可能有點陌生，但基本上只要複製、**修改**、貼上 Hexo 的官方指令，就沒什麼問題。另外在「修改 _config.yml 中的設定」一步中，除了可以用系統內建的記事本（Windows）或文字編輯（Mac），也可以考慮用免費的 [Notepad++](https://notepad-plus-plus.org/) 或付費的 [Sublime Text](https://www.sublimetext.com/)，這對使用者以後編輯文章或設定很有幫助。

## Git 設定

最後，安裝 ```hexo-deployer-git``` 和在 ```_config.yml``` 設定 Git **非常重要**，這關乎網站能不能上傳到[第一步驟](#空間：GitHub)中設定的 GitHub 倉庫。執行 ```$ npm install hexo-deployer-git --save``` 以後，打開 ```_config.yml``` 找到 ```deploy``` 這行，確定下面有這些指令：

{% codeblock ~/_config.yml %}
deploy:
  type: git
  repo: 　#輸入倉庫的 **SSH** 網址而非 HTTPS 網址，可在倉庫首頁找到
  branch: master 　#或是你在第一步驟另外建立的 branch
{% endcodeblock %}

## Deploy!

完成上面五件事以後，網站就幾乎大功告成了！你只需要記下面四個[指令](https://hexo.io/zh-tw/docs/commands.html)，就可以時時更新、維護 Hexo：

{% codeblock Hexo Commands %}
$ hexo d 　#發佈網站
$ hexo g 　#生成內容（發文等更新需要用）
$ hexo clean 　#清除內容（如果擔心之前的修改不徹底或是有殘留的檔案，可以先 clean 再 g）
$ hexo s 　#在本機預覽網站
{% endcodeblock %}

現在你就可以執行 ```$ hexo d```，然後用你的 GitHub 網址看看網站是否已經順利上線。如果遇到 git 錯誤，請確認是否安裝了 ```hexo-deployer-git```；如果遇到 SSH Key 的問題，請參考[第一步驟](#注意-SSH-Key)。

　
# 文章：編輯和發佈

　
現在你可以開始[寫作](https://hexo.io/zh-tw/docs/writing.html)了，Hexo 的文章原始檔都以 ```.md``` 格式存在 ```~/source/_post/``` 資料夾裡面，你可以直接用裡面的 Hello World 文件改寫，也可以執行 ```$ hexo new “標題”``` 指令新建空白檔案。我平常都是複製舊的檔案，改一改以下的開頭資訊，並貼上準備好的新內容。

## 文章開頭設定

一篇 Hexo 文章的開頭應該包括標題（Title）、分類（Category）、標籤（Tag）、發佈時間（Date）等等。以這篇為例，開頭資訊如下：

{% codeblock ~/source/_post/Set-up-McK-Note.md %}
---　
title: ＃／McK & Note 架站筆記
date: 2016-4-4 14:30:00
tags: 
- Hexo
- GitHub
- NexT
- DNS
- Cloudflare
categories: 想
comments: true
---
（下續內文）
{% endcodeblock %}

特別注意 ```tags``` 是平行關係， ```categories``` 則有上下層關係。

## Markdown 格式

至於內文採用的 [Markdown 格式](http://markdown.tw/)不難學，只需要記幾個常用的指令，遇到不懂的再[上網查](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)就好，用久了以後我甚至覺得比圖形化編輯介面（GUI Editor）更方便，不用反白文字調格式，也不用擔心各式各樣的技術問題，只需要簡單的輸入和轉換。我常用的指令有：

{% codeblock Markdown Cheatsheet %}
斜體： *斜體* 
粗體： **粗體** 
粗斜體： ***粗斜體*** 
引言： > 引言 
章節： # 章節
次級章節（以此類推）： ## 次級章節
表格（註1）：|一行|一行|疊|
插入超連結： [超連結文字](網址) 
插入外部圖片： ![圖片描述](圖片網址) 
{% endcodeblock %}

**註1**：表格用法與範例[在此](http://www.jianshu.com/p/sTeAbC)。

除了上面的 Markdown 格式，[Hexo 官方](https://hexo.io/zh-cn/docs/tag-plugins.html)還有[插入 Youtube 影片](https://hexo.io/zh-cn/docs/tag-plugins.html#Youtube)、[引用文章](https://hexo.io/zh-cn/docs/tag-plugins.html#引用文章)等更多說明。編輯完 ```.md``` 檔以後執行 ```$ hexo s``` 就可以看到你的文章了。

　
# 其它：主題與外掛

　
如果你想讓網站看起來更好一點，可以裝個主題。McK & Note 採用的是 [NexT](http://theme-next.iissnan.com/)，你可以參考[官方安裝教學](http://theme-next.iissnan.com/getting-started.html)，這裡只提醒幾點要注意的事情。

## 安裝方法

如安裝教學所寫，你可以用 ```$ git clone``` 的方式安裝，也可以下載 .zip，把它解壓縮到 /themes/ 資料夾裡，記得要把資料夾名稱改成 next。接著編輯步驟一中的 ```_config.yml```一，找到 theme 那行，把它改成

{% codeblock ~/_config.yml %}
theme: next
{% endcodeblock %}

這樣就成功變更主題，可以執行 ```$ hexo s``` 看看效果。需要注意的是 ```_config.yml``` **有兩個**，一個是步驟一中的「站點配置文件」，一個是 next 資料夾底下的「主題配置文件」，不同的設定對應了不同文件，修改時要小心。「主題配置文件」中有很多*好玩*的設定，包括編輯目錄（Menu）、變換外觀（Scheme）等等，一樣可以參考[官方配置說明](http://theme-next.iissnan.com/theme-settings.html)。McK & Note 現在的樣式也是經過無數修改而來。如果你玩得夠深，還可以直接修改 ```/themes/next/layout``` 中的文件，我就是這樣將右邊的 [Facebook 專頁框](https://developers.facebook.com/docs/plugins/page-plugin)加在 ```sidebar.swig``` 裡面。

## 推薦外掛

Hexo 有各種[外掛（Plug-in）](https://hexo.io/zh-tw/docs/plugins.html)，但有些隨著 Hexo 更新變得不相容，安裝的時候要注意，並遵循 KISS 原則（Keep It Simple And Stupid）。你可以從 ```~/node_modules/``` 中察看自己裝了哪些外掛。以下是我認為有必要裝，而且裝起來沒什麼問題的外掛，安裝方法請參見各外掛官方說明：

| 外掛 | 功能 |
| :------| :------------------|
| [hexo-deployer-git](https://github.com/hexojs/hexo-deployer-git) | 步驟二提過，上傳 GitHub 必備 |
| [hexo-generator-index](https://github.com/hexojs/hexo-generator-index) | 產生首頁 |
| [hexo-generator-archive](https://github.com/hexojs/hexo-generator-archive) | 產生歸檔頁|
| [hexo-generator-category](https://github.com/hexojs/hexo-generator-category)| 產生分類頁（註1）|
| [hexo-generator-tag](https://github.com/hexojs/hexo-generator-tag)| 產生標籤頁（註1）|
| [hexo-generator-feed](https://github.com/hexojs/hexo-generator-feed)| 產生 RSS Feed（註2）|
| [hexo-renderer-ejs](https://github.com/hexojs/hexo-renderer-ejs)| 使 Markdown Renderer 支援 EJS Template（註3）|
| [hexo-renderer-stylus](https://github.com/hexojs/hexo-renderer-stylus)| 使 Markdown Renderer 支援 Stylus CSS 處理（註3）|
| [hexo-renderer-marked](https://github.com/hexojs/hexo-renderer-marked)| 改善 Markdown Renderer 細節（註3）|
| [hexo-math](https://github.com/akfish/hexo-math)| 使 Markdown Renderer 支援 MathJax 和 KaTeX 格式的數學公式（註4）|
| [hexo-pdf](https://github.com/superalsrk/hexo-pdf)| 使 Markdown Renderer 支援 PDF、Slideshare 嵌入（註4）|
| [hexo-admin](https://github.com/jaredly/hexo-admin)| 建立本機文章管理介面（註5）|
| [hexo-generator-sitemap](https://github.com/hexojs/hexo-generator-sitemap)| 建立搜索引擎用 Sitemap.xml（註6）|
| [hexo-generator-baidu-sitemap](https://github.com/coneycode/hexo-generator-baidu-sitemap)| 同上，百度用 baidusitemap.xml（註6）|

**註1**：安裝後，需在「主題配置文件」中的 ```menu``` 啟用，McK & Note 目前的設定如下：

{% codeblock ~/themes/next/_config.yml %}
menu:
  home: /
  categories: /categories
  #about: /about
  archives: /archives
  tags: /tags
  #commonweal: /404.html
{% endcodeblock %}

並在 ```~/source/``` 底下建立相應的 ```/tags/``` 或 ```/catagories/``` 資料夾，並在裡面新增一個 ```index.md```，以 tags 為例內容如下：

{% codeblock ~/source/tags/index.md %}
---
title: 標籤
date: 2016-03-15
type: "tags"
comments: false
---
{% endcodeblock %}

**註2**：有意使用 [Facebook Instant Article](https://developers.facebook.com/docs/instant-articles/quickstart) 功能的人可以安裝。
**註3**：這些都是為了讓文章更好讀、功能更強所裝的外掛。
**註4**：視需求而定，不一定要安裝。
**註5**：我有裝但很少用，大多時候我還是直接編輯 ```.md``` 文件。
**註6**：與[搜尋引擎最佳化（SEO）](https://zh.wikipedia.org/zh-hk/%E6%90%9C%E5%B0%8B%E5%BC%95%E6%93%8E%E6%9C%80%E4%BD%B3%E5%8C%96)有關，有意將網站收錄於搜尋引擎的可以參考[這篇](http://www.arao.me/2015/hexo-next-theme-optimize-seo/)或[這篇](https://wwssllabcd.github.io/blog/2014/12/22/how-to-install-hexo/#加入_sitemap)教學。

　
# 小結：網站設定完成！

　
設定完 GitHub、Hexo、主題和外掛，並發佈第一篇文章以後，你的網站和寫作生涯就正式開始了！以下是域名（Domain）與域名相關的 DNS、SSL 教學、個人信箱、短網址，如果還不考慮購買域名的人可以先[跳到結語](#結語：網站才是解答)了。

　
# 域名：購買和設定

　
在朋友 Andy 的推薦下，我在 [Name.com](https://www.name.com/) 買了域名和 [Whois 保護](https://www.name.com/whois-privacy)，域名本身的價格跟 Godaddy 差不多，但 Whois 保護便宜快一半。而且 Name.com 的介面和解析速度非常令我滿意。

## 使用 Name.com 解析域名
如果不考慮後面 CloudFlare 的 SSL 設定，其實直接用 Name.com 的解析功能就夠了，設定方法如下：

### 本機設定
在 ```~/source/``` 資料夾裡面新增 ```CNAME``` 檔案（無副檔名） ，內容寫上你的網址（不用加 http 或 https，如果後面還想設定信箱，開頭請加上 www）。接著更改「站點配置文件」中一開始填寫的 ```url```，最後執行 ```$hexo clean``` 和 ```$ hexo g```（即 ```$ hexo clean && hexo g```）。

### Name.com 設定
在 **DNS Records** 中新增 ```CNAME``` 記錄，```Host``` 填上 www，```Answer``` 輸入 Github 地址，然後 Add Record。接著在 **URL Fowarding** 中新增 ```Domain``` 為空、```Fowards to``` www 網址的記錄。設定完等個十幾分鐘網址應該就生效了。

> 備註：因為 ```CNAME``` 會和之後信箱設定的 ```MX``` 記錄衝突，如果想設定信箱，上述設定請務必統一使用 www 網址。根目錄網址將以 **URL Forwarding**（即 ```A``` 記錄）形式轉到 www 網址上，所以訪問 mcknote.com 還是會導到 www.mcknote.com，跟 Google、Yahoo 等站的設定一樣。

## 使用 CloudFlare 解析域名
如果想玩玩看簡單的流量分析與 SSL、HSTS、DNSSEC 等~~不知道是什麼但聽起來很厲害~~的功能，可以改用 [CloudFlare](https://www.cloudflare.com/) 的域名解析服務。[註冊](https://www.cloudflare.com/a/sign-up)時 CloudFlare 會自動掃描原有的 DNS 記錄，結束以後，你會看到兩個 ```NS``` Nameserver，請按照以下步驟設定：

### Name.com 設定
進到 **Nameservers** 直接按 Delete All（日後若想恢復，按 Use Default Nameservers 就好，不用擔心），並在 ```Add Nameserver``` 新增剛才看到的兩筆記錄。CloudFlare 設定完後可以考慮把 **DNS Records** 和 **URL Forwarding** 的設定清空。

### CloudFlare 設定
和[上面 Name.com 設定](#Name-com-設定)類似，如果 CloudFlare 沒有掃描到任何 DNS 記錄，一樣在上方選單中的 **DNS** 中新增指向 www 的 ```CNAME``` 記錄，並在 **Page Rules** 新增一筆指向（forwarding to）記錄，將 {% raw %}http://mcknote.com{% endraw %} 指向 {% raw %}http://www.mcknote.com{% endraw %}。設定完也是等個十幾分鐘就會生效，接著可以試試看 CloudFlare 的各種功能。

> 備註：別忘了[本機的設定](#本機設定)也要改。我之前是在 Name.com 設定完成以後才搬來 CloudFlare，Name.com 的 URL Fowarding 介面比較簡單，所以設定上省事不少。

　
# 安全： SSL 和 HSTS

　
CloudFlare 對所有用戶提供了免費的 [Universal SSL](https://blog.cloudflare.com/introducing-universal-ssl/) 服務，[設定方法](https://www.benburwell.com/posts/configuring-cloudflare-universal-ssl/)是進入選單中的 **Crypto**，將 ```SSL``` 設定為 **Flexible**，並**等上 24 到 48 小時**。期間你可能會遇到證書錯誤的問題，不用擔心，設定沒有錯，只是 SSL 生效需要時間。等瀏覽器出現正常的 HTTPS 標誌以後，就可以進行以下設定：

## 本機設定

將「站點配置文件」中的 ```url``` 改為 https 開頭，加上 ```enforce_ssl``` 設定，設定如下：
{% codeblock ~/_config.yml %}
url: https://www.mcknote.com
root: /
permalink: :year/:month/:day/:title/
permalink_defaults:
enforce_ssl: www.mcknote.com
{% endcodeblock %}
最後執行 ```$hexo clean``` 和 ```$ hexo g```（即 ```$ hexo clean && hexo g```）。 

## CloudFlare 設定

將 **Page Rules** 變更為以下三筆記錄：

> {% raw %}http://mcknote.com{% endraw %} **Always uses https**
> {% raw %}http://www.mcknote.com{% endraw %} **Always uses https**
> {% raw %}https://mcknote.com{% endraw %} **Forwarding to** {% raw %}https://www.mcknote.com{% endraw %}

　
設定結束後，可以重新載入，確認證書是否生效了，並打開**錯誤主控台**之類的開發者工具，查詢首頁或文章是否有 http 載入資源（JS、圖片等等）的錯誤，如果有就將對應檔案和指令的 ```http://``` 改為  ```//```。

## 補充
* SSL 部署最好在網站上線前做，等**證書確認生效以後**再設定 Page Rules。
* ```CNAME``` 不受 http 或 https 影響，不過如果你在這一步想從根網域換到 www 網域，記得一起改，否則網站會一直鬼打牆。
* 為了避免 CloudFlare 太常出現驗證機器人的 CAPTCHA，我把 **Firewall** 裡的 Security Level 調成 ```Low```。
* 如果想試試看 [HSTS](https://zh.wikipedia.org/zh-hk/HTTP%E4%B8%A5%E6%A0%BC%E4%BC%A0%E8%BE%93%E5%AE%89%E5%85%A8)，可以在 **Crypto** 選單裡打開，我承認我不完全理解這是什麼，不過我還是開了……
* HSTS 打開時 CloudFlare 會顯示[一串說明文](https://blog.cloudflare.com/enforce-web-policy-with-hypertext-strict-transport-security-hsts/)，務必細讀，並切記**如果想關閉 SSL，務必先關 HSTS**，否則可能會造成網站無法訪問。如果要開啟，也是先開 SSL，再開 HSTS。
* 如果你前面的 SSL 設定 Full 以上，或是開啟 DNSSEC，網址一旦出現錯誤都會指向 CloudFlare 自己的 521 Error Page 而不是 404 Page，如果你有自訂 404 Page 可以考慮要不要開這些設定。
* 我也不確定 [DNSSEC](http://www.lijyyh.com/2012/07/dnssec-introduction-to-dnssec.html) 的用途……我有開過，但遇到上面的問題以後就關掉了。
* **Speed** 裡面可以設定壓縮 JS、CSS 和 HTML 的 ```Auto Minify```，以及加速 JS 讀取速度的 ```Rocket Loader```，不過後者聽說會影響 Google AdSense，[嚴重可能造成停權](https://sofree.cc/cloudflare-google-adsense/)。
* **Speed** 設定結束後，可以到 **Caching** 點 ```Purge Individual Files``` 或 ```Purge Everything``` 使變更生效。下面有個 Development Mode，開啟時 CloudFlare 不會顯示 Cache，所以網站會直接呈現任何變更。
* **Analytics** 裡面有些簡單的流量統計，可以看到一天內的流量分佈以及 Cache 狀況。

　
總之 CloudFlare 真的是功能很強大的 DNS 解析服務，不只有基本 DNS 記錄，還有一堆有的沒的免費功能。

　
# 其它：信箱和短網址

　
最後，既然域名都買了，就得物盡其用，我用 {% raw %}mcknote.com{% endraw %} 設定了常見的信箱和短網址服務，如果你也想個人化 Email 地址請參考以下內容。

## 信箱

雖然 Google 從 2012 年就[收掉了 Google Apps 免費版](https://support.google.com/a/answer/2855120?hl=zh-Hant)，但我照著[這篇教學](https://simplyian.com/2015/01/07/Hacking-GMail-to-use-custom-domains-for-free/)設定了 [Mailgun](https://mailgun.com/) 和 Gmail，如此一來也能用 Gmail 收個人域名的信。如果你已經有了 Gmail 帳號，設定方法如下：

### Mailgun 設定
首先，**用你的 Gmail 信箱[註冊 Mailgun](https://mailgun.com/signup)**，註冊完以後照著指示設定 Name.com 或 Cloud Flare 的 DNS 記錄，應該包括 ```TXT```、```CNAME``` 和 ```MX```，如果你前面設定沒錯的話，複製貼上就好。結束以後進到 **[Routes](https://mailgun.com/cp/routes)**，點 Create New Route，建立以下轉發規則：

|欄位|設定|
|:-------|:--------|
|Priority|0|
|Filter Expression|match_recipient("你的帳號@你的域名")|
|Actions|forward("Gmail 帳號@gmail.com")|
|Description|隨意，認得哪個帳號是誰就好|

完成以後點 Save 儲存。這樣一來 Gmail 就可以收到寄給```你的帳號@你的域名```的信了，接下來設定從 Gmail 寄信。進入 **Domains** 中選你的域名，並點 **Domain Information** 中的一行小字 ```Manage SMTP credentials```。進去以後點 New SMTP Credential，輸入帳號和密碼，完成以後請注意右邊的 SMTP Settings：

{% codeblock SMTP SETTINGS %}
Server: smtp.mailgun.org
Our servers listen on ports 25, 587 and 465 (SSL/TLS)
Use full email address like "brad@yourdomain.com" as login username
{% endcodeblock %}

### Gmail 設定
完成 Mailgun 設定以後，進到 Gmail 設定裡的[**帳戶與匯入**](https://mail.google.com/mail/u/0/#settings/accounts)，並點選**以這個地址寄送郵件**裡的```新增您的另一個電子郵件地址```，依序填入姓名、Email、伺服器、端口（587）、完整登入帳號、密碼並選 TLS。完成以後，試著寄信看看，應該馬上能在收信匣中看到，這樣設定就完成了。

## 短網址

如果你想用自己的網域轉址，可以考慮用 [Bit.ly](https://bitly.com/) 的服務，它雖然免費，但有簡單的點擊數分析，也[完整支援自訂域名](http://support.bitly.com/knowledgebase/articles/76741-how-do-i-set-up-a-custom-short-domain-)。首先，你可以註冊帳號，也可以直接用 Facebook 帳號登入，登入以後進到 **Settings** 裡的 Advanced，點 Branded Short Domain 區塊的 ```Activate a Branded Short Domain for personal use.```，並在裡面填上一個二級域名，如 ```{% raw %}s.mcknote.com{% endraw %}``` （畢竟一級已經被[網站](#域名：購買和設定)用掉了）。

完成 ```CNAME``` 相關的 DNS 設定以後，等十幾分鐘轉址服務就生效了，如此一來就可以用自己的域名轉址了，比方說設定 ```{% raw %}http://s.mcknote.com/ilovemgi{% endraw %}``` 轉到 [McKinsey Global Institute](http://www.mckinsey.com/mgi/overview)。

> 備註：如果網址太複雜，像是包含 ```()``` 符號，放到 ```.md``` 文件裡就會出錯，這時用短網址就可以解決。

　
# 結語：網站才是解答

　
從成立 [Facebook Page](https://www.facebook.com/mcknote/) 到架設網站，我的想法一直是想找尋一個單純寫作的環境，但 Facebook 的單純已經有點偏向簡陋，缺乏超連結和段落，再加上社交平台的性質，使我感覺越來越不能專注在寫作的初衷上。當我意識到 Facebook Post 的介面讓我開始擔心會不會寫得太長、如何用符號表示段落、如何用 tag 有組織地整理文章等瑣事時，我決定早晚都得自己架個網站。

過程中，我也曾經考慮 Medium、Ghost、Blogspot 和 Wordpress，最後還是選擇落腳在單純的 Hexo 上。我至今仍對這個決定相當滿意，因為我相信唯有單純且強大的環境才能支撐創作的熱情，不論是 Markdown 的寫作方式還是 Hexo 的維護都很符合這個想法，更不用說上面的步驟除了域名購買以外通通免費，不受付費方案的干擾。老實說 Hexo 乃至架站還有很多有趣的細節（Openshift、gulp、Algolia 等等），邊做邊學是 DIY 最大的收穫，等你成立網站以後會隨著不同需求慢慢發掘，等你習慣以後就回不去了。

網路上有關 GitHub + Hexo 的文章已經很多了，我寫這篇只是希望讓那些平常很少碰 Coding，但對寫作環境仍抱有希望的人說「你看，其實也不難吧？我還是個商學生呢。」最後，我想再次引用劉恭甫先生在[〈訓練「獨立思考」最好的方法是寫作，而不只是閱讀〉](http://www.managertoday.com.tw/columns/view/52205)一文中所寫的：

{% cq %}「形成自己觀點」的關鍵是持續寫作，寫作會強迫你吸收閱讀的精華、
丟掉多餘的資訊，再加上你自己獨特的觀點。{% endcq %}

在意思考的人，應該寫作；在意寫作的人，應該掌握寫作環境。而自己架設、維護網站與管理文章，就是掌握寫作環境最好的方法。
　
圖片來源：[Breaking Bad Generator](http://sbll.org/breakingbad/)
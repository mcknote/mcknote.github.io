---
title: ＃／McK & Note 架站筆記：基礎篇
date: 2016-4-4 14:30:00
tags: 
- Hexo
- GitHub
- Markdown
- NexT
categories: ＃
comments: true
---
![McK & Dope](https://i.imgur.com/RUSiLEB.jpg)

2016 年三月十五日，在朋友[蛋元](http://tanyuans.tumblr.com/)的介紹下，我決定自己架 McK & Note 網站。話題的開頭很簡單，我和蛋元抱怨 Facebook Page 的發文介面太簡陋，很難安排超連結、文章結構等內容，而且不是每個人都有閒在 Timeline 吸收這些內容，所以在考慮自己架站。<!--more-->

當時我的選擇是 Wordpress，但以前的經驗告訴我 WP 太肥、太難管理，很容易分心。我把想要單純寫作的想法跟蛋元說，他建議我試試看 GitHub + Jekyll，[稍微研究以後](https://forum.suse.org.cn/viewtopic.php?f=5&t=2377)覺得真的不錯，[Markdown 格式](http://markdown.tw/)也符合我力求簡單的寫作需求，所以就快速架了一個網站。不過之後陰錯陽差看到了超漂亮的主題 [NexT](http://theme-next.iissnan.com/) 以及[這篇知乎](https://www.zhihu.com/question/21981094)，所以就換用 GitHub + Hexo，之後幾天我把所有時間花在網址設定和版面調校上。

如果你看不懂我在寫什麼，沒關係，這很正常，換成是三月初的我大概也不知道這些是什麼，這幾週我幾乎是從零學習怎麼架站；不過如果你**很想持之以恒地寫作，很想擁有一個簡單、強大、免費的平台，很想督促自己快快成長**，請參考以下的教學，一天之內，你也能擁有如 McK & Note 一樣完整的網站。

　
> **「架站筆記」**系列文章：
> * **基礎篇：空間、系統、文章、主題和外掛**
> * {% post_link Set-up-McK-Note-Advanced 進階篇：域名設定、SSL 和 HSTS、信箱和短網址 %}

　
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
> 4. [安裝 hexo-deployer-git](https://hexo.io/zh-tw/docs/deployment.html)
> 5. [在 _config.yml 中設定 Git 等資訊](https://hexo.io/zh-tw/docs/configuration.html)

## 純文字命令和編輯器

需要注意的是這些工作大部分都在**純文字命令**的環境中，對某些人來說可能有點陌生，但基本上只要複製、**修改**、貼上 Hexo 的官方指令，就沒什麼問題。另外在「修改 _config.yml 中的設定」一步中，除了可以用系統內建的記事本（Windows）或文字編輯（Mac），也可以考慮用免費的 [Notepad++](https://notepad-plus-plus.org/) 或付費的 [Sublime Text](https://www.sublimetext.com/)，這對使用者以後編輯文章或設定很有幫助。

## Git 設定

最後，安裝 ```hexo-deployer-git``` 和在 ```_config.yml``` 設定 Git **非常重要**，這關乎網站能不能上傳到[第一步驟](#空間：GitHub)中設定的 GitHub 倉庫。執行 ```$ npm install hexo-deployer-git --save``` 以後，打開 ```_config.yml``` 找到 ```deploy``` 這行，確定下面有這些指令：

{% codeblock ~/_config.yml %}
deploy:
  type: git
  repo: 　           #輸入倉庫的 **SSH** 網址而非 HTTPS 網址，可在倉庫首頁找到
  branch: master 　  #或是你在第一步驟另外建立的 branch
{% endcodeblock %}

## Deploy!

完成上面五件事以後，網站就幾乎大功告成了！你只需要記下面四個[指令](https://hexo.io/zh-tw/docs/commands.html)，就可以時時更新、維護 Hexo：

{% codeblock Hexo Commands %}
$ hexo d        #發佈網站
$ hexo g        #生成內容（發文等更新需要用）
$ hexo clean    #清除內容（如果擔心之前的修改不徹底或是有殘留的檔案，可以先 clean 再 g）
$ hexo s        #在本機預覽網站
{% endcodeblock %}

現在你就可以執行 ```$ hexo d```，然後用你的 GitHub 網址看看網站是否已經順利上線。如果遇到 git 錯誤，請確認是否安裝了 ```hexo-deployer-git```；如果遇到 SSH Key 的問題，請參考[第一步驟](#注意-SSH-Key)。

　
# 文章：編輯和發佈

　
現在你可以開始[寫作](https://hexo.io/zh-tw/docs/writing.html)了，Hexo 的文章原始檔都以 ```.md``` 格式存在 ```~/source/_post/``` 資料夾裡面，你可以直接用裡面的 Hello World 文件改寫，也可以執行 ```$ hexo new “標題”``` 指令新建空白檔案。我平常都是複製舊的檔案，改一改以下的開頭資訊，並貼上準備好的新內容。

## 文章開頭設定

一篇 Hexo 文章的開頭應該包括標題（Title）、分類（Category）、標籤（Tag）、發佈時間（Date）等等。以這篇為例，開頭資訊如下：

{% codeblock ~/source/_post/Set-up-McK-Note.md %}
---　
title: ＃／McK & Note 架站筆記：基礎篇
date: 2016-4-4 14:30:00
tags: 
- Hexo
- GitHub
- Markdown
- NexT
categories: ＃
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
刪除線：~~刪除~~ 
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
theme: next    #或其它你想用的主題，記得先安裝
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
  #about: /about           # About 頁面沒啟用
  archives: /archives
  tags: /tags
  #commonweal: /404.html   # 公益 404 頁面不會顯示在目錄
{% endcodeblock %}

並在 ```~/source/``` 底下建立相應的 ```/tags/``` 或 ```/catagories/``` 資料夾，並在裡面新增一個 ```index.md```，以 tags 為例內容如下：

{% codeblock ~/source/tags/index.md %}
---
title: 標籤
date: 2016-03-15
type: "tags"
comments: false    #關閉評論功能
---
{% endcodeblock %}

**註2**：有意使用 [Facebook Instant Article](https://developers.facebook.com/docs/instant-articles/quickstart) 功能的人可以安裝。
**註3**：這些都是為了讓文章更好讀、功能更強所裝的外掛。
**註4**：視需求而定，不一定要安裝。
**註5**：我有裝但很少用，大多時候我還是直接編輯 ```.md``` 文件。
**註6**：與[搜尋引擎最佳化（SEO）](https://zh.wikipedia.org/zh-hk/%E6%90%9C%E5%B0%8B%E5%BC%95%E6%93%8E%E6%9C%80%E4%BD%B3%E5%8C%96)有關，有意將網站收錄於搜尋引擎的可以參考[這篇](http://www.arao.me/2015/hexo-next-theme-optimize-seo/)或[這篇](https://wwssllabcd.github.io/blog/2014/12/22/how-to-install-hexo/#加入_sitemap)教學。

　
# 小結：網站設定完成！

　
設定完 GitHub、Hexo、主題和外掛，並發佈第一篇文章以後，**你的網站寫作生涯就正式開始了！**接下來的{% post_link Set-up-McK-Note-Advanced 進階篇 %}將介紹域名（Domain）的註冊、設定以及相關服務（SSL 、個人信箱、短網址）。還不考慮購買域名的人，也可以直接讀{% post_link Set-up-McK-Note-Advanced 進階篇的結語 %}。

　
*圖片來源：[Breaking Bad Generator](http://sbll.org/breakingbad/)*
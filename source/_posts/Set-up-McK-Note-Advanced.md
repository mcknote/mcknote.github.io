---
title: ＃／McK & Note 架站筆記：進階篇
date: 2016-4-6 14:30:00
tags: 
- Hexo
- DNS
- Cloudflare
- Mailgun
- SSL
- HSTS
- Bit.ly
categories: ＃
comments: true
---
![McK & Dope](https://i.imgur.com/RUSiLEB.jpg)

延續{% post_link Set-up-McK-Note 基礎篇 %}的內容，如果你架完網站以後意猶未盡，想繼續嘗試域名與其它服務，可以參考本篇的教學。域名是網路上的門面，註冊一個域名可以讓你專注在某個名字上，一次把自己的網站、信箱等服務都理清楚。<!--more-->

　
> **「架站筆記」**系列文章：
> * {% post_link Set-up-McK-Note 基礎篇：空間、系統、文章、主題和外掛 %}
> * **進階篇：域名設定、SSL 和 HSTS、信箱和短網址**

　
# 域名：購買和設定

　
在朋友 Andy 的推薦下，我在 [Name.com](https://www.name.com/) 買了域名和 [Whois 保護](https://www.name.com/whois-privacy)，域名本身的價格跟 Godaddy 差不多，但 Whois 保護便宜快一半。而且 Name.com 的介面和解析速度非常令我滿意。

## 使用 Name.com 解析域名
如果不考慮後面 CloudFlare 的 SSL 設定，其實直接用 Name.com 的解析功能就夠了，設定方法如下：

### 本機設定
在 ```~/source/``` 資料夾裡面新增 ```CNAME``` 檔案（無副檔名） ，內容如下：
{% codeblock ~/source/CNAME %}
www.mcknote.com
{% endcodeblock %}
> 備註：如果後面還想設定信箱，請使用 www. 域名。

接著更改「站點配置文件」中一開始填寫的 ```url```，最後執行 ```$hexo clean``` 和 ```$ hexo g```（即 ```$ hexo clean && hexo g```）。

### Name.com 設定
在 **DNS Records** 中新增 ```CNAME``` 記錄，Host 填上 ```www```，Answer 輸入 ```Github 地址```，然後 Add Record。接著在 **URL Fowarding** 中新增 Domain 為```（空）```、Fowards to ```www. 域名```的記錄。設定完等個十幾分鐘網址應該就生效了。

> 備註：因為 ```CNAME``` 會和之後信箱設定的 ```MX``` 記錄衝突，如果想設定信箱，上述設定請務必統一使用 www. 域名。根目錄網址將以 **URL Forwarding**（即 ```A``` 記錄）形式轉到 www 網址上，所以訪問 mcknote.com 還是會導到 www.mcknote.com，跟 Google、Yahoo 等站的設定一樣。

## 使用 CloudFlare 解析域名
如果想玩玩看簡單的流量分析與 SSL、HSTS、DNSSEC 等~~不知道是什麼但聽起來很厲害~~的功能，可以改用 [CloudFlare](https://www.cloudflare.com/) 的域名解析服務。[註冊](https://www.cloudflare.com/a/sign-up)時 CloudFlare 會自動掃描原有的 DNS 記錄，結束以後，你會看到兩個 ```NS``` Nameserver，請按照以下步驟設定：

### Name.com 設定
進到 **Nameservers** 直接按 Delete All（日後若想恢復，按 Use Default Nameservers 就好，不用擔心），並在 ```Add Nameserver``` 新增剛才看到的兩筆記錄。CloudFlare 設定完後可以考慮把 **DNS Records** 和 **URL Forwarding** 的設定清空。

### CloudFlare 設定
和[上面 Name.com 設定](#Name-com-設定)類似，如果 CloudFlare 沒有掃描到任何 DNS 記錄，一樣在上方選單中的 **DNS** 中新增指向 www 的 ```CNAME``` 記錄，並在 **Page Rules** 新增一筆指向（forwarding to）記錄，將 {% raw %}http://mcknote.com/*{% endraw %} 指向 {% raw %}http://www.mcknote.com/$1{% endraw %}。設定完也是等個十幾分鐘就會生效，接著可以試試看 CloudFlare 的各種功能。

> 備註：別忘了[本機的設定](#本機設定)也要改。我之前是在 Name.com 設定完成以後才搬來 CloudFlare，Name.com 的 URL Fowarding 介面比較簡單，所以設定上省事不少。在 	CloudFlare 的 **Page Rules** 中，```*``` 指的是「任意」，```$1``` 指的是「第一個星號」。

　
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

> `http://mcknote.com` **Always uses https**
> `http://www.mcknote.com` **Always uses https**
> `https://mcknote.com/` **Forwarding to** `https://www.mcknote.com/$1`

　
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

　
最後，既然域名都買了，就得物盡其用，我用 `mcknote.com` 設定了常見的信箱和短網址服務，如果你也想個人化 Email 地址請參考以下內容。

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

如果你想用自己的網域轉址，可以考慮用 [Bit.ly](https://bitly.com/) 的服務，它雖然免費，但有簡單的點擊數分析，也[完整支援自訂域名](http://support.bitly.com/knowledgebase/articles/76741-how-do-i-set-up-a-custom-short-domain-)。首先，你可以註冊帳號，也可以直接用 Facebook 帳號登入，登入以後進到 **Settings** 裡的 Advanced，點 Branded Short Domain 區塊的 ```Activate a Branded Short Domain for personal use.```，並在裡面填上一個二級域名，如 `s.mcknote.com` （畢竟一級已經被[網站](#域名：購買和設定)用掉了）。

完成 ```CNAME``` 相關的 DNS 設定以後，等十幾分鐘轉址服務就生效了，如此一來就可以用自己的域名轉址了，比方說設定 `http://s.mcknote.com/ilovemgi` 轉到 [McKinsey Global Institute](http://www.mckinsey.com/mgi/overview)。

> 備註：如果網址太複雜，像是包含 ```()``` 符號，放到 ```.md``` 文件裡就會出錯，這時用短網址就可以解決。

　
# 結語：網站才是解答

　
從成立 [Facebook Page](https://www.facebook.com/mcknote/) 到架設網站，我的想法一直是想找尋一個單純寫作的環境，但 Facebook 的單純已經有點偏向簡陋，缺乏超連結和段落，再加上社交平台的性質，使我感覺越來越不能專注在寫作的初衷上。當我意識到 Facebook Post 的介面讓我開始擔心會不會寫得太長、如何用符號表示段落、如何用 tag 有組織地整理文章等瑣事時，我決定早晚都得自己架個網站。

過程中，我也曾經考慮 Medium、Ghost、Blogspot 和 Wordpress，最後還是選擇落腳在單純的 Hexo 上。我至今仍對這個決定相當滿意，因為我相信唯有單純且強大的環境才能支撐創作的熱情，不論是 Markdown 的寫作方式還是 Hexo 的維護都很符合這個想法，更不用說上面的步驟除了域名購買以外通通免費，不受付費方案的干擾。老實說 Hexo 乃至架站還有很多有趣的細節（Openshift、gulp、Algolia 等等），邊做邊學是 DIY 最大的收穫，等你成立網站以後會隨著不同需求慢慢發掘，等你習慣以後就回不去了。

網路上有關 GitHub + Hexo 的文章已經很多了，我寫這篇只是希望讓那些平常很少碰 Coding，但對寫作環境仍抱有希望的人說「你看，其實也不難吧？我還是個商學生呢。」最後，我想再次引用劉恭甫先生在[〈訓練「獨立思考」最好的方法是寫作，而不只是閱讀〉](http://www.managertoday.com.tw/columns/view/52205)一文中所寫的：

{% cq %}「形成自己觀點」的關鍵是持續寫作，寫作會強迫你吸收閱讀的精華、
丟掉多餘的資訊，再加上你自己獨特的觀點。{% endcq %}

在意思考的人，應該寫作；在意寫作的人，應該掌握寫作環境。而自己架設、維護網站與管理文章，就是掌握寫作環境最好的方法。

　
*圖片來源：[Breaking Bad Generator](http://sbll.org/breakingbad/)*
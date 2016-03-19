{% macro render(is_post) %}
  
  <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=176081199193364";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

  <div class="sidebar-toggle">
    <div class="sidebar-toggle-line-wrap">
      <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
    </div>
  </div>

  <aside id="sidebar" class="sidebar">
    <div class="sidebar-inner">

      {% set display_toc = is_post and theme.toc.enable %}

      {% if display_toc %}
        <ul class="sidebar-nav motion-element">
          <li class="sidebar-nav-toc sidebar-nav-active" data-target="post-toc-wrap" >
            {{ __('sidebar.toc') }}
          </li>
          <li class="sidebar-nav-overview" data-target="site-overview">
            {{ __('sidebar.overview') }}
          </li>
        </ul>
      {% endif %}

      <section class="site-overview sidebar-panel {% if not display_toc %} sidebar-panel-active {% endif %}">
        <div class="site-author motion-element" itemprop="author" itemscope itemtype="http://schema.org/Person">
          <img class="site-author-image" src="{{ theme.avatar or url_for(theme.images) + '/default_avatar.jpg' }}" alt="{{ theme.author }}" itemprop="image"/>
          <p class="site-author-name" itemprop="name">{{ theme.author }}</p>
        </div>
        <p class="site-description motion-element" itemprop="description">{{ theme.description }}</p>
        <nav class="site-state motion-element">
          <div class="site-state-item site-state-posts">
            <a href="{{ url_for(theme.menu.archives) }}">
              <span class="site-state-item-count">{{ site.posts.length }}</span>
              <span class="site-state-item-name">{{ __('state.posts') }}</span>
            </a>
          </div>

          <div class="site-state-item site-state-categories">
            {% if theme.menu.categories %}<a href="{{ url_for(theme.menu.categories) }}">{% endif %}
              <span class="site-state-item-count">{{ site.categories.length }}</span>
              <span class="site-state-item-name">{{ __('state.categories') }}</span>
              {% if theme.menu.categories %}</a>{% endif %}
          </div>

          <div class="site-state-item site-state-tags">
            {% if theme.menu.tags %}<a href="{{ url_for(theme.menu.tags) }}">{% endif %}
              <span class="site-state-item-count">{{ site.tags.length }}</span>
              <span class="site-state-item-name">{{ __('state.tags') }}</span>
              {% if theme.menu.tags %}</a>{% endif %}
          </div>

        </nav>

        <div class="links-of-author motion-element">
          {% if theme.social %}
            {% for name, link in theme.social %}
              <span class="links-of-author-item">
                <a href="{{ link }}" target="_blank">
                  <i class="fa fa-{{ name | lower }}"></i> {{ name }}
                </a>
              </span>
            {% endfor %}
          {% endif %}
        </div>

        <div class="fb-page motion-element" data-href="https://www.facebook.com/mcknote" data-tabs="timeline" data-width="240" data-height="420" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/mcknote"><a href="https://www.facebook.com/mcknote">McK &amp; Note</a></blockquote></div></div>

        {% if theme.rss %}
          <div class="feed-link motion-element">
            <a href="{{ url_for(theme.rss) }}" rel="alternate">
              <i class="menu-item-icon icon-next-feed"></i>
              RSS
            </a>
          </div>
        {% endif %}

        {% set cc = {'by': 1, 'by-nc': 1, 'by-nc-nd': 1, 'by-nc-sa': 1, 'by-nd': 1, 'by-sa': 1, 'zero': 1} %}
        {% if theme.creative_commons in cc %}
          <div class="cc-license motion-element" itemprop="license">
            <a href="http://creativecommons.org/licenses/{{ theme.creative_commons }}/4.0" class="cc-opacity" target="_blank">
              <img src="{{ url_for(theme.images) }}/cc-{{ theme.creative_commons }}.svg" alt="Creative Commons" />
            </a>
          </div>
        {% endif %}

        <div class="links-of-author motion-element">
          {% if theme.links %}
            <p class="site-author-name">{{ theme.links_title }}</p>
            {% for name, link in theme.links %}
              <span class="links-of-author-item">
                <a href="{{ link }}" target="_blank">{{ name }}</a>
              </span>
            {% endfor %}
          {% endif %}
        </div>

      </section>

      {% if display_toc %}
        <section class="post-toc-wrap motion-element sidebar-panel sidebar-panel-active">
          <div class="post-toc-indicator-top post-toc-indicator"></div>
          <div class="post-toc">
            {% set toc = toc(page.content, { "class": "nav", list_number: theme.toc.number }) %}
            {% if toc.length <= 1 %}
              <p class="post-toc-empty">{{ __('post.toc_empty') }}</p>
            {% else %}
              <div class="post-toc-content">{{ toc }}</div>
            {% endif %}
          </div>
          <div class="post-toc-indicator-bottom post-toc-indicator"></div>

        </section>
      {% endif %}

    </div>
  </aside>
{% endmacro %}

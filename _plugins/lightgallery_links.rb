Jekyll::Hooks.register :pages, :pre_render do |page, payload|
  page.content.gsub!(/^!\[(.*)\]\(([^\)]+)\)((?:{:[^}]+})*)/, "<a href=\"{{ site.baseurl }}\\2\" class=\"lightgallery-link\" data-sub-html=\"\\1\">\n![\\1]({{ site.baseurl }}\\2){: height="" width=""}\\3{:data-src=\"{{ site.baseurl }}\\2\"}\n</a>")
end

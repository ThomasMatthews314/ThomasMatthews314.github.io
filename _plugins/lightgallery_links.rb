Jekyll::Hooks.register :site, :pre_render do |item, payload|
  item.content.gsub!(/^!\[(.*)\]\(([^\)]+)\)((?:{:[^}]+})*)/, "<a href=\"{{ site.baseurl }}\\2\" class=\"lightgallery-link\" data-sub-html=\"\\1\">\n![\\1]({{ site.baseurl }}\\2){: height="" width=""}\\3{:data-src=\"{{ site.baseurl }}\\2\"}\n</a>")
end

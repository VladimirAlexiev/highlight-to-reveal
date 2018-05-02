cp ../reveal.js/plugin/highlight/highlight.js ../reveal.js/plugin/highlight/highlight-old.js
perl -ne "print if 1..m{// END CUSTOM REVEAL.JS INTEGRATION}" ../reveal.js/plugin/highlight/highlight-old.js \
  | cat - ../highlight.js/build/highlight.pack.js \
  > ../reveal.js/plugin/highlight/highlight.js

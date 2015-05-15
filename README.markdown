# ragtag.vim

A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more (formerly allml) 

This plugin started out as a set of personal mappings, but there was enough enjoyment among those I shared it with for me to clean it up and release it. 

## Features

A huge variety of filetypes are supported:  html, xhtml, wml, xml, xslt, xsd, jsp, php, aspperl, aspvbs, cf, mason, htmldjango, and eruby.  (Let me know if I missed any).  Some features take note of the filetype and adapt to it.

Maps for editing tags are provided.  This includes a couple of "make last word into a tag pair" maps, a doctype map (inserts <?xml ...?> in XML), a "close last tag" map, and a few extra goodies. 

For templating languages (ASP, PHP, etc.), there are maps for inserting template code.  The maps are dependent on the filetype: in ASP, you get `<% %>` and `<%= %>`, in PHP, `<?php ?>` and `<?php print ?>`, etc.  If said template language has a comment syntax, there is a map for it, otherwise, that map points to `<!-- -->`. 

Maps for XML/HTML escaping and URL encoding have been moved to [unimpaired.vim](https://github.com/tpope/vim-unimpaired).

Enhances [surround.vim](https://github.com/tpope/vim-surround).

## Self-Promotion

Like ragtag.vim? Follow the repository on
[GitHub](https://github.com/tpope/vim-ragtag) and vote for it on
[vim.org](http://www.vim.org/scripts/script.php?script_id=1896).  And if
you're feeling especially charitable, follow [tpope](http://tpo.pe/) on
[Twitter](http://twitter.com/tpope) and
[GitHub](https://github.com/tpope).

## License

Copyright (c) Tim Pope.  Distributed under the same terms as Vim itself.
See `:help license`.

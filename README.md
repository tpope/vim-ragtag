# ragtag.vim (formerly allml.vim)

This plugin started out as a set of personal mappings, but there was enough enjoyment among those I shared it with for me to clean it up and release it.

## Installation

If you don't have a preferred installation method, I recommend
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-ragtag.git

## Usage
While there are several HTML and XML scripts on vim.org, I have found none that share a significant amount of functionality with allml.vim.
A huge variety of filetypes are supported:  html, xhtml, wml, xml, xslt, xsd, jsp, php, aspperl, aspvbs, cf, mason, htmldjango, and eruby.  (Let me know if I missed any).  Some features take note of the filetype and adapt to it.
Maps for editing tags are provided.  This includes a couple of "make last word into a tag pair" maps, a doctype map (inserts `<?xml ...?>` in XML), a "close last tag" map, and a few extra goodies.
For templating languages (ASP, PHP, etc.), there are maps for inserting template code.  The maps are dependent on the filetype: in ASP, you get `<% %>` and `<%= %>`, in PHP, `<?php ?>` and `<?php print ?>`, etc.  If said template language has a comment syntax, there is a map for it, otherwise, that map points to `<!-- -->`.

Maps for XML/HTML escaping and URL encoding have been moved to unimpaired.vim, vimscript [#1590][unimpaired].

Enhances surround.vim, vimscript [#1697][surround].
[unimpaired]: http://www.vim.org/scripts/script.php?script_id=1590
[surround]: http://www.vim.org/scripts/script.php?script_id=1697

###Examples

###Quickly closing an open HTML tag.

Suppose you have typed `<div>` and you want to close it without typing the whole closing tag `</div>` yourself.

The quick way to do it with RagTag is to press `CTRL+X /`. This mapping automatically closes the last open HTML tag.

Extra tip: If you didn't have this plugin you could quickly close the tag by typing `</` and pressing `CTRL+X` `CTRL+O`. The default Vim mapping `CTRL+X CTRL+O` guesses the item that may come after the cursor. In case of an open HTML tag it's the close tag.

###Creating a pair of open/close HTML tags from a word.

Suppose you want to quickly create a pair of `<div></div>` and place the cursor between the two tags.

The quick way to do it with RagTag is to type div and press `CTRL+X SPACE`. This mapping takes the typed word and creates a pair of HTML tags, one closing tag and one open tag on the same line.

However, if you wish to create open/close tag pair separated by a newline, type `CTRL+X ENTER`.

Here is an example, if you just typed div and then press `CTRL+X ENTER` it will produce the following output:

`<div>`   
`|`   
`</div>`    
`|` indicates the position of cursor.

###Insert HTML doctype.

If you type `CTRL+X !` RagTag will display a list of HTML doctypes to choose from. Defaults to HTML 4.01 Strict.

###Link to a CSS stylesheet.

Typing `CTRL+X @` inserts the snippet for linking to a CSS stylesheet.

`<link rel="stylesheet" type="text/css" href="/stylesheets/|.css">`

The mapping is easy to remember because `@` is used for importing in CSS.

###Insert meta content-type tag.

Typing `CTRL+X #` inserts the HTML meta tag for document's content type and encoding.

`<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">`
The charset depends on document's charset. If it's utf-8, the mapping will set the charset to utf-8 in the meta tag.

###Load JavaScript document.

Typing `CTRL+X $` links to a JavaScript file.

`<script type="text/javascript" src="/javascripts/|.js">`
The mapping is easy to remember because `$` is a valid char in identifiers in many languages.

###Wrap the typed text in PHP, Django, eRuby template tags.

There are several different mappings for wrapping text in template tags. It's best to summarize them in the following table. The table assumes you had just typed "foo" and you are editing an eRuby document:

`Mapping    Result`   
`---------  -----------`   
`CTRL+X =   foo<%= | %>`   
`CTRL+X +   <%= foo| %>`   
`CTRL+X -   foo<% | %>`   
`CTRL+X _   <% foo| %>`   
`CTRL+X '   foo<%# | %>`   
`CTRL+X "   <%# foo| %>`    
What this table shows us is, for example, that if you have typed "foo" and press `CTRL+X _`, the plugin will wrap "foo" in `<% %>` tags and place the cursor after "foo".

###Summary of all the RagTag mappings.

`CTRL+X /       Close the last open HTML tag`   
`CTRL+X SPACE   Create open/close HTML tags from the typed word`   
`CTRL+X CR      The same as CTRL+X SPACE but puts a newspace in between`   
`CTRL+X !       Insert HTML doctype`   
`CTRL+X @       Insert CSS stylesheet`   
`CTRL+X #       Insert meta content-type meta tag`   
`CTRL+X $       Load JavaScript document`   

For the following mappings, suppose that
you have typed "foo".

`Mapping        Result`   
`---------      -----------`   
`CTRL+X =       foo<%= | %>`   
`CTRL+X +       <%= foo| %>`   
`CTRL+X -       foo<% | %>`   
`CTRL+X _       <% foo| %>`   
`CTRL+X '       foo<%# | %>`   
`CTRL+X "       <%# foo| %>`   

## Self-Promotion

Like dispatch.vim?  Follow the repository on
[GitHub](https://github.com/tpope/vim-dispatch) and vote for it on
[vim.org](http://www.vim.org/scripts/script.php?script_id=4504).  And if
you're feeling especially charitable, follow [tpope](http://tpo.pe/) on
[Twitter](http://twitter.com/tpope) and
[GitHub](https://github.com/tpope).

## License

Copyright © Tim Pope.  Distributed under the same terms as Vim itself.
See `:help license`.

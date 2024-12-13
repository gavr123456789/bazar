# How to use

```Scala
src = "Some *Markdown*"
flavour = CommonMarkFlavourDescriptor new
parsedTree = MarkdownParser flavor: flavour
  |> buildMarkdownTreeFromString: src
html = HtmlGenerator markdownText: src root: parsedTree flavour: flavour
  |> generateHtml
  
html echo 

```
Will output 
`<body><p>Some <em>Markdown</em></p></body>`
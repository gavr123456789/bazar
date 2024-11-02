# How to use

## GTK
### Simple Counter App
Here we creating Window, Header and Button  
Bind Button to a clicked signal, which set text of the button  
Put both Header and Button to a ToolbarView container  
Show the Window  

```Scala
@Serializable
Project use: "org.gnome.adw"

app = Application name: "my.app"

app onActivate: [
  window = (org.gnome.adw.ApplicationWindow app: app);
    title: "GTK from Niva";
    x: 250 y: 300
 
  // a codeblock with ui layout construction
  ui = [
    mut n = 1
    header = org.gnome.adw.HeaderBar new

    // when button is 
    btn = (Button new); 
      label: "Hello Adw";
      onClicked: [
        "clicked $n times!" echo
        n <- n inc
      ]

    // Main view is header and a single button
    toolbar = (ToolbarView new); 
      addTopBar: header;
      content: btn

    toolbar
  ] do

  window content: ui;
    present // show the window
]


app run: args
```
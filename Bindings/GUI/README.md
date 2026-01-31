# How to use

## GTK
### Simple Counter App
Here we creating Window, Header and Button  
Bind Button to a clicked signal, which set text of the button  
Put both Header and Button to a ToolbarView container  
Show the Window  

```Scala
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

## ImGui

Simple:  
```Scala
mut c = 0
app = ImGui
        configure: [
          it setTitle: "niva imgui"
        ]
        process: [
          ImGui text: "Hello from niva ^_^"
          ImGui button: "halloo", ifTrue: [c <- c inc]
          ImGui text: c toString
        ]

Application launch: app
```

Component with state:  
```Scala
mut c = 0
str = ImString value: "input here"
bool = ImBoolean value: false

// example of component with state
type TextComponent state: ImString

constructor TextComponent text::String = [
  tc = TextComponent state: (ImString value: text)

  ImGui inputText: "name"
        value: tc state
        flag: ImGuiInputTextFlags.CallbackResize

  ^ tc
]

// main app
app = ImGui
        configure: [
          it setTitle: "niva imgui"
          it setHeight: 350
          it setWidth: 350
        ]
        process: [
          TextComponent text: "hallo"
          //ImGui inputText: "name"
          //      value: str
          //      flag: ImGuiInputTextFlags.CallbackResize


          ImGui text: "Hello from niva ^_^"
          ImGui button: "halloo", ifTrue: [c <- c inc]
          ImGui text: c toString
          str get echo

          ImGui checkbox: "checkbox" value: bool

        ]

Application launch: app
```

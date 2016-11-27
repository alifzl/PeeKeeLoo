## **PeeKeeLoo**
-----------

This is a small GUI that allows you to run any normal AutoHotkey command or block of code by typing a name for the command you want to run.

![Screenshot](/GUI/icon.png "Screenshot of the GUI")
> **PeeKeeLoo** evokes me the Eggplant! :stuck_out_tongue_winking_eye:

### How to prepare?

First of all, you must download the *AutoHotkey* at [this](www.autohotkey.com/download/),and install it. The installation process is quite simple.

After the Installation, clone or download this repo and place it somewhere that you prefer.then execute the `PeeKeeLoo.ahk`. you must see an eggplant icon in your system tray area! that's done, you make it!

**OR**, the lazy way is just run the portable (precompiled) version of `PeeKeeLoo.exe` file without installing the *AutoHotkey*

### So,then?

This script is built around the `CapsLock` key.
The GUI is activated by `CapsLock`+`Space`.(be noted you must hold CapsLock and then press Space button)
Normal `CapsLock` functionality is preserved, and can be toggled by `Alt`+`CapsLock`. Okey?

When typing something in the GUI, whatever you type is matched up against the commands in `UserCommands.ahk`.These are normal AutoHotkey commands so you can and should write your own. I have supplied some sample commands to show some ideas. But it only becomes truly powerful once you customize it with commands to suit your specific needs.

### How to use?
  Make sure `Host.ahk` is running.(it's simple as checking the eggplant is steel in system tray or not! (:eyes:))
  here I give you some samples:
* Open the GUI with `CapsLock`+`Space`. don't worry T it's not kinda case sensitive stuff.
* Type `face` or `9g` into the GUI and see what happens.
* Open the GUI again. Type `note` into the GUI to open Notepad.
* While in Notepad, type `@1` into the GUI. It will write my first e-mail address (but you need to go into `UserCommands.ahk` later to specify your own address).
* Try typing `down` into the GUI to open your Downloads folder or `rec` to open the Recycle Bin.
* You can search google by typing `g` followed by a space. A new input field should appear. Type your search query and press enter. Use `l ` if you are 'Feeling Lucky'.use `m` to search using multiple search engines such as Yandex, Bing and Baidu.
* You can search Youtube with `y `, search Facebook with `f `.
* If you like Reddit, you can visit a specific subreddit by typing `/` into the GUI and then the name of the subreddit you have in mind.
* Try `week` or `date`. (I can never remember the week number so this is useful when on the phone with somebody who insists on comparing calendars going by week number).
* Type `ping` or `pping` into the GUI to quickly ping www.google.com to see if your internet connection works.
* Check 'netres' and see how cool it is when you stuck on some Intenet Problem or `flush` to flush your DNS.
* Some cool stuff, type `eng` and then type an English word or expression and hit Enter. Ta-da!!!


### How to write your own commands
The variable `Pedersen` contains your text from the input field.

The first thing to do is often to hide the GUI and reset the input field. Do this by calling `gui_destroy()`.

After that, you can run any normal AHK block of code. If for example, you have some program you use all the time, you can create a shortcut to that program by

    else if Pedersen = prog
    {
        gui_destroy()
        run "C:\Program Files\Company\That awesome program.exe"
    }
    

That's it! now you can launch your favorite program by typing `prog` into the input field.

### FAQ

**How can I see the full commands that PeeKeeLoo supports?**

simply bring the GUI up and write `?`. try everything you see! it worth a try.

**How to Automate this shit?** 
1. stay calm!
2. go to windows `Task Scheduler` by searching it.
3. create a basic task, give it a name and proceed. then in the program/script field select `PeeKeeLoo.ahk`.
4. program it to execute with every system restart.

### Future Works
* Sadly `PeeKeeLoo` have serious problems with RTL languages (UTF-8 BOM). I'm gonna fix that.
* Converting to an appropriate compiled AutoHotKey to Linux Distros
* Converting commands for Linux (or maybe MacOS)
* Working on RTL language Compatibility to write Persian Commands!

I used to be laconic I think, BTW if you wanna contribute feel free to have pull request.



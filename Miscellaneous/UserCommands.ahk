
; Note: Save with encoding UTF-8 with BOM if possible.
; I had issues with RTL characters like Persian that wouldn't work otherwise.
; Notepad will save UTF-8 files with BOM automatically (even though it does not say so).
; Some editors however save without BOM, and then RTL characters look messed up in the AHK GUI.

; feel free to Write your own AHK commands in this file to be recognized by the GUI.
; Take inspiration from the samples provided here.

;-------------------------------------------------------------------------------
;;; SEARCH GOOGLE ;;;
;-------------------------------------------------------------------------------

if Pedersen = g%A_Space% ; Search Google
{
    gui_search_title = Google It:
    gui_search("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=REPLACEME&btnG=Search&oq=&gs_l=")
}

else if Pedersen = l%A_Space% ; Search Google with ImFeelingLucky
{
    gui_search_title = I'm Feeling Lucky google!
    gui_search("http://www.google.com/search?q=REPLACEME&btnI=Im+Feeling+Lucky")
}
else if Pedersen = m%A_Space% ; Search using multiple search engines.
{
    gui_search_title = multiple
    gui_search("https://www.google.com/search?&q=REPLACEME")
    gui_search("https://www.bing.com/search?q=REPLACEME")
    gui_search("http://www.baidu.com/s?ie=utf-8&tn=baidu&wd=REPLACEME")
    gui_search("https://yandex.ru/search/?&text=REPLACEME")
}
else if Pedersen = x%A_Space% ; Search Google as Incognito
;   A note on how this works:
;   What you actually specify as the parameter value in the app's gui is a command to run. It does not have to be a URL.
;   Before the command is run, the word REPLACEME is replaced by your input.
;   It does not have to be a search url, that was just the application I had in mind when I originally wrote it.
;   So what this does is that it runs chrome with the extra arguments "-incognito" and the google search URL where REPLACEME in the URL has been replaced by your input.
{
    gui_search_title = Google Search as Incognito
    gui_search("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe -incognito https://www.google.com/search?safe=off&q=REPLACEME")
}


;-------------------------------------------------------------------------------
;;; SEARCH IN OTHER PLACES ;;;
;-------------------------------------------------------------------------------

else if Pedersen = f%A_Space% ; Search Facebook
{
    gui_search_title = Who is the Facebook?!
    gui_search("https://www.facebook.com/search/results.php?q=REPLACEME")
}
else if Pedersen = y%A_Space% ; Search Youtube
{
    gui_search_title = Tell me a name and I'll give you a video!
    gui_search("https://www.youtube.com/results?search_query=REPLACEME")
}
else if Pedersen = t%A_Space% ; What's Up in torrent networks?
{
    gui_search_title = Sharing is caring
    gui_search("https://kickass.to/usearch/REPLACEME")
}
else if Pedersen = eng ; Translate English to Persian
{
    gui_search_title = It's On the tip of my tongue! 
    gui_search("https://translate.google.com/#en/fa/REPLACEME")
}
;it's part is a bit faulty!
else if Pedersen = per ; Translate Persian to English
{
    gui_search_title = سر زبونمه ها بخدا
    gui_search("https://translate.google.com/#fa/en/REPLACEME")
}


;-------------------------------------------------------------------------------
;;; LAUNCH WEBSITES ;;;
;-------------------------------------------------------------------------------

else if Pedersen = / ; Go to subreddit. This is a quick way to navigate to a specific URL.
{
    gui_search_title := "/r/"
    gui_search("https://www.reddit.com/r/REPLACEME")
}
else if Pedersen = red ; reddit.com
{
    gui_destroy()
    run www.reddit.com
}
else if Pedersen = face ; facebook.com
{
    gui_destroy()
    run www.facebook.com
}
else if Pedersen = 9g ; 9gag.com
{
    gui_destroy()
    run 9gag.com
}
else if Pedersen = 9gag ; 9gag.tv
{
    gui_destroy()
    run 9gag.tv
}
else if Pedersen = repl ; repl.it/languages
{
    gui_destroy()
    run repl.it/languages
}
else if Pedersen = make ; www.maketecheasier.com
{
    gui_destroy()
    run www.maketecheasier.com
}
else if Pedersen = verge ; www.theverge.com
{
    gui_destroy()
    run www.theverge.com
}
else if Pedersen = tweet ; twitter.com
{
    gui_destroy()
    run twitter.com
}
else if Pedersen = git ; github.com
{
    gui_destroy()
    run github.com
}

;-------------------------------------------------------------------------------
;;; LAUNCH PROGRAMS ;;;
;-------------------------------------------------------------------------------

else if Pedersen = cal ; Google Calendar
{
    gui_destroy()
    run https://www.google.com/calendar
}
else if Pedersen = note ; Notepad
{
    gui_destroy()
    Run Notepad
}
else if Pedersen = paint ; MS Paint
{
    gui_destroy()
    run "C:\Windows\system32\mspaint.exe"
}
else if Pedersen = inbox ; Open google inbox
{
    gui_destroy()
    run https://inbox.google.com/u/0/
    ; run https://mail.google.com/mail/u/0/#inbox  ; Maybe you prefer the old gmail
}

;-------------------------------------------------------------------------------
;;; LAUNCH SETTINGS ;;;
;-------------------------------------------------------------------------------

else if Pedersen = lan ; shows the windows network adaptor settings
{
    gui_destroy()
    Run ::{7007acc7-3202-11d1-aad2-00805fc1270e}
}

;-------------------------------------------------------------------------------
;;; INTERACT WITH THIS AHK SCRIPT ;;;
;-------------------------------------------------------------------------------
else if Pedersen = rel ; Reload this script
{
    gui_destroy() ; removes the GUI even when the reload fails
    Reload
}
else if Pedersen = dir ; Open the directory for this script
{
    gui_destroy()
    Run, %A_ScriptDir%
}
else if Pedersen = host ; Edit host script
{
    gui_destroy()
    run, notepad.exe "%A_ScriptFullPath%"
}
else if Pedersen = commands ; Edit GUI user commands
{
    gui_destroy()
    run, notepad.exe "%A_ScriptDir%\GUI\UserCommands.ahk"
}


;-------------------------------------------------------------------------------
;;; TYPE RAW TEXT ;;;
;-------------------------------------------------------------------------------
else if Pedersen = @1 ; First Email address
{
    gui_destroy()
    Send, a.fzl@live.com
}
else if Pedersen = @2 ; Second Email address
{
    gui_destroy()
    Send, a.fazeli95@gamil.com
}
else if Pedersen = @3 ; Third Email address
{
    gui_destroy()
    Send, ali_fzl@yahoo.com
}
else if Pedersen = name ; My name
{
    gui_destroy()
    Send, Ali Fazeli
}
else if Pedersen = phone ; My phone number
{
    gui_destroy()
    SendRaw, +989038308784
}
else if Pedersen = add ; My full address
{
    gui_destroy()
    SendRaw, Number1,Tehran,Iran
}
else if Pedersen = paste ; Paste clipboard content without formatting
{
    gui_destroy()
    SendRaw, %ClipBoard%
}
else if Pedersen = jun ; type raw text 'jupyter notebook'
{
    gui_destroy()
    Send, jupyter notebook
}
else if Pedersen = jul ; type raw text 'jupyter lab'
{
    gui_destroy()
    Send, jupyter lab
}


;-------------------------------------------------------------------------------
;;; OPEN FOLDERS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = down ; Downloads
{
    gui_destroy()
    run C:\Users\%A_Username%\Downloads
}
else if Pedersen = drop ; Dropbox folder (works when it is in the default directory)
{
    gui_destroy()
    run, C:\Users\%A_Username%\Dropbox\
}
else if Pedersen = gd ; Google Drive folder (works when it is in the default directory same as DropBox)
{
    gui_destroy()
    run, C:\Users\%A_Username%\Google Drive\
}
else if Pedersen = rec ; Recycle Bin
{
    gui_destroy()
    Run ::{645FF040-5081-101B-9F08-00AA002F954E}
}


;-------------------------------------------------------------------------------
;;; MISCELLANEOUS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = ping ; Ping Google
{
    gui_destroy()
    Run, cmd /K "ping www.google.com"
}
else if Pedersen = pping ; Ping Google wih shownig your routing informations
{
    gui_destroy()
    Run, cmd /K "pathping www.google.com"
}
else if Pedersen = flush ; refresh your DNS address.
{
    gui_destroy()
    Run, cmd /K "ipconfig /flushdns"
}
;such a handy tool for guys have trouble with Internet(Include Me!)
else if Pedersen = netres ; refresh your Connections by obtaining new IP
{
    gui_destroy()
    Run, cmd /K "ipconfig /release"
    Run, cmd /K "ipconfig /renew"
}
else if Pedersen = date ; What is the date?
{
    gui_destroy()
    FormatTime, date,, LongDate
    MsgBox %date%
    date =
}
else if Pedersen = week ; Which week is it?
{
    gui_destroy()
    FormatTime, weeknumber,, YWeek
    StringTrimLeft, weeknumbertrimmed, weeknumber, 4
    if (weeknumbertrimmed = 53)
        weeknumbertrimmed := 1
    MsgBox It is currently week %weeknumbertrimmed%
    weeknumber =
    weeknumbertrimmed =
}
else if Pedersen = ? ; Tooltip with list of commands
{
    GuiControl,, Pedersen, ; Clear the input box
    Gosub, gui_commandlibrary
}

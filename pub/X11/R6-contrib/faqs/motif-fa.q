Motif FAQ

[Last changed: 01 APR 95]

This article contains the answers to some Frequently Asked Questions (FAQ) 
often seen in comp.windows.x.motif. It is posted to help reduce volume in 
this newsgroup and to provide hard-to-find information of general interest.

		     Please redistribute this article!

This FAQ is maintained by Ken Sall (ksall@cen.com) of Century Computing, Inc.  

      http://www.cen.com/

I also maintain a WWW page called "MW3: Motif on the World Wide Web" at:

      http://www.cen.com/mw3/

Send FAQ and MW3 updates and corrections to ksall@cen.com.  It would help if 
the subject line contained the phrase "For Motif FAQ".  I will be making an
HTML version available sometime in the future. In the meantime, World Wide 
Web'sters are directed to the automatically generated HTML version of this
FAQ at the URL:

      http://www.cis.ohio-state.edu/hypertext/faq/usenet/motif-faq/top.html

There is also a WAIS database of FAQs which you can search :

      http://www.cs.ruu.nl/cgi-bin/faqwais

This is particularly useful since it's possible the answer you're looking for 
is in another FAQ (X, Xt, Widgets FAQ, etc.)

*** PLEASE NOTE ***
If you don't understand the above "http://" notation, see the subject:
"What is an URL?" 

In some cases, I've repeated information in different contexts to make
these details a bit easier to find.

This article includes answers to the questions listed below. Key:

                + questions NEW to this issue;
                * CHANGES since last issue.
      

 0)* TOPIC: SUBMITTING SUGGESTIONS, CORRECTIONS, NEW ANSWERS
 1)  TOPIC: WHAT IS MOTIF?
 2)  What is Motif and how does it relate to the X Toolkit and X  Window  Sys-
tem?
 3)  TOPIC: OTHER RELEVANT NEWSGROUPS
 4)  TOPIC: FAQ and NEWSGROUP FTP ARCHIVES
 5)  Is the FAQ available via FTP?
 6)  Is this FAQ accessible via WWW?
 7)  What is an URL? Are "ftp://", "http://", and "gopher://" typos?
 8)  Where can I find other FAQs related to Motif or X11?
 9)  Is this newsgroup accessible via email?
10)* Is this newsgroup archived?
11)  Is the mail list motif-talk archived?
12)  TOPIC: OSF, MOTIF and COSE
13)+ How can I contact OSF?
14)  What versions of Motif are there?
15)  Is there a concise features list for Motif 2.0?
16)  What are the details about new features in Motif 2.0?
17)  Where can I find Motif 2.0 documentation?
18)  Where can I get Motif?
19)  Is there a list of Motif bugs?
20)+ Where can I get a Motif 1.2 Certification Checklist?
21)  What is COSE and how does it relate to Motif?
22)  Is there a CDE FAQ or newsgroup?
23)  What is PST?
24)  Does OSF's PST process impact CDE evolution?
25)  Because of COSE, is Motif now in the public domain?
26)  What is DCE?
27)  Where can I get public domain Motif source?
28)  Are Motif code examples publically available?
29)  Has anyone done a public domain Motif lookalike?
30)  Does anyone from OSF pay attention to our questions/suggestions?
31)  Does OSF have an application compliance validation service?
32)  What is the motif-talk mailing list?
33)  What MIT patches do I use, and when do I use fix-osf?
34)  How does Motif work with X11R5?
35)  How can I find which version of Motif I have?
36)  TOPIC: MOTIF and the WORLD WIDE WEB (WWW)
37)  Where's an HTML version of the Motif FAQ on World Wide Web (WWW)?
38)* What are other interesting WWW URLs which are related to Motif?
39)+ Is there a central location for Motif information on the WWW?
40)* Which X and Motif developers have their own home page URLs?
41)  Where can I get the HTML widget used in Mosaic?
42)  TOPIC: BOOKS and JOURNALS
43)  Is there a bibliography available?
44)* Is there a Motif tutorial?
45)  What books are available for Motif programmers?
46)  Which Xt and X books would also be helpful?
47)  Are there books for X11R6 yet?
48)  What relevant journals are available?
49)  TOPIC: MWM and the SHELL WIDGET
50)  What is the difference between Motif and mwm?
51)  Does anyone have an alternative set of  3-D  defaults  for  a  monochrome
screen?
52)  How can I modify the Motif window manager decorations?
53)  Is there an ICCCM compliant way of setting window manager decorations?
54)  How can I put decorations on transient windows using olwm?
55)  How can I turn off the Motif window manager  functions  from  the  system
menu?
56)+ How can I keep my shell windows fixed in size?
57)  How can my application know when the user has quit Mwm?
58)  How can I tell if the user has selected "Close" from the system menu?
59)  Is there an mwm virtual desktop manager?
60)  Why does mwm 1.2 crash on startup?
61)  How do I obtain the size of a unmanaged shell widget?
62)  XtGetValues() on XmNx and XmNy of my top level  shell  don't  return  the
correct root window coordinates.  How do I compute these?
63)+ How can I create a shell widget with a non-default visual type?
64)  TOPIC: MOTIF DEVELOPMENT TOOLS (GUI BUILDERS and UIMS's)
65)  What GUI tools exist to assist in developing Motif applications?
66)  TOPIC: GEOMETRY MANAGEMENT
67)  Why is geometry management so important?
68)  What are good references for reading about geometry management?
69)  Why don't my labels resize in a RowColumn widget?
70)  Why do dialogs appear smaller under 1.2.3 and later?
71)  TOPIC: TEXT WIDGET
72)  How do XmTextField and a single line XmText widget differ?
73)  Why does  pressing  <return> in a text widget do nothing?
74)  When I add text to a scrolling text widget, how can I get the new text to
show?
75)  Does the text widget support 16 bit character fonts?
76)  How can I stop the text widget from echoing characters typed?
77)  How can I replace characters typed with say a `*'?
78)  How can I best add a large piece of text to a scrolled text widget?
79)  How can I highlight text in the Text widget?
80)  How can I select all of the text in a widget programmatically?
81)  How can I change colours of text in the Text widget?
82)  How can I change the font of text in the Text widget?
83)  Is there an emacs binding for the text widget?
84)  What if I have problems with the backspace/delete keys?
85)  How can I use a file as the text source for a Text widget?
86)  How can put Text in overstrike mode instead of insert?
87)  How can I make the Delete key do a Backspace?
88)  TOPIC: LIST WIDGET
89)  Should I create an XmList widget as a child of automatic XmScrolledWindow
or use the XmCreateScrolledList() convenience function?
90)  How do I best put a new set of items into a list?
91)  Can I have strings with different fonts in a list?
92)  Can I get a bitmap to show in a list item like I can in a Label?
93)  Can I have items with different colours in a list?
94)  Can I grey out an item in a list?
95)  Can I have multi-line items in a list?
96)  How can I tell the position of selected items in a list?
97)  TOPIC: FILE SELECTION BOX WIDGET
98)  What is libPW.a and do I need it?
99)  What are these compile errors: Undefined symbol _regcmp and _regex?
100)  What's wrong with the Motif 1.0 File Selection Box?
101)+ What's wrong with the FileSelectionBox under Solaris?
102)  TOPIC: FORM WIDGET
103)  Why don't labels in a Form resize when the label is changed?
104)  How can I center a widget in a form?
105)  How do I line up two columns of widgets of different types?
106)  TOPIC: PUSHBUTTON WIDGET
107)  Why can't I use accelerators on buttons not in a menu?
108)  TOPIC: ICON WIDGET
109)  How can I add multi-colored icons to my application?
110)  How can I convert a Sun/GIF/TIFF image to a pixmap?
111)  TOPIC: SCALE WIDGET
112)  Can the XmScale widget have arrows or tick marks in Motif 2.0?
113)  TOPIC: LABEL WIDGET
114)  How can I align the text in a label (button, etc) widget?
115)  Why doesn't label alignment work in a RowColumn?
116)  How can I set a multiline label?
117)  How can I have a vertical label?
118)  How can I have a Pixmap in a Label?
119)  TOPIC: DRAWING AREA WIDGET
120)  How can I send an expose event to a Drawing Area widget?
121)  How can I know when a DrawingArea has been resized?
122)+ How can I create a drawing area widget with a non-default visual type?
123)  TOPIC: MENUS
124)* How do I set the current choice in a radio box or an option menu?
125)  How do I make a menu choice insensitive if it  was  created  with  XmVa-
CreateSimplePulldownMenu?
126)  What can I put inside a menu bar?
127)  Can I have a cascade button without a submenu in a pulldown menu?
128)  Should I have a cascade button without a submenu in a pulldown menu?
129)  What is the best way to create popup menus?
130)  How do popup menus work?
131)  Should I use translation tables or actions for popup menus?
132)  What are the known bugs in popup menus?
133)  Can I have multiple popup menus on the same widget?
134)  TOPIC: INPUT FOCUS
135)  How can I specify the widget that should have the keyboard focus when my
application starts up?
136)  How can I direct the keyboard input to a particular widget?
137)  How can I have a modal dialog which has to be answered before the appli-
cation can continue?
138)  TOPIC: MEMORY AND SPEED
139)  When can I free data structures passed to or retrieved from Motif?
140)  Why does my application grow in size?
141)  Why does my application take a long time to start up?
142)  My application is running too slowly. How can I speed it up?
143)  Why is my application so huge?
144)  TOPIC: XMSTRING
145)  What string functions differ in Motif 1.1 and 1.2?
146)  How can I get the Ascii text out of an XmString?
147)  When can XmStrings used as resources be freed?
148)  Why doesn't XmStringGetNextSegment() work properly?
149)  Why does using XmStringDraw cause a Bad Font error?
150)  TOPIC: DIALOGS
151)  How do I stop my dialog disappearing when I press the help button?
152)  How do I make my own dialog?
153)  Why do dialog title bars have "_popup" or  "<-popup"  concatenated  onto
the widget name?
154)  How can I force a dialog window to display?
155)  How can I control placement of a popup widget?
156)  TOPIC: LANGUAGE BINDINGS
157)  Is there a C++ binding for Motif?
158)  How can I avoid C++ String class and typedef char *String conflicts?
159)  How can I have a C++ member function in a callback?
160)  Is there a Common Lisp binding for Motif?
161)  Is there an Ada binding for Motif? (Part 1 of 2)
162)  Is there an Ada binding for Motif? (Part 2 of 2)
163)  Is there a Poplog binding for Motif?
164)  TOPIC: SPECIFIC PLATFORMS
165)  Is it easy to build Motif for a Sun?
166)  How do I build Motif 1.2.2 on Solaris 2.1 with Sun C?
167)  What compile errors/warnings might I get in both Sun 3 and Sun 4?
168)  On a Sun 3, what are the mwm startup error messages about?
169)  Are there problems making shared libraries on a Sun?
170)  Why does the OpenWindows server hangs when I popup a menu with Button 3?
171)  Has anyone made shared libraries on an IBM RS/6000?
172)  What is the error  "Unaligned access in XmString" under Ultrix?
173)  TOPIC: KEYSYMS
174)  What is causing the messages "unknown keysym osfDown..."?
175)  What happens if I can't install Motif Keysyms?
176)  Why has OSF introduced Keysyms into Motif 1.1?
177)  Why do accented characters not work with Motif applications linked  with
X11R6? What is the Compose file?
178)  TOPIC: UIL
179)  What is UIL and why is it so popular?
180)  What is Mrm?
181)  How do I specify a search path for ".uid" files?
182)  Can I specify callback functions in resource files?
183)  How can I set a multiline label in UIL?
184)  Is there a program that can convert a UIL file to tclMotif?
185)  TOPIC: ICONIFICATION and DE-ICONIFICATION
186)  How can I keep track of changes to iconic/normal window state?
187)  How can I check if my application has come up iconic?
188)  How can I start my application in iconic state?
189)  How can an application iconify itself?
190)  How can an application de-iconify itself?
191)  TOPIC: SPECIALIZED WIDGETS
192)  Where can I get a Table widget? Matrix widget? Spreadsheet widget?
193)  Where can I get a bar graph widget?
194)  Is there a graph widget in which you can add vertices and edges and  get
automatic updating?
195)  Is there a help system available, such as in Windows 3?
196)  Is there a canvas widget or drawing widget for graphical display?
197)  TOPIC: CREATING WIDGETS
198)  What are some good references for creating  widgets  (subclassing  widg-
ets)?
199)  TOPIC: MISCELLANEOUS
200)  How can an application be informed of signals?
201)  How do I control the repeat rate on a SUN keyboard?
202)  How can I identify the children of a manager widget?
203)  How do I tell if a scrolled window's scrollbars are visible?
204)  How can I programatically scroll a XmScrolledWindow in XmAUTOMATIC mode?
205)  What functions can an application use to change the size or position  of
a widget?
206)  What widgets give the look of push buttons, but behavior of toggle  but-
tons?
207)  Can I use XtAddTimeOut, XtAddWorkProc, and  XtAddInput  with  XtAppMain-
Loop?
208)  Why does XtGetValues  for  XmNx  and  XmNwidth  return  extremely  large
values?
209)  Can I use XmGetPixmap() with widgets that have non-default visual types?
210)  How can I determine the item selected in a option menu or a RadioBox?
211)  What is the matter with Frame in Motif 1.2?
212)  What is IMUG and how do I join it?
213)  How do I set the title of a top level window?
214)  Can I use editres with Motif?
215)+ Where is the editres protocol documented?
216)  Why does an augment translation appear to act as replace for some  widg-
ets?
217)  How do you "grey" out a widget so that it cannot be activated?
218)  Why doesn't the Help callback work on some widgets?
219)  Can I specify a widget in a resource file?
220)  Why are only some of my translations are being installed?
221)  Where can I get the PanHandler code?
222)  What are these passive grab warnings?
223)  How do I have more buttons than three in a MessageBox?
224)  How do I create a "busy working cursor"?
225)  Can I use the hourglass that mwm uses?
226)  What order should the libraries be linked in?
227)  How do I use xmkmf for Motif clients?
228)  How do I make context sensitive help?
229)  How do I debug a modal interaction?
230)  How can I disable Drag and Drop in my Motif 1.2 client ?
231)* Where can I find info and examples of the Motif drag and drop protocol?
232)  Why can't I install my own colormap using XInstallColormap?
233)  How do I get correct shadow colors to match other color changes?
234)  What color algorithm does Motif use?
235)  How can you access the superclass widget from  which  Motif  convenience
dialogs are subclassed?
236)  Can the Notebook widget display non-rectangular "file tabs"?
237)  How does the clipboard mechanism work?
238)  Why does the xyz application core dump when I cut and paste?
239)+ Why doesn't XtNameToWidget (widget, "MyName") work?
240)+ Why does my structure  contain  incorrect  data  when  the  callback  is
called?
241)* TOPIC: HISTORY and ACKNOWLEDGEMENTS


-----------------------------------------------------------------------------
Subject:  0)* TOPIC: SUBMITTING SUGGESTIONS, CORRECTIONS, NEW ANSWERS

[Last modified: Apr 95]

Answer: If you have suggestions or corrections for any of these answers or any
additional information, please send them to the e-mail address below.  The
information will be included in the next revision or two.

        o Send updates, suggestions, corrections, new answers to:

                        ksall@cen.com   (Ken Sall)
                        Century Computing. Inc.
                        http://www.cen.com/

          (In general, if you want your info in a particular month's FAQ,
          send it at least a week before the end of the month.)

        o _Please_ put "For Motif FAQ" in the Subject line!

        o Submissions should be of general interest.

        o Please include answers with questions.

        o If you _do not_ want your name or email address listed in the FAQ,
          explicitly state this.

NOTE TO BUSINESSES: Please send your announcements/updates/corrections in a
brief, ready-to-include form. I'd rather not spend alot of time editing the
information.


This posting is intended to be distributed at approximately the beginning of
each month.

The information contained herein has been gathered from a variety of sources.
In many cases attribution has been lost; if you would like to claim
responsibility for a particular item, please let us know.


Conventions used below: telephone numbers tend to be Bell-system unless
otherwise noted; prices on items are not included.

-----------------------------------------------------------------------------
Subject:  1)  TOPIC: WHAT IS MOTIF?

-----------------------------------------------------------------------------
Subject:  2)  What is Motif and how does it relate to the X Toolkit and X
Window System?


[Last modified: Feb 95]

Answer:

Motif is a widely-accepted set of user interface guidelines developed by the
Open Software Foundation (OSF) around 1989 which specifies how an X Window
System application should "look and feel". OSF/Motif, as it's more formally
called, includes the Motif Toolkit (also called "Xm" or the "Motif widgets"),
which enforce a policy on top of the X Toolkit Intrinsics ("Xt"). Xt is really
a "mechanism not policy" layer, and Xm provides the specific "look and feel".
For example, Xt does not insist that windows have titlebars or menus, but it
provides hooks for developers of specific toolkits (Motif, OpenLook, Athena
widgets) to take advantage of. In addition to widgets, OSF/Motif includes the
Motif Style Guide document (as well as several others listed in my FAQ) which
details how a Motif user interface should look and behave to be "Motif
compliant".

The X Toolkit Intrinsics are built upon the lowest programming level API
called "Xlib" (X library). Both Xlib and Xt are specified by the X Consortium
(formerly called the MIT X Consortium), which you can reach at:
        http://www.x.org/ or:
        ftp to ftp.x.org

Xlib and Xt source code is free. Motif is not.

-----------------------------------------------------------------------------
Subject:  3)  TOPIC: OTHER RELEVANT NEWSGROUPS

[Last modified: Feb 95]

Answer: This newsgroup is comp.windows.x.motif.  The WWW URL is:

        news:comp.windows.x.motif


The nearest related group is comp.windows.x.  It also maintains an FAQ, which
deals in all sorts of X, Xlib and Xt questions. Look there for answers to
questions such as "How do I get a screendump of my application?", "where do I
get X11R4,X11R5, X11R6", etc.  The URLs for other groups which may have
relevant information are:

        news:comp.windows.x.pex
        news:comp.windows.x.apps
        news:comp.windows.x.intrinsics
        news:comp.windows.news
        news:comp.windows.misc
        news:comp.windows.open-look
        news:alt.windows.cde


The intrinsics and open-look groups also have an FAQ.

The newsgroup news.answers contains *lots* of FAQs (including this one).  Look
there for lots of info on everything.

-----------------------------------------------------------------------------
Subject:  4)  TOPIC: FAQ and NEWSGROUP FTP ARCHIVES

-----------------------------------------------------------------------------
Subject:  5)  Is the FAQ available via FTP?

[Last modified: Oct 94]

Answer: A number of FAQ's (including this one) are available via anonymous ftp
at rtfm.mit.edu under the directory pub/usenet.

The Motif FAQ is available in 6 parts via anonymous ftp in any of the
following directories at rtfm.mit.edu:

        /pub/usenet-by-group/comp.windows.x.motif
        /pub/usenet-by-group/comp.answers/motif-faq
        /pub/usenet-by-group/news.answers/motif-faq


There is also a mail server called mail-server@rtfm.mit.edu.  To retrieve a
file send mail to the server with a subject or body similar to

        send usenet/comp.windows.x.motif/Motif_FAQ_(Part_1_of_6).Z


The Motif FAQ is also available via anonymous ftp as a single file:

        /contrib/faqs/Motif-FAQ from ftp.x.org.


(See also "Is this FAQ accessible via WWW?")

The FAQ is also accessible from WAIS (Wide Area Information System) under UC-
Motif-FAQ, allowing keyword-based searches of the FAQ.

-----------------------------------------------------------------------------
Subject:  6)  Is this FAQ accessible via WWW?

[Last modified: Oct 94]

Answer:

The Motif FAQ is available as a single file via the World Wide Web URL:

        ftp://ftp.x.org/contrib/faqs/Motif-FAQ

and also:

        ftp://ftp.germany.eu.net/pub/X11/XConsortium/contrib/faqs/Motif-FAQ

and as 6 separate parts as:

        ftp://rtfm.mit.edu/pub/usenet-by-group/comp.windows.x.motif/Motif_FAQ_(Part_n_of_6)
        ftp://rtfm.mit.edu/pub/usenet-by-group/comp.answers/motif-faq/part[1-6]
        ftp://rtfm.mit.edu/pub/usenet-by-group/news.answers/motif-faq/part[1-6]


In addition, an automatically generated HTML version of this FAQ can be found
at:

        http://www.cis.ohio-state.edu/hypertext/faq/usenet/motif-faq/top.html


A more in-depth restructuring using HTML is planned for the future.

-----------------------------------------------------------------------------
Subject:  7)  What is an URL? Are "ftp://", "http://", and "gopher://" typos?

[Last modified: Oct 94]

Answer: No, they are not typos.  All location references in this FAQ are
slowly being replaced with WWW (World Wide Web) URLs (Uniform Resource
Locator). Basically, an URL is a unique location of a Web resource (directory,
file, image, host, etc.). If you want to read more about URL's, get the
PostScript paper from ftp.ncsa.uiuc.edu:

        Mosaic/mosaic-papers/getting-started.ps

If you don't know how to access the Web, you can still access locations via
anonymous ftp by dropping the "ftp://" protocol portion and interpreting the
next section as the domain name. For example, for an URL of

        ftp://any.old.place/dirname/filename

connect via anonymous ftp to any.old.place and get /dirname/filename.

Similarly, if the location begins "gopher://", drop the protocol portion,
telnet to the host and login as "gopher".

If the location in this FAQ begins with "http://" and you aren't a Web user,
simply ignore the reference. Or, you could check out the WWW FAQ (2 or more
parts) from rtfm.mit.edu directory:

         /pub/usenet/news.answers/www/faq

(URL: ftp://rtfm.mit.edu/pub/usenet/news.answers/www/faq )

Why are URLs being used? For those who regularly access the Web (via browsers
such as Mosaic, WinWeb, Chimera, Lynx, W3, tkWWW, etc.), this notation greatly
facilitates access to the cited documents/directories/files. And, for this FAQ
maintainer, URLs make it easier to verify whether the pointer is still
accurate! Instead of typing:

        ftp any.old.place
        logging in as anonymous
        entering my email address
        cd /dirname
        get filename

I can simply use the "Open URL" feature of my browser and paste
"ftp://any.old.place/dirname/filename" in one step. 'Nuff said!

-----------------------------------------------------------------------------
Subject:  8)  Where can I find other FAQs related to Motif or X11?

[Last modified: Mar 95]

Answer: Check out the directory /contrib/faqs on ftp.x.org. As of August,
1994, these FAQs were available:


     FAQ                - X11 FAQ
     FAQ-X11Games.doc.gz- high priority research projects ;-)
     FAQ-Xt             - X Toolkit
     Intel-Unix-X-faq.Z - Intel-specific information
     Motif-FAQ          - this FAQ
     Widget.FAQ         - useful list of available widgets (John L. Cwikla)
     X11R6-on-SUN-FAQ   - Sun-specific X11R6 info
     speedup-x-faq      - how to maximize the performance of X
     x-faq-multipart/   - directory of X FAQ in pieces
     xapps-fa.z         - X applications


Web'sters can check out the directory URL: ftp://ftp.x.org/contrib/faqs/
Grab the X FAQ, the Xt FAQ, and the Widget FAQ:

     ftp://ftp.x.org/contrib/faqs/FAQ
     ftp://ftp.x.org/contrib/faqs/FAQ-Xt
     ftp://ftp.x.org/contrib/faqs/Widget.FAQ


There is also a CDE FAQ at:

     http://proper.com:70/0/faqs-link/common-faqs/faqs/cde-cose-faq

-----------------------------------------------------------------------------
Subject:  9)  Is this newsgroup accessible via email?

[Last modified: Nov 94]

Answer: The email link, formerly maintained by Brian Dealy (via motif-
request@lobo.gsfc.nasa.gov), is no longer being attended.  You cannot be added
to the list at this time.  The mailing list address is no longer valid.


        NOTE: As of October 31, 1994, Brian was seeking a new maintainer for
        the mail reflector for people without access to comp.windows.x.motif.
        If interested, email him at his new address: bdealy@c3i.saic.com.


-----------------------------------------------------------------------------
Subject: 10)* Is this newsgroup archived?

[Last modified: Apr 95]

Answer: The newsgroup files from August 1991 through December 1994 are
available from csc.canberra.edu.au (137.92.1.1) by anonymous ftp.  They are in
the directory /pub/motif/comp.windows.x.motif :

        ftp://csc.canberra.edu.au/pub/motif/comp.windows.x.motif

These files are also accessible from WAIS (Wide Area Information System) under
comp.windows.x.motif, allowing keyword-based searches of the newsgroup
articles (this time on machine services.canberra.edu.au (137.92.1.12)).

-----------------------------------------------------------------------------
Subject: 11)  Is the mail list motif-talk archived?

Answer: If you have purchased support from OSF then you have access to their
archive server for motif-talk.

-----------------------------------------------------------------------------
Subject: 12)  TOPIC: OSF, MOTIF and COSE

-----------------------------------------------------------------------------
Subject: 13)+ How can I contact OSF?

[Last modified: Apr 95]

Answer: Here are several contact points:

        Licensing:      (617) 621-7300 or direct@osf.org

Technical Support:      (617) 621-8990 or motif-defect@osf.org

     Mailing List:      motif-talk@osf.org (requires Motif license)

Subscribe to List:      motif-talk-request@osf.org (ditto)

       Snail Mail:      OSF, 11 Cambridge Center, Cambridge, MA 02142

   World Wide Web:      http://www.osf.org:8001/


-----------------------------------------------------------------------------
Subject: 14)  What versions of Motif are there?

[Last modified: Sept 94]

Answer: Motif 1.0 is based on the R3 toolkit.  There are patch releases to
1.0: 1.0.1, 1.0.A, 1.0.2 and 1.0.3, 1.0.4, 1.0.5. 1.0.A was a fairly major
patch, as it involved a complete re-engineering of UIL and Mrm.  Almost
everyone who has 1.0.x has either 1.0.A or 1.0.3.

Motif 1.1 is based on the R4 toolkit.  The intial version was Motif 1.1.0.
Motif 1.1.1 has been released as a patch to licensees with Full Support or
Technical Update service.  Motif 1.1.2 is a patch release which contains the
necessary changes to fix over 80 bugs reported against Motif. It is available
to support contract holders (including both full support and update service).
The 1.1.3 release fixed a further 150 bugs and was available from August 1991
to support contract holders (including both full support and update service).
1.1.4 offers X11R5 support, but is not an X11R5 product.  1.1.5 was released
in June 92 to licensees who hold a Motif Full Support or Update Support
contract

Motif 1.2.0 was released in April 1992 and is based on the X11R5 toolkit.  It
offers increased compatibility with international standards,  PC-style
behavior and binary compatibility with OSF/Motif 1.1 applications.  New
features include drag-and-drop, tear- off menus, toolkit enhancements and new
documentation.  toolkit.  The code is totally ANSI C.  OSF distributes a 10
pages sheet entitled "OSF/Motif R1.1 to R1.2: detailed overview of changes",
which is available from OSF Motif direct channels.  (617-621-7300 or email
direct@osf.org)

Motif 1.2.1 was released September 92.  Due to an optimisation from 1.2.0 to
1.2.1 object code compiled under 1.2.1 (that is, using 1.2.1 header files)
will not link with 1.2.0 libraries (and, very probably, clients that use
shared libraries and are linked against 1.2.1 won't startup against 1.2).

Motif 1.2.2 was released March 93.  This release contains over 250 bug fixes,
improved text, drag-and-drop features and has less than one reported defect
per 1000 lines of code.

from dbrooks@osf.org Motif 1.2.3 was released on September 13, 1993.  The
defect density is measured at < 0.8 known reports per thousand lines.  In this
release, we have paid particular attention to memory leaks, and have improved
drag-and-drop performance greatly.

Motif 1.2.4 was released April '94.  From the OSF README: This patch release
contains approximately 240 bug fixes for Motif 1.2. The number of CRs resolved
in this release is about 330....Apart from the 64-bit changes, all changes
made in this release are fixes for reported bugs.

Motif 2.0 was released in August '94.

For details, see the questions "Is there a concise features list for Motif
2.0?" and "What are the details about new features in Motif 2.0?"

-----------------------------------------------------------------------------
Subject: 15)  Is there a concise features list for Motif 2.0?

[Last modified: Sept 94]

Answer: (See the next question for a more detailed features list.)

The following list is the OSF documentation located at the WWW URL:
 http://www.osf.org:8001/motif/list_features.html

"Complete list of 2.0 features"
 -----------------------------

New widgets

   ComboBox.
   Notebook.
   Container/IconGadget.
   SpinBox.
   CSText.

New features

   Thermometer Scale and tic marks.
   ScrollBar sliding/arrow and snapback modes.
   ScrolledWindow autoscroll and childType.
   Toggle indeterminate state and new visual.
   Colors in Gadgets.
   XmIm API for I18N.
   XmNlayoutDirection resource everywhere.
   Natural UnitType conversion syntax.
   XPM3 (colored icon) format support.
   The Uniform Transfer Model.
   General Rendition attributes in XmString (color, multiple fonts, etc)
   Several Display resources for CDE visual/behavior compatibility.
   New FileSelectionBox mode (again from CDE).
   Quick navigate in List.
   Oriented PanedWindow.
   Popup menus support.
   and much more...

Extensibility

   Traits.
   C++ foundry.
   Widget writer doc.
   Exm widget source examples.
   Xme API (useful _Xm).

Desktop

   Virtual MWM.
   Workspace Manager.
   TearOff menu in MWM.
   Client Command Interface.
   Colored icon pixmaps (from Xm).

Performance & Quality

   No known Memory Leaks.
   XmString sharing.
   XmList creation/setup speedup.
   GC usage improved.
   Malloc/free usage.
   Bitmap allowed for pixmap resources.
   XmManager no longer blindly selects for PointerMotion
   XmFileSelectionBox better stat cache.
   Broader use of Hash tables.
   Better link profile (Trait + remodularization).
   X11R6 unofficial support.
   Hundreds of bug fixes.

-----------------------------------------------------------------------------
Subject: 16)  What are the details about new features in Motif 2.0?

[Last modified: Sept 94]

Answer: (See the previous question for a more compact features list.)

        NOTE: This is a posting by Douglas Rand that was composed by
        one of the OSF business managers, Darrell Crow (crow@osf.org).
        Also, OSF maintains its own Motif 2.0 FAQ:
        http://www.osf.org:8001/motif/MotifFAQ.html ...ksall@cen.com

 Date: 11 Jul 94 15:49:27 GMT
 From: uunet!ucbvax.Berkeley.EDU!agate!howland.reston.ans.net!spool.mu.edu!bloom-beacon.mit.edu!paperboy.osf.org!usenet (Douglas Rand)
 Organization: Open Software Foundation
 Subject: Motif 2.0 announcement
 To: uunet!lobo.gsfc.nasa.gov!motif


The following was composed by one of our business managers, Darrell Crow
(crow@osf.org),  questions may be directed to him.

----------------------------------------

With this posting I hope to answer many questions I've been receiving
regarding what is in Motif 2.0 and how does if differ from Release 1.2.  This
posting contains an overview followed by a bullet item listing of the features
and benefits added to Motif in this release. If I didn't answer your questions
feel free to direct them to me.  At the end, I'll list additional
documentation available from OSF.  If you're also interested in the licensing
and pricing information you can also contact me or the official OSF/Motif
channel: direct@osf.org.  I hope that this information update is of benefit to
you.

OSF/Motif has become the major Graphical User Interface (GUI) technology for
Open Systems, as well as an IEEE 1295 standard.  On Tuesday, June 21, OSF
announced its next major release of OSF/Motif, Release 2.0.   This release,
which is the most extensive and colaborative release of Motif since Motif 1.0
was introduced five years ago, includes new features organized around four
major themes:
        I.  Extensibility,
        2.  Consistency,
        3.  Improvements and
        4.  CDE Convergence.

Motif 2.0 was a collaborative development effort.  Contributors to this
release include Lotus Development, IBM, Hewlett-Packard, Digital Equipment,
Integrated Computer Solutions, Computer Automation,  Groupe Bull, HaL Computer
Systems and Unix Systems Laboratories.

This release had the goal of allowing developers to easily build new widgets
and with support for C++ .  This required new extensible features such as
subclassing, traits, C++ support and detailed documentation.  Like all Xt-
based toolkits, subclassing requires detailed knowledge, experience and access
to the source code to fully understand Motif's class methods.  Motif 2.0
simplified this process by providing extensive documentation and allowing
subclassing from the Primitive and Manager classes without requiring access to
source code. Documentation of Motif's class methods are included in a new
book, The OSF/Motif Widget Writer's Guide. This book provides all necessary
information to subclass from Primitive and Manager and numerous examples of
subclassing are provided.   Traits are a new feature with Motif 2.0 which
essentially allow a given behaviour to be associated to a widget irrespective
of the widget hierarchial relationships. The number of applications developped
in C++ is rapidly growing and C++ programmers are now able to derive new
subclasses and still have those C++ widgets usable as regular widgets with the
standard API in Motif 2.0

CDE (Common Desktop Environment) convergence.  The previous version of
OSF/Motif (Release 1.2) introduced major new features such as
internationalization, drag-and-drop and tear-off menus. Those features were
intended to allow application developers to produce interoperable, easy to use
applications for a worldwide market. As a result, this technology was selected
to become the basis of the Common Desktop Environment jointly developed by HP,
IBM, Novell and SunSoft, proposed to become an X/Open standard. These features
as well as the GUI extensions added to the CDE specifications have been added
to Release 2.0.

PC Consistency has been a major theme of this release.  This includes
improvements and completions to the toolkit that was begun with Motif 1.2 as
well as the addition of seven new widgets (Container, Notebook, icon gadget,
spinbox, combobox, CSText and thermometer) common to this environment and
finally a new Style Guide.  Extensive work has been expended to ensure the
convergence of the Windows, CUA, CDE and Motif style both in technology and
terminology into a single document.  The work for this book will be submitted
to the X/Open Fast Track process for incorporation into the X/Open set of
specifications.

Improvements to the OSF/Motif toolkit are far too numerous to adequately list
here.  However a brief mention of a few of the major improvements includes the
addition of the Unified Transfer Model that simplifies data transfer by all
Motif's previous methods,  XPM support (ability to read colored icon file for
pixmap resources), ScrolledWindow partial scroll and autodrag,Toggle
checkmark, indeterminate state, documenting the input methods API for
internationalization, upgrading UIL to support 64-bit architecture, platform
independence, and support of the new extensibility features and widgets, and
finally the Motif Window Manager support of virtual screen, workspace
management protocol and root menu additions and etc.

This release brings together the most requested features from development
community with the single purpose of extending application developers' mission
of producing portable, consistent and interoperable applications to the open
systems  community.

Listing of the OSF/MotifR 2.0 Features and Benefits

I.  MORE EFFICIENT APPLICATION DEVELOPMENT

Easier application development to meet new business opportunities and deploy
applications faster...

Benefit Allows easier extensions to Motif for custom user


Features:
*  New, formal Xme API for integrating custom widgets interfaces,
   without access to Motif source code
*  All extensions using Xme API are "full citizens"
*  Widgets may be added to off-the-shelf Motif products, without
   recompiling Motif source code
*  Manager and primitive widget subclassing
*  C++ base classes provided for C++ widget development
*  C++ is used for inheritance, but X intrinsics are used for other
   characteristics
*  Trait mechanism for OSF/Motif widgets, allowing "multiple
   inheritance" of C class methods
*  Extensibility fully documented in Widget Writer's Guide, and
   Reference documentation
*  New OSF training: Widget Writing with Motif 2.0
*  Examples of custom widgets in C and C++

Feature:
Makes it easier for C++ developers to use Motif

Benefit:
*  Motif source code compilable by C++ compiler
*  Ability to integrate C++ widget extensions (above)

Feature:
Allows easier exploitation of Motif features for end user benefits

Benefit:
XmNotebook
*  Subclass of XmManager
*  Organizes children into pages, tabs, status area and page scroller
XmContainer
*  Subclass of XmManager
*  Manages IconGadget children
XmIconGadget
XmComboBox
*  Subclass of XmManager
*  Combines capabilities of a single line
        XmTextField and XmList
XmSpinBox
*  Subclass of XmManager
*  Manages multiple traversable children
XmScale (thermometer) widget
*  Subclass of XmManager
*  New resources added for thermometer behavior
XmCSText
*  Subclass of XmPrimitive
*  Provides facilities which parallel XmText, but using XmString

Uniform transfer model for primary transfer,
*  secondary transfer, cut and paste, drag and drop
        Uniform API (with backward compatibility)
        2 new callback functions for target identifcation

Misc. toolkit enhancements:
*  Menu system
        Simplified programming of popup menus
        Source code reorganization
*  X pix map (XPM) format, with multicolor icons

Misc. toolkit enhancements (continued):
*  New rendering characteristics for XmString:
        renditions (fonts, color), tabs, localization
        components, parsing
*  List -- Quick navigate
*  Traversal -- drawing area traversable via keys,
        virtual key associated with multiple real keys
*  Visuals (in addition to Toggle Button)
*  XmScreen resources
*  Resolution independence -- unit conversion

UIL enhancements:
*  Support for new and custom widgets
*  UID files -- platform independence
*  64-bit architecture support

Updates to documentation: Programmer's Guide, Reference

Updates to OSF training:
*  Introduction to Programming
*  User Interface Design
*  2.0 Technical Update

Feature:
Allows easy integration of applications with Common Desktop
Environment (CDE)

Benefit:
*  Contains foundation GUI for CDE
*  Client-command interface allowing other clients to add commands to
MWM menus

Feature:
Allows easy migration of applications to Motif 2.0

Benefit
*  Upward binary compatibility of Motif 1.2 toolkit API
        (Motif 1.2 applications need only re-link)

Feature
Makes applications easier to troubleshoot & maintain

Benefit
*  Overall quality improvements in Motif
*  Default density lower than 0.5 DPKLOC

EASE OF USE

Ease of use by individual computer users... at the application user
interface level...

Feature:
Satisfies rising user expectations for ease of use, leveraging
experience with other user interfaces

Benefit:
User interface capabilities equivalent to those on PCs:
*  Notebook widget
*  Container widget
*  ComboBox widget
*  SpinBox widget
*  Scale (thermometer) widget
*  Availability of formatted editable text
        Compound String text widget
        Compound String enhancements to support color, tabs, multiple
          fonts, etc.
*  Auto Scrolling
*  Vertical Paned Window
*  Update to User Guide

Ease of use by individual computer users... at the desktop level...

Feature:
Allows easier integration with the desktop

Benefit:
*  Contains foundation GUI for Common Desktop Environment (CDE)
*  Tear-off menu support of mwm's root menu

Feature:
Allows more natural organization of users' work

Benefits:
*  Virtual screen (desktop panning) support
*  Workspace management protocol
        (for third party workspace management solutions that
        allow users to switch computing context "rooms" for
        different tasks)

EASE OF ENTERPRISE COMPUTING

Easier integration of Motif  and Motif applications into the
enterprise computing environment...

Feature:
Increases consistency of user interface style across platforms &
applications; increases user skill portability

Benefits:
*  Motif 2.0 Style Guide work Technical and terminology convergence
        among Motif, CDE and CUA
*  New widget support of converged style
*  Increased similarity to Windows & CUA behavior:
        Check marks and crosses in Toggle Button
        Indeterminate state in Toggle Button
        Ctrl Button 1 takes focus
        Menu unpost behavior
        Quick navigate in list

Feature:
Increases consistency of a complete user environment across open
systems

Benefits:
*  Consistency with the X/Open CDE specification, including virtually
        all CDE Motif vendor extensions:
        XmCascadeButton activation via BMenu
        Enhanced XmFileSelectionBox
        Default XmNshadowThickness to 1
        Thermometer-style XmScale
        Color pixmaps in XPM format
        Additional virtual key bindings
        SpinBox, ComboBox
        Message catalogs for toolkit error messages
        Other items controlled by a global resource:
          ColorObject (standarizes colormap allocation for
           applications, to enable use of Style Manager application)
        BSelect and BTransfer integration
        Dragging non-selectable items disabled
        Use of TAB key -- XmPushButton navigation
        Visual additions to XmToggleButton
        Visual modifications to menus (etched in)
        Visual modifications to default button in dialogs (focus
          highlight outside of default visual)
        Visual modifications to MWM
        Additional drag icons
*  Compliance with IEEE 1295 standard
*  Consistency of Motif vendor implementations:
        AES Rev D for API stability
        Validation Test Suite 2.0 for certification
        Updated Quality Assurance Test Suite for consistency in
          quality
*  Continued support of the X Window system (based on
*  X11R5; tested also with X11R6 )

Feature:
Ease of integrating Motif and PC environments

Benefits:
*  Favorable licensing terms to support:
        PC client-server computing
        Deployment of PC applications using Motif DLLs
*  Style convergence to support hybrid user environments


WORLD-WIDE ACCEPTANCE

Even more acceptable as the preferred user interface for Open Systems,
worldwide...

Feature
Applicable to a wider range of computer users

Benefits:
*  Internationalization enhancements:
        New API for widget writers to make use of input methods
        Higher level of internationalization for Middle Eastern
          languages:
        Bi-directional layout -- left-to-right/right-to-left geometry
          management
        Bi-directional text editing -- left-to-right/right-to-left,
          single level (unsupported)
*  64-bit architecture support
*  Favorable licensing terms to support:
        Single user systems
        Embedded systems
        Cross-vendor Motif upgrades
        Shared library distribution with applications
*  Performance
        Memory usage
        Start-up time, for list widget
        Decreased X resource usage
        Various optimizations


ADDITIONAL AVAILABLE DOCUMENTS FROM OSF.
        OSF/Motif 2.0 Datasheet
        OSF/Motif 2.0 Price List
        OSF/Motif 2.0 Licensing Kit
        OSF/Motif 2.0 Laymen's Explanation
        OSF/Motif 2.0 FAQ
        X/Journal July-August Feature Article on Motif 2.0

FOR MORE INFORMATION ABOUT OSF/MOTIF 2.0, PLEASE CONTACT OSF DIRECT CHANNELS
AT: (617)621-7300; email: direct@osf.org

OSF and Motif are registered trademarks of the Open Software Foundation, Inc.

 [end of message from Darrell Crow (crow@osf.org)]

-----------------------------------------------------------------------------
Subject: 17)  Where can I find Motif 2.0 documentation?

[Last modified: Mar 95]

Answer: Kevin Till of OSF posted a note saying that the Prentice Hall versions
of the Motif 2.0 books are available. Call OSF Direct Channel at (617) 621-
7300 or your neares t bookstore to order.

The Motif 2.0 README file says:
         The complete Motif documentation set is made up of the
         following documents:

            o Application Environment Specification - User
              Environment Volume
            o OSF/Motif Programmer's Reference
            o OSF/Motif Programmer's Guide
            o OSF/Motif Release Notes
            o OSF/Motif Style Guide
            o OSF/Motif User's Guide
            o OSF/Motif Widget Writer's Guide

         These documents are contained in one of the major
         subdirectories (./doc) of the Release 2.0 tree.

For more Details, see Chapter 7 of the README file at the top level of the
Motif 2.0 source tree.

-----------------------------------------------------------------------------
Subject: 18)  Where can I get Motif?

[Last modified: Feb 95]

Answer:
    Various hardware vendors produce developer's toolkits of binaries, header
files, and documentation; check your hardware vendor, particularly if that
vendor is an OSF member. Systems known to be shipping now: HP, SCO, ICS, Mips
(RISCwindows=X11R3 + full Motif), IBM, Data General for AViioNs (includes
UIL), Bull (?), Concurrent Computer Corporation 5000, 6000, 8000 series
machines, Convex, Sequent.

    In addition, independent binary vendors produce Motif toolkits .

[A FAQ is for "personal opinions" on these toolkits.  I don't think it is
appropriate to give such opinions through this particular posting, so I
haven't included any.]

Integrated Computer Solutions, Inc. (ICS) 201 Broadway, Cambridge, MA  02139
USA info@ics.com   617/621-0060

ICS provides binary distributions of Motif for Sun platforms.  Other platforms
are available as well, call or send mail for current info.  ICS also provides
in-depth programming support for Motif and additional tools such as Builder
Xcessory, a Motif interface builder, and the Widget Databook, a source for
third party, commercially available and supported widgets, class libraries,
and subsystems.

Quest (408-496-1900) sells kits for Suns, as well;

IXI offers Motif 1.2.4 for HP-UX, IBM AIX, SunOS and Solaris (SPARC and
Intel).  You can contact IXI at:

    IXI Corporation          IXI Limited          IXI Japan
    400 Encinal Street       Vision Park          24-3 Oohashi 2 Chome
    Santa Cruz               Cambridge            Meguro-ku
    California               CB4 4ZR              Tokyo 153
    CA 95061-1900            England              Japan

    Tel: (408) 427 7700      +44 (0)1223 518000   +81 3 5486 2155
    Fax: (408) 427 5407      +44 (0)1223 518001   +81 3 5486 1833

Advanced User Systems Pty Ltd is an Australian distributor of IXI Limited
(X.desktop, Motif, Wintif, Panorama) as a User Pack or Developer Pack, full
technical support, and updates:


    Advanced User Systems Pty Ltd           info@aus.oz.au
    2 Rudd Street
    North Ryde NSW 2113
    Australia
    Ph:  +61 (0)2 878-4777
    Fax: +61 (0)2 878-6951


Sun Microsystems is now shipping IXI Motif 1.2.2.

NSL (+33 (1) 43 36 77 50; requests@nsl.fr) offers kits for Sun4.

Carsten Hammer Schwindstr (chammer@POST.uni-bielefeld.de) reports that he
could not find Motif for a Sun3 from any vendor.


In Australia, Information Technology Consultants Pty Ltd has Motif 1.1.2 for
Sun Sparc 4.1 ( phone on (02) 360 6999, fax on (02) 360 6695 or e-mail to
motif@itcsyd.itc.oz.au)

SILOGIC (+33 61.57.95.95), 78 chemin des Sept Deniers - 31200 TOULOUSE FRANCE
sells Motif 1.1 and 1.2 on Sun4 machines. They also provide customers with
Motif maintenance and support, and do consulting on the X window System at
large, including software development.

Metro Link Inc., has Motif Runtime and Development packages available for a
variety of operating systems:  AT&T SVR3.2, ISC, Linux, LynxOS, QNX, SCO,
SINIX, Solaris, SunOS, SVR4, UnixWare, and Venix.  All versions ship with
shared library version of libXm.

Metro Link Inc.  4711 N. Powerline Rd., Ft. Lauderdale, Florida  33309 Voice:
+1.305.938.0283  Fax: +1.305.938.1982  Email: sales@metrolink.com

BIM (Fax : +32(2)759.47.95) offer Motif 1.1 for Sun-3, Sun-4, Sun-386i.
Includes shared libraries.

An OSF/Motif source license must be obtained from OSF before source can be
obtained from the Open Software Foundation. Call the Direct Channel Desk at
OSF at 617-621-7300 or email direct@osf.org for ordering information.  In
addition to the full Motif source, "option C" allows you to purchase source
for the window manager mwm to run on X terminals.

Bluestone offers Motif for $99.  Bluestone's  MWM is the compiled version of
OSF/ Motif for Sun/SPARC. It is plain vanilla Motif based on X11 and Xt
Intrinsics.  There is no license manager.  Platforms: Sun/OS 4.1+ and Solaris
V2.1,2.2. Contact: Bluestone @609-727-4600

-----------------------------------------------------------------------------
Subject: 19)  Is there a list of Motif bugs?

Answer: With each patch release of Motif shipped, there is a list of known
bugs provided.  The filename on the tape is "./OPENBUGS".  There is also a
list of all the issues closed/resolved in that patch.  That is found as part
of the "./README-1.1.n" (where n is the patch number) file.

These are the only OSF published lists.

No one else seems to publish a list.

-----------------------------------------------------------------------------
Subject: 20)+ Where can I get a Motif 1.2 Certification Checklist?

[Last modified: Apr 95]

Answer: Kevin Till (kev@osf.org) of OSF wrote: "The Checklist comes with the
OSF/Motif 1.2 Style Guide documentation.  It's in the Appendix B section."

-----------------------------------------------------------------------------
Subject: 21)  What is COSE and how does it relate to Motif?

[Last modified: Sept 94]

Answer:

        NOTE: This info dates back to a Nov. '93 conference.
        Most of the words should be credited to the lecturer,
        Nicholas J. Aiuto (nick@ps.quotron.com) of Cadence Design Systems, Inc.
        Any mistakes or inaccuracies are mine, however.
        I would appreciate updates and corrections...ksall@cen.com


COSE is Common Open Software Environment, a major interoperability effort
started by HP, Sun, Novell/UNIX System Labs (USL), IBM, and SCO, with over 70
other companies pledging their support. The COSE announcement was made in
March, 1993 and a "COSE CDE Conference" was held in San Jose in October, 1993.

CDE is the Common Desktop Environment component of COSE. CDE is "a
specification for components and services to give the UNIX desktop common and
consistent capabilities like those found in other widely used environments
(Mac, Windows)." [from class notes] CDE is not public domain; it will be
provided by major vendors, possibly at extra cost as unbundled s/w
approximately mid 1994.  CDE will be based on Motif 1.2 and X11R5, although
Motif 2.0 and X11R6 are expected around the same time. (CDE will be ported to
Motif 2.0 eventually.)

A CD-ROM was distributed at the October, 1993 conference, but this was "alpha"
s/w, strictly for evaluation purposes, not for development.

Another COSE/CDE Snapshot CD-ROM was released in April '94, available for HP,
IBM, Novell, and Sun platforms.

Overview
--------

Standards are to be defined in these areas:

        - desktop
        - networking
        - objects
        - graphics
        - system management

CDE Functional Groups:

    High Level:
        - Desktop Management
        - Productivity Tools

    Low Level:
        - GUI Display and Printing
        - Application Integration
        - "Guidelines": a 100+ pg. checklist which is a superset of Motif's

CDE Desktop Management
----------------------

 - Login Manager: like xdm
 - Session Manager: saving state based on ICCCM and HP's VUE [vuesession]
 - Workspace Manager: virtual screens; rooms; virtual win mgr
 - Front Panel: object and window management; access to favorite apps
 - File Manager: icon drag and drop
 - Application Manager
 - Style Manager: configure Session Mgr (colors, fonts, HOME session)

Productivity Tools
------------------

 - Text Editor: based on XmText widget; not very fancy
 - Icon Editor: color pixmaps; based on HP's vueicon; need 16 icons per app
 - Help Viewer: can access app help without running application
 - Mailer and Calendar: can talk to each other
 - Terminal Emulator: improvement on xterm
 - Calculator
 - Create "Action": something you tell your system to do and associate with
                   a specific icon (e.g., starting a favorite app); can also
                   tag a specific command line and add to your desktop

GUI Display and Printing
------------------------

 - Motif 1.2 with extras, X11R5
 - New widgets (subclasses of similar widgets to be in Motif 2.0):
        o  ComboBox
        o  SpinButton

 - dtksh: windowing Korn shell, a robust UNIX shell interface to X, Xlib, and
Xm
 - Application Builder: port of Sun's DevGuide [not yet available]
 - X Print Server and X Server Print Extension

Application Integration
-----------------------

 - Data Interchange
        o  Drag and Drop (DND): based on Motif 1.2 with improvements
        o  Bento container format:
                "Japanese lunchbox"
                compartmented container developed by Apple;
                stores compound document on disk;
                apps can find audio compartment, for example
                100-page document describes Bento
 - ToolTalk
        o  messaging/IPC facility developed by Sun
        o  CDE message sets (sample msgsd: iconify yourself, close down, etc.)
 - Actions
        o define what can be done with files or arbitrary data (e.g., audio)
 - Data Typing
        o define data classes for objects (e.g., PS file, C source code)

Guidelines
----------

 - Common Fonts (about 16): proportional, monospaced, with or without serif
 - Internationalization (I18N) compliance
 - Client/Server
        o Network execution model
        o end user model
        o system admin model: facilitates easy installation of new
                              CDE-compliant apps
        o ISV model
 - Certification Checklist: 100 pages; superset of Motif 1.2 Certif. Checklist


-----------------------------------------------------------------------------
Subject: 22)  Is there a CDE FAQ or newsgroup?

[Last modified: Feb 95]

Answer: The COSE FAQ is located at:

   http://proper.com:70/0/faqs-link/common-faqs/faqs/cde-cose-faq or
   http://www.cis.ohio-state.edu/hypertext/faq/usenet/cde-cose-faq/faq.html

There is also a newsgroup called news:alt.windows.cde

-----------------------------------------------------------------------------
Subject: 23)  What is PST?

[Last modified: Dec 94]

A.  Kristen Knotts <uunet!osf.org!kjk> writes:

PST stands for Pre-structured Technology.  This is a new process, which
evolved from the 1993 COSE (Common Open Software Environment) initiative, used
by the Open Software Foundation (OSF) to procure and deliver technology to the
industry more quickly than the existing Request For Technology (RFT) process.

For more information on OSF and its acronyms (e.g., PST, RFT, RFC), contact
OSF Direct (direct@osf.org) or literature-request@osf.org.

-----------------------------------------------------------------------------
Subject: 24)  Does OSF's PST process impact CDE evolution?

[Last modified: Dec 94]

A.  In response to some questions from Marc Prokop (prokop@acri.fr), Elizabeth
Connolly of Open Software Foundation wrote:


You're correct that CDE (1.0) was developed on Motif 1.2.  You're also
correct that OSF included in Motif 2.0 several extensions to Motif 1.2 that
were made by the CDE 1.0 implementors.  Despite OSF's inclusion of these
extensions, OSF is not involved in CDE 1.0 development.

As you may know, OSF has a new process, called the Pre-Structured
Technology (PST) process, for joint development projects.  Further
evolution of both CDE and Motif (that is, beyond CDE 1.0 and Motif 2.0)
is expected to be handled under this process.  In fact, a group of
companies is at work now on a PST proposal for submission to the OSF Board
of Directors.  Such a PST would provide for management of the
"compatibility" between Motif and CDE.

You could acquire more information about CDE 1.0 by querying one of
the companies involved in CDE 1.0 (HP, IBM, Novell, and Sunsoft.)


-----------------------------------------------------------------------------
Subject: 25)  Because of COSE, is Motif now in the public domain?

Answer: The *specification* for Motif is no longer controlled by OSF, but by
X/Open.  This does not affect the *implementation*. The implementation is
still in the hands of OSF, and will not be released into the public domain.
So no, the OSF source code will still only be available to those who buy a
source code license from OSF.

The specification does not include UIL or obsolete features (ie 1.0 bugs in
design), but these will continue to be supported by the OSF code.

-----------------------------------------------------------------------------
Subject: 26)  What is DCE?

[Last modified: Dec 94]

A.  From "The Free On-line Dictionary of Computing"
(http://wombat.doc.ic.ac.uk/) by Denis Howe <dbh@doc.ic.ac.uk>:

(DCE) An architecture consisting of standard programming interfaces,
conventions and server functionalities (eg. naming, distributed file system,
remote procedure call) for distributing applications transparently across
networks of heterogeneous computers. DCE is promoted and controlled by the
Open Software Foundation (OSF).

From Kristen Knotts <uunet!osf.org!kjk>:

NEWTON, MA, November 1, 1994 -- The Open Software Foundation today announced
the general availability of Release 1.1 of the Distributed Computing
Environment (DCE).  This release includes,

- Major new enhancements to system administration, including a consolidated
interface for administration throughout DCE, plus a capability allowing for
the remote start-up and shut-down of remote services;

- Enhancements to security, including a Generic Security Service API (GSSAPI)
which allows non-RPC based systems to take advantage of DCE security, extended
registry attributes allowing various proprietary systems to be  registered in
the DCE security registry, as well as security delegation and auditing
capabilities;

- Enhancements to internationalization which include standardized POSIX and
X/Open interfaces and provide character code set  interoperability and

- General performance enhancements.

Contact:  Jane Smeloff, Open Software Foundation, (617) 621-8997

----------------------------------------------------------------------------
END OF PART ONE

-----------------------------------------------------------------------------
Subject: 27)  Where can I get public domain Motif source?

Answer: You cannot.  Motif source is not publically available.  However, see
"Has anyone done a public domain Motif lookalike?"


-----------------------------------------------------------------------------
Subject: 28)  Are Motif code examples publically available?

[Last modified: Mar 95]

Answer: OSF has produced a list of which of the example programs can be
distributed. Call OSF Direct for a copy of it.  Most of the example programs
have been freed from distribution limitations so should be available.

Source code posted to comp.sources.x often uses Motif.

In addition, many Motif programs are available via anonymous ftp from
ftp.x.org. The following are listed alphabetically by author.  (See the
"BOOKS" topic.)

If you don't understand the URL notation below, see 'What is an URL?' subject.

Thomas Berlages's book:
    ftp://ftp.x.org/R5contrib/berlage.motif.tar.Z

Dan Heller's book:
    ftp://ftp.x.org/R5contrib/OReilly/motif/examples.tar.Z

Donald L. McMinds's book:
    ftp://ftp.x.org/R5contrib/mastering.motif.tar.Z and
    ftp://ftp.x.org/R5contrib/master.1.2.tar.Z

Jan Newmarch's book:
    ftp://ftp.x.org/R5contrib/newmarch.tar.Z

Jerry Smith's book:
    ftp://ftp.x.org/R5contrib/smith.ooxt.tar.Z

Doug Young's source code for the current editions of his several books:
    ftp://ftp.x.org/contrib/book_examples/young.cxx.tar.Z
    ftp://ftp.x.org/contrib/book_examples/young2.motif.tar.Z
    ftp://ftp.x.org/contrib/book_examples/young.debug.tar.Z

Doug Young's examples for OLDER editions of his books:
    ftp://ftp.x.org/R5contrib/young.cxx.tar.Z
    ftp://ftp.x.org/R5contrib/young.motif.tar.Z
    ftp://ftp.x.org/R5contrib/young.motif2.tar.Z
    ftp://ftp.x.org/R5contrib/young.tar.Z

Examples appearing in "The X Resource" (by O'Reilly and Associates) appear
organized by issue in the directory:
    ftp://ora.com/pub/examples/xresource or:
    ftp://ftp.uu.net/published/oreilly/xresource

Examples from O'Reilly and Associates books can be found in subdirectories of:
    ftp://ora.com/pub/examples/xbook or:
    ftp://ftp.uu.net/published/oreilly/xbook


Also from a list maintained by: qizeng@acsu.buffalo.edu (Qi Y. Zeng) FTP sites
for X/MOTIF source code examples:

    ftp://ftp.uu.net/published/books/brain.motif.tar.Z
    ftp://ftp.uu.net/published/books/pwm-examples.tar.Z

Marshall Brain's Motif tutorials can be found at:

    http://www.iftech.com/

Does anyone know what this is?
    ftp://ftp.x.org/R5contrib/pwm-xmpl.tar.Z

-----------------------------------------------------------------------------
Subject: 29)  Has anyone done a public domain Motif lookalike?

[Last modified: Oct 94]

Answer: The specification is available (AES), and the validation suite can be
bought, but no-one has taken up the challenge.  There are some commercial
lookalikes (Looking Glass and Neuron Data), but no workalikes.

Applications that follow the Style Guide might be certified Motif-compliant
through the checklist process, even though they're not using OSF/Motif
binaries.

Tcl/Tk is available for ftp from allspice.berkeley.edu, and although
implemented without Xt, has a "strict Motif" mode.

Strom Sytems (18666 Redmond Way o-2118, Redmond, WA 98052-6725) have a Simple
Toolkit for X-Windows (sic) that appears to follow the Style Guide even though
it doesn't quite look like Motif.

MOOLIT is a USL product that can be runtime switched between the Sun Open Look
and Motif appearance.  It is based on  OLIT 4i.

Interviews is a C++ based product with appearance similar to Motif.  A ftp-
able version is on interviews.stanford.edu.  A commercial version is available
as InterViews Plus.

Simon J. Lyall (simon@darkmere.midland.co.nz) reported about a package called:
Xu-lib & Widget Set- a library & widget set to "emulate" the look&feel and the
programming interface of OSF/Motif. Contact the author Udo Baumgart
(U.BAUMGART@ldb.han.de) for details.

-----------------------------------------------------------------------------
Subject: 30)  Does anyone from OSF pay attention to our questions/suggestions?

Answer: Yes, and they quite often post answers too. But they may not respond
to *your* problem because they have other things to do as well.  This
newsgroup is not run by OSF, and has no formal connection with OSF.  OSF is a
member-driven company.  The membership (and anyone can be a member) provides
the primary input for future development of Motif.

-----------------------------------------------------------------------------
Subject: 31)  Does OSF have an application compliance validation service?

Answer: They have a checklist and a certification process which you can
request from them.  Ask for the Level One Certification Checklist.  The
process is one of self-certification.  It tests only the appearance and
behavior of the application against Motif style.  The product will also be put
in the OSF reference listing.  There's a one-time fee of $250.  According to
the master license agreement, you can't use any OSF identifying mark unless
you have done a certification.

-----------------------------------------------------------------------------
Subject: 32)  What is the motif-talk mailing list?

Answer: The motif-talk mailing list is only for those who have purchased a
Motif source code license. You can be placed on this list by emailing to
motif-talk-request@osf.org, citing your Company name and source license
number.

-----------------------------------------------------------------------------
Subject: 33)  What MIT patches do I use, and when do I use fix-osf?

Answer: The Motif 1.1.0 tape contains MIT patches 1-14. Apply these and any
others you can get.  If your MIT patch level only goes up to fix-16, you also
need to apply fix-osf.  Fix-osf was an emergency patch for a problem that
existed when the Motif 1.1 tape was cut, The MIT fix-17 completely superseded
osf-fix, so if you have applied fix-17 do not apply fix-osf.  The 1.1.1 tape
contains MIT fixes 15-18, as well as an OSF-developed fix that deals with a
subtle bug in the Selection mechanism of the Intrinsics.  Most people will
have fix-15 to 18 by now; if you don't have them:

        Back out fix-osf if you have applied it
        Apply fix-15 to 18
        Apply fix-osf-1.1.1

The Selection fix was submitted to MIT, who came up with a different fix.  It
will not be made into an R4 fix but should be in R5. The MIT fix was posted to
motif-talk.

-----------------------------------------------------------------------------
Subject: 34)  How does Motif work with X11R5?

Answer: Motif 1.1.X is only intended to be built with X11R4.  Motif 1.2.X is
for X11R5.  however, Motif 1.1.4 has been set to also work with X11R5.

For Motif 1.1.1, 1.1.2 and 1.1.3 you will need to compile Xlib and Xt with a
MOTIFBC flag set to YES (page 8, section 3.3 of the R5 release notes), or
you'll also have a link problem (LowerCase) and a fatal run time problem
(XContext manager).  If your applications come up with "Unknown keysym name:
osfActivate" errors, check the variable ProjectRoot. The name
/$PROJECTROOT/lib/XKeysymDB will have been wired into your Xlib.

In Motif 1.1.0, XtCallCallback uses NULL as the first argument instead of a
widget ID. This was ok under R4, but must be changed in the source for R5. It
was changed by OSF from Motif 1.1.1 onward.

Mrm won't work at all (can't link since it uses an X private variable that has
disappeared in R5).  There is an MIT patch that may fix this??

-----------------------------------------------------------------------------
Subject: 35)  How can I find which version of Motif I have?

[Last modified: October 93]

Answer: The macro XmVERSION gives you the version number.  The macro
XmREVISION gives you the major revision number.  The macro XmVersion combines
these e.g. a value of 1002 is Motif 1.2.

To find the minor revision number is not easy.  From Motif 1.1.3 onwards, try
this:

   'strings `which mwm` | grep OSF'.

to get the full version number e.g. 1.1.3.

In Motif 1.2, the macro XmUPDATE_LEVEL was added to give the minor revision
number.

+ ( above also known as the patch level).  + In addition there was a macro
string added,  XmVERSION_STRING which has all + the above info in a char
string.

+ grepping through a strings of libXm.a for OSF can also sometime give +
something useful.

Version X11R6 is due out in spring of 1994 (april 15?)

thanks to hops@x.co.uk Mike Hopkirk


-----------------------------------------------------------------------------
Subject: 36)  TOPIC: MOTIF and the WORLD WIDE WEB (WWW)

-----------------------------------------------------------------------------
Subject: 37)  Where's an HTML version of the Motif FAQ on World Wide Web
(WWW)?

[Last modified: Feb 95]

Answer: An automatically generated HTML version of this Motif FAQ can be found
at WWW URL:

    http://www.cis.ohio-state.edu/hypertext/faq/usenet/motif-faq/top.html

For a searchable version of the Motif FAQ and other FAQs (via WAIS), see:

    http://www.cs.ruu.nl/cgi-bin/faqwais

The WAIS search is great way to find a topic which may appear in several FAQs
(Motif, X, Xt, Widget FAQ, etc.)

-----------------------------------------------------------------------------
Subject: 38)* What are other interesting WWW URLs which are related to Motif?

[Last modified: Apr 95]

Answer:

        NOTE: In subsequent postings of this FAQ, this answer will
        either not be updated or will be removed. Instead, I have
        created a Web page called "MW3: Motif on the World Wide Web"
        ( http://www.cen.com/mw3/ ). See the next subject!

Thanks to Sonja Kowalewski for several updates.

See http://www.x.org/
for the X Consortium welcome document (which contains links to getting X
source code, intro to the X Consortium, X Technical Conference, the public ftp
file server (ftp.x.org), and more.

See http://www.nads.de/EXUG/EXUG.html
for the EXUG (European X User Group) home page.

See http://www.osf.org:8001
for the OSF Home Page.

See http://www.osf.org:8001/general/members.html
for links to several OSF Sponsor and Member Web Servers.

See http://www.osf.org:8001/motif/list_features.html
for a "Complete list of 2.0 features".

See http://www.osf.org:8001/membserv/
OSF End User Forum and OSF Member Services.

See http://www.osf.org:8001/motif/MotifFAQ.html
for "OSF ANSWERS FREQUENTLY-ASKED OSF/MOTIF(R) QUESTIONS", including OSF/Motif
Release 2.0 Questions, OSF/Motif Licensing. and OSF/Motif and the Common
Desktop Environment.

See http://riwww.osf.org:8001/
for the OSF Research Institute home page.

See http://www.let.rug.nl/FWF/
for the Free Widget Foundation (FWF) Home Page.

See http://www.ora.com/
for O'Reilly & Associates, Inc. Home Page

See http://freedom.lm.com/freedom.html
for Freedom Software ("Everything under the Sun regarding Motif").

See http://freedom.lm.com/review.html
for Freedom Software's page with links to a review of Motif builders, list of
Motif interface builders, commerical widgets, etc.

See http://www.nads.de/EXUG/FAQ.html
EXUG's FAQ list (X, Xt, Widgets, Motif, InterViews, Fresco, etc.)

See file://134.130.161.30/arc/pub/unix/html/motifcorner.html
for Harry's Motif Programming Corner (tips and tricks, including code).

See http://www.wri.com/~cwikla/widget/
for John L. Cwikla's Widget FAQ Home Page (Composite Widgets, Non-Composite
Widgets, Motif 1.1 Compatible, Motif 1.2 Compatible, Athena Compatible, FWF
Widget Set, By Author, Shareware Widgets, Commercial Widgets).

See http://www.wri.com/~cwikla/xlopedia/
for Xlopedia (by John L. Cwikla) to become the "definitive source on X
information."

See http://www.cs.cmu.edu:8001/afs/cs.cmu.edu/user/bam/www/toolnames.html
for Brad A. Myers' `User Interface Software Tools' list (which is not limited
to Motif tools).

See http://www.eit.com/software/winterp/winterp.html
for WINTERP 2.0 Home Page (Niels Mayer).

See http://www.ics.com/
for information about products sold by Integrated Computer Solutions.
Included are product descriptions and lots of Frequently Asked questions (and
answers!).

See
http://akebono.stanford.edu/yahoo/Computers/Operating_Systems/Windowing_Systems/X_Window_System/Motif/
for a collection of links to Motif info (including some of the above).

See http://www.cm.cf.ac.uk/Dave/X_lecture/X_lecture.html
for David Marshall's Motif tutorial with source code and illustrations.

See http://www.aiai.ed.ac.uk/~jacs/wxwin.html
for wxWindows information (toolkit for platform-independent GUI programming in
C++).

See http://landru.unx.com/SIGS/TXJ/docs/txjhome.html
for TXJ (The X Journal) ONLINE". This page has a number of interesting links
including one to the X Bibliography.

See http://landru.unx.com/SIGS/TXJ/docs/bib/
for the X Bibliography.

-----------------------------------------------------------------------------
Subject: 39)+ Is there a central location for Motif information on the WWW?

[Last modified: Apr 95]

Answer: ksall@cen.com has created a Web page called

                "MW3: Motif on the World Wide Web"
                http://www.cen.com/mw3/

which contains numerous URL links to Motif and X11 topics such as:

    o FAQs: Motif, COSE, Widget, Xt, X11, Xapps, etc.
    o Widgets, Toolkits, Libraries, and GUIs
    o Code Examples and Tutorials
    o Organizations
    o Tips and Pointers
    o Publications and References
    o Usenet Newsgroups
    o Personal Home Pages

MW3 will be updated very frequently; the "Last updated" timestamp appears at
the bottom of the page. There is also a feedback form for submitting
corrections and suggestions for additions.

Both MW3 and the Motif FAQ are sponsored by Century Computing, Inc.

                http://www.cen.com/


-----------------------------------------------------------------------------
Subject: 40)* Which X and Motif developers have their own home page URLs?

[Last modified: Apr 95]

Answer: This subject provides an opportunity for me to thank some of you for
your invaluable contributions (direct or indirect) to this FAQ and, at the
same time, to make it easy for the X and Motif community to contact you.
Contributions and corrections appreciated. It is also a way to keep a current
contact list for some of you who have moved to other companies.

Requirements for inclusion in this list:

    (a) have at least 2 contributions in the Motif, X, or Xt FAQ; or
        work directly for OSF or the X Consortium;
    (b) have your own home page (not just their company's home page);
    (c) submit the following info in this 4-line format:

            First_name Last_name
            Your_home_page_URL
            mailto:email_address
            which FAQ your name/address appears (Motif, X, or Xt)

        NOTE: Be sure to put "For Motif FAQ" as your email
        subject. Send it to ksall@cen.com mailto:ksall@cen.com

X and Motif developer home pages listed in alphabetical order by last name:

John L. Cwikla http://www.wri.com:80/~cwikla/ mailto:cwikla@wri.com

Daniel Dardailler http://www.x.org:80/people/daniel/ mailto:daniel@x.org

Kaleb S. Keithley http://www.x.org/people/kaleb/kaleb.html mailto:kaleb@x.org

Ken Lee http://www.rahul.net/kenton/ mailto:kenton@rahul.net

Doug Rand http://reality.sgi.com/employees/drand/ mailto:drand@sgi.com

Ralph R. Swick http://www.x.org/people/swick.html mailto:swick@x.org

-----------------------------------------------------------------------------
Subject: 41)  Where can I get the HTML widget used in Mosaic?

[Last modified: Oct 94]

Answer:

From Ken Sall (ksall@cen.com): The HTML (HyperText Markup Language) widget is
part of the NCSA Mosaic source code, located in the directory: Mosaic/Mosaic-
source at ftp.ncsa.uiuc.edu (URL: ftp://ftp.ncsa.uiuc.edu/Mosaic/Mosaic-
source/ )

For example, one version is: Mosaic-2.4.tar.gz.  When you uncompress (gunzip)
and untar the source, look in the directory libhtmlw for HTML.c, HTML.h,
HTMLP.h, etc.

For documentation, see
http://www.ncsa.uiuc.edu/SDG/Software/Mosaic/Docs/htmlwidget.html .


For information on using Mosaic by remote control, see
http://www.ncsa.uiuc.edu/SDG/Software/Mosaic/Docs/remote-control.html

Here are more details from ah627@FreeNet.Carleton.CA (Samuel Effah):

To the numerous request for the NCSA HTML widget information.

Everything not already copyrighted by CERN is copyrighted by NCSA (including
the contents of the libhtmlw, libnet, libXmx, and src directories, but not
including the contents of libdtm, which is entirely public domain). ...

 * The UI grants you (hereafter, Licensee) a license to use the Software    *
 * for academic, research and internal business purposes only, without a    *
 * fee.  Licensee may distribute the binary and source code (if released)   *
 * to third parties provided that the copyright notice and this statement   *
 * appears on all copies and that no charge is associated with such         *
 * copies.                                                                  *
 *                                                                          *
( you can read more about the copyright in the Mosaic source code ).


Documentation on the HTML widget can be located at:

  http://www.ncsa.uiuc.edu/SDG/Software/Mosaic/Docs/htmlwidget.html
  ( it's on the older version, I think Mosaic1.x )

For starters, you can compile directory Mosaic2.4/libhtmlw for the widget.
Using: To create widget:
  htlmWid = XtCreateManagedWidget( "htlmWid",
htmlWidgetClass,                                      parent,
                                     htlmArgs,
                                     XtNumber( htlmArgs ));

Callback for anchors:
  XtAddCallback(htlmWid, WbNanchorCallback, htmlRef, NULL);

where htmlRef() looks like:

static void htmlRef(widget, client_data, call_data) Widget widget; XtPointer
client_data; WbAnchorCallbackData* call_data; {
        buffer = readHTMLFile( call_data->href );
        XtVaSetValues( widget, WbNtext, buffer, NULL ); }

where readHTMLFile() is

char * readHTMLFile( in_file ) char *in_flie; {
  /* function to read a file and return its content, given
     the file's name */ }


I think this is enough to start you off.

Thanks to: Samuel Effah

-----------------------------------------------------------------------------
Subject: 42)  TOPIC: BOOKS and JOURNALS

-----------------------------------------------------------------------------
Subject: 43)  Is there a bibliography available?

[Last modified: Mar 95]

Answer: The X Bibliography, originally maintained by Ken Lee (
http://www.rahul.net/kenton/ ), is now maintained by the editor of "The X
Journal" ( http://landru.unx.com/SIGS/TXJ/docs/txjhome.html ) Steve Mikes,
uunet.uu.net!topgun!smikes.  Steve regularly posts to comp.windows.x and
ba.windows.x a list of reference books and articles on X and X programming.
The X FAQ from comp.windows.x reproduces part of this list.

The complete X bibliography is available from these directory URLs:

        ftp://ftp.x.org/contrib/docs/ (several suffixes)
        http://landru.unx.com/SIGS/TXJ/docs/bib/ (several suffixes)

-----------------------------------------------------------------------------
Subject: 44)* Is there a Motif tutorial?

[Last modified: Apr 95]

Answer: See http://www.cm.cf.ac.uk/Dave/X_lecture/X_lecture.html
for a hypertext Motif tutorial (by David Marshall) with source code and
illustrations.

Marshall Brain at brain@adm.csc.ncsu.edu posted a set of simple and useful
Motif tutorials at http://www.iftech.com/ .

Jan Borchers <job@ira.uka.de> writes about his Xmtutor:

A free version of "Xmtutor", a menu-driven Motif application that contains an
interactive tutorial about programming with Motif with many executable
examples, is available via anonymous ftp from ftp.uni-stuttgart.de, in:
/pub/X11/programming/xmtutor-1.2/.

Xmtutor is very useful to learn Motif easier than with a book, and it is a
convenient Quick Reference and resource-settings testbed for Motif application
developers.

It has been tested on SUN Sparcs (SunOS 4.1) and DEC Alphas (OSF/1 1.3a), but
should be working OK on most other Unix / X11R4/R5 / Motif 1.1/1.2 systems.

The demo version contains all the information to get you started with Motif,
and upon registration, which costs 49 DM, you get the complete tutorial,
describing all widgets, other topics such as inter-client communication,
Compound Strings, etc., as well as a formatted TeX file of the tutorial to
print out, which gives you a complete book about Motif.

-----------------------------------------------------------------------------
Subject: 45)  What books are available for Motif programmers?

[Last modified: Feb 95]

Answer:

        NOTE: This answer is always "under construction". If you are the
        author of, or an avid fan of, a book not listed here, send mail
        to ksall@cen.com.  Corrections especially regarding new editions
        and ISBN's would be greatly appreciated. Anyone have ISBNs on
        the Motif 2.0 editions of the Prentice Hall books?


For Motif 2.0, see also the subject "Where can I find Motif 2.0
documentation?" as Prentice Hall has published the Motif 2.0 documentation.
Please send ksall@cen.com the ISBNs if you know them. Thanks!

First, we present the official books from OSF. Then we include an alphabetical
listing of selected books. (See the following question for Xt and Xlib books.)


The "official" OSF/Motif books are:

OSF/Motif Programmers Guide, Prentice-Hall ISBN 13-640525-8 (Motif 1.0), ISBN
0-13-640681-5 (Motif 1.1), ISBN 0-13-643107-0 (Motif 1.2) (NB: This makes use
of the demo programs that you get with a Motif source license.  The programs
are not included and may or may not be available on your system.)

OSF/Motif Programmers Reference Manual, Prentice-Hall ISBN 13-640517-17 (Motif
1.0), ISBN 0-13-640616-5 (Motif 1.1), ISBN 0-13-643115-1 (Motif 1.2) You will
need this for the system calls.

OSF/Motif Style Guide, Prentice-Hall 13-640491-X (Motif 1.0), ISBN 0-13-
640673-4 (Motif 1.1), ISBN 13-643123-2 (Motif 1.2) You will need this to get
some idea of how to write programs with the correct `look and feel'.


Next is an alphabetical listing (by author) of a number of essential books not
by OSF but in wide use. I will attempt to keep this list current if the
authors (or their readers) send me updates as new editions become available.

Barkakati, Nabajyoti, X Window System Programming, SAMS. ISBN 0-672-22750-9.
This contains a section on Motif.

Berlage, Thomas Berlage, OSF/Motif: Concepts and Programming, Addison-Wesley,
UK, 1991. ISBN 0-201-55792-4.

Ferguson, Paula & Brennan, David, Motif Reference Manual, Volume 6B, O'Reilly
& Associates, 1st Edition June 1993, 920 pages, ISBN: 1-56592-038-4.  "Dan
Heller's Motif Programming Manual [Volume 6A, below] has long been considered
the most authoritative and insightful work on Motif. Now, with the addition of
this companion reference manual, programmers can dispense completely with the
original OSF documentation. In addition to covering the entire Motif toolkit,
this book also covers OSF's "User Interface Language" or UIL, and the Motif
Resource Manager (MRM) functions used to tie together applications with user
interfaces defined in UIL."

Flanagan, David, Motif Tools: Streamlined GUI Design and Programming with the
Xmt Library, O'Reilly & Associates, 1st Edition August 1994, 1024 pages, ISBN:
1-56592-044-9.  "Motif Tools and the Xmt programming library that accompanies
it on CD-ROM offer resources to empower Motif programmers and dramatically
speed up application development with the X Toolkit and Motif.  The Xmt
library contains nine custom widgets and over 250 convenience routines that
handle many tricky aspects of GUI programming. The Layout widget, for example,
is an incredibly flexible manager widget that makes the confusing and awkward
Motif Form widget a thing of the past. And a single Menu widget will create an


entire pulldown menu system for your application by reading a special menu
description from a resource file or your C code. Other features of the library
dramatically simplify the use of Motif XmStrings, automate the transfer of
data between the fields of an application's data structures and the widgets of
its dialog boxes, and make it possible to automatically create a widget
hierarchy completely described in a resource file."

Heller, Dan, Ferguson, Paula M. & Brennan, David, Motif Programming Manual,
Volume 6A, O'Reilly & Associates, 2nd Edition February 1994, ISBN: 1-56592-
016-3.  "The Motif Programming Manual describes how to write applications
using the Motif toolkit from the Open Software Foundation (OSF). The book goes
into detail on every Motif widget class, with useful examples that will help
programmers to develop their own code. Anyone doing Motif programming who
doesn't want to have to figure it out on their own needs this book." Although
updated for Motif 1.2, it is still usable with Motif 1.1.

Johnson, Eric F. and Kevin Reichard, Power Programming Motif, second edition,
MIS: Press, New York, NY, 1993. ISBN 1-55828-322-6.

Johnson, Eric F. and Kevin Reichard, Professional Graphics Programming in the
X Window System, MIS: Press, New York, NY, 1993. ISBN 1-55828-255-6.  This
book covers difficult topics such as combining non-default visuals and color
overlay planes with Motif applications.

Newmarch, Jan, The X Window System and Motif - A Fast Track Approach.
Addison-Wesley, ISBN 0-201-53931-4.  As the long-time maintainer of this Motif
FAQ, Jan's book is bound to contain unusual and useful insights.

O'Reilly and Associates publishes an entire series of books concerning
different aspects of the X Window System, including a number of books about
Motif, as well as books on Xlib, Xt, and PEX. In this FAQ, we list O'Reilly
books by the authors' names. For a summary of all of O'Reilly's X11 series,
see:

    ftp://ftp.x.org/contrib/docs/Xbibliography.OReilly

As of this writing, however, the above list was somewhat out-dated.
Therefore, telnet to gopher.ora.com, login as "gopher", select "Detailed
Product Descriptions", and then select from the menu. WWW users can open this
URL:

    gopher://gopher.ora.com/11/descriptions/

Sebern, Mark "Building OSF/Motif Applications: A Practical Introduction". The
ISBN is 0-13-122409-3. Prentice-Hall. The book uses a large, realistic Motif
application (a program to make slides for presentations) to demonstrate the
use of Motif features. Both UIL and toolkit calls are discussed, though UIL is
featured, both in the examples and in a reference chapter.

Smith, Jerry, Designing X Clients with Xt/Motif, ISBN 1-55860-255-0 Morgan
Kaufmann Publishers This adopts a higher-level approach to many of the objects
that commonly occur in Motif but are not in the Motif API.

Young, Douglas, "Object-Oriented Programming with C++ and OSF/Motif", Prentice
Hall, 1992. ISBN 0-13-630252-1. Source code is
ftp://ftp.x.org/contrib/book_examples/young.cxx.tar.Z

Young, Douglas, "The X Window System: Programming and Applications with Xt,
Motif Edition", Prentice Hall, 1994. ISBN 0-13-123803-5. This is the classic
tutorial from 1989 updated for Motif 1.2.  Source code is
ftp://ftp.x.org/contrib/book_examples/young2.motif.tar.Z

Young, Douglas, "Motif Debugging and Performance Tuning", Prentice Hall, 1995.
ISBN 0-13-147984-9. Source code is
ftp://ftp.x.org/contrib/book_examples/young.debug.tar.Z

If you want to learn about UIL, one source is the "Motif Programmers's Guide"
from Prentice-Hall.  However, excellent UIL coverage appears in the O'Reilly
and Associates books "Motif Programming Manual, Volume 6A" by Dan Heller and
Paula M. Ferguson and in "Motif Reference Manual, Volume 6B" by Paula M.
Perguson with UIL Material by David Brennan. (Yes, 6A and 6B were worth the
wait!)

-----------------------------------------------------------------------------
Subject: 46)  Which Xt and X books would also be helpful?

[Last modified: Feb 95]

Answer: You will also need books and references on Xt and Xlib, such as:

Asente, Paul J., and Swick, Ralph R., X Window System Toolkit, The Complete
Programmer's Guide and Specification, Digital Press, 1990.  The Xt bible. A
treasury of information, excellent and invaluable.  Distributed by Digital
Press, ISBN 1-55558-051-3, Digital Press order number EY-E757E-DP; and by
Prentice-Hall, ISBN 0-13-972191-6.

Cutler, Ellie, Gilly Daniel, and O'Reilly, Tim, The X Window System in a
Nutshell, O'Reilly & Associates, 2nd Edition April 1992, 424 pages, ISBN: 1-
56592-017-1.  A quick reference guide to Xlib functions datatypes and events,
Xt functions and datatypes, and the standard X clients.  The second edition is
expanded and covers X11R4 and X11R5.

Flanagan, David, Programmer's Supplement for R5 of the X Window System,
O'Reilly & Associates, 1991, ISBN: 0-937175-86-2.  A programmer's guide to all
the new features in X11R5, with reference pages for the new functions.
[NOTE: Out-of-print; material incorporated in recent editions of Volumes 1, 2,
4 and 5. X11R6 supplement is in the works.]

Flanagan, David, Editor, X Toolkit Intrinsics Reference Manual, Volume 5,
O'Reilly & Associates, 3rd Edition April 1992, 916 pages, ISBN: 1-56592-007-4.
"The X Toolkit Intrinsics Reference Manual is a complete programmer's
reference for the X Toolkit. It provides reference pages for each of the Xt
functions as well as the widget classes defined by Xt and the Athena widgets.
This volume is based on Xt documentation from the X Consortium and has been
re-edited, reorganized, and expanded...  The third edition of Volume 5 has
been completely revised. In addition to covering Release 4 and Release 5 of X,
all the man pages have been completely rewritten for clarity and ease of use,
and new examples and descriptions have been added throughout the book."

Mui, Linda and Pearce, Eric, X Window System Administrator's Guide, Volume 8,
O'Reilly & Associates, 1st Edition October 1992, CD-ROM Released May 1993,
ISBN: 1-56592-052-X (with CD-ROM) "This book is the first and only book
devoted to the issues of system administration for X and X-based networks,
written not just for UNIX system administrators but for anyone faced with the
job of administering X (including those running X on stand-alone
workstations)..." A book for X system administrators, covering XDM, security,
font management, X terminals, building X, etc.  Available with a CD-ROM
containing the complete X source code.

Nye, Adrian, Xlib Programming Manual, Volume 1, O'Reilly and Associates, 3rd
Edition July 1992,  824 pages, ISBN: 1-56592-002-3.  "Updated to cover X11
Release 5, the Xlib Programming Manual is a complete guide to programming the
X library (Xlib), the lowest level of programming interface to X. It includes
introductions to internationalization, device-independent color, font service,
and scalable fonts. Includes chapters on: X Window System concepts, A simple
client application, Window attributes, The graphics context, Graphics in
practice, Color, Events, Interclient communication, Internationalization, The
Resource Manager, A complete client application, Window management, and Other
programming techniques."

Nye, Adrian, Editor, Xlib Reference Manual, Volume 2, O'Reilly & Associates,
3rd Edition June 1992, ISBN 1-56592-006-6.  Contains reference pages, derived
from the MIT specification, for all Xlib functions.  The third edition covers
X11R4 and X11R5, including all the new internationalization and Xcms (Color
Management System) functions.

Nye, Adrian & O'Reilly, Tim, X Toolkit Intrinsics Programming Manual, Motif
Edition, Volume 4M, O'Reilly and Associates, 2nd Edition August 1992, 674
pages, ISBN: 1-56592-013-9.  "Volume 4 is a complete guide to programming with
the X Toolkit Intrinsics, the library of C language routines that facilitates
the design of user interfaces with reusable components called widgets.  It
provides concepts and examples that show how to use the various X Toolkit
routines. The first few chapters are devoted to using widgets; the remainder
of the book covers the more complex task of writing new widgets.  Volume 4 is
available in two editions. The Motif Edition uses the Motif 1.2 widget set in
examples, and covers X11 Release 5."

Quercia, Valerie & O'Reilly, Tim, X Window System User's Guide, Motif Edition,
Volume 3M, O'Reilly and Associates, 2nd Edition January 1993, 956 pages, ISBN:
1-56592-015-5.  "The X Window System User's Guide, Motif Edition orients the
new user to window system concepts and provides detailed tutorials for many
client programs, including the xterm terminal emulator and the window manager.
Building on this basic knowledge, later chapters explain how to customize the
X environment and provide sample configurations.  This alternative edition of
the User's Guide highlights the Motif window manager, for users of the Motif
graphical user interface.  Revised for Motif 1.2 and X11 Release 5."

Scheifler, Robert W., and Gettys, James, X Window System, The Complete
Reference to Xlib, X Protocl, ICCCM, XLFD. Digital Press, 1992. The Xlib
bible.  Third edition covers X11R5. ISBN 1-55558-088-2, Digital Press order
number EY-J802E-DP.

For those interested in PHIGS and PEXlib, O'Reilly & Associates also publishes
several books on these topics. See:

    gopher://gopher.ora.com/11/descriptions/prox

-----------------------------------------------------------------------------
Subject: 47)  Are there books for X11R6 yet?

[Last modified: Feb 95]

Answer: Check the X FAQ at:

    ftp://ftp.x.org/contrib/faqs/FAQ or
    http://www.cis.ohio-state.edu/hypertext/faq/usenet/x-faq/top.html

Also O'Reilly and Associates have a mini-FAQ regarding their plans for X11
Release 6 books:

    http://nearnet.gnn.com/gnn/bus/ora/news/r6.html

-----------------------------------------------------------------------------
Subject: 48)  What relevant journals are available?

[Last modified: Mar 95]

Answer:

"The X Journal" is published bimonthly by SIGS Publications, 212-274-0640.
Editorial information: editors%topgun@uunet.uu.net, editors@unx.com. The WWW
URL for "TXJ ONLINE" is:

    http://landru.unx.com/SIGS/TXJ/docs/txjhome.html

"The X Resource: A Practical Journal of the X Window System" is published
quarterly by O'Reilly and Associates, 800-998-9938.  Editorial information:
Paula Ferguson (paula@ora.com).  In addition to the valuable articles which
appear in regular issues, the January issue of each year (issues 1, 5, 9, 13,
etc.) contains the proceedings of the Annual X Technical Conference (from
1992, 1993, 1994, and 1995, respectively) sponsored by the X Consortium.  An
on-line Table of Contents per issue can be accessed via gopher.  Telnet to
gopher.ora.com, login as "gopher", select "Detailed Product Descriptions", and
then "X Resource". Alternatively, the WWW URL is:

    gopher://gopher.ora.com/11/descriptions/xres/

Source code examples published in "The X Resource" appear organized by issue
in the directory:

    ftp://ftp.ora.com/pub/examples/xresource/

See the index file:

    ftp://ftp.ora.com/pub/examples/xresource/Index


-----------------------------------------------------------------------------
Subject: 49)  TOPIC: MWM and the SHELL WIDGET

-----------------------------------------------------------------------------
Subject: 50)  What is the difference between Motif and mwm?

Answer: mwm is a window manager. Motif itself is made up of four parts: a
User-Interface Guideline, an API toolkit of `C' routines which helps in the
building of applications which conform to the Guideline, the window manager
mwm, and a language UIL which is designed to ease user interface development.
In general mwm will run an application built with any X-windows API, and in
general an application built using the Motif toolkit will run under any window
manager.


-----------------------------------------------------------------------------
Subject: 51)  Does anyone have an alternative set of 3-D defaults for a
monochrome screen?

Answer: This is obviously a matter of taste. Some alternatives suggested
include

!Benjamin Schreiber, bs@osf.osf.org, bs@cs.brandeis.edu
Mwm*foreground:                 black           ! Actually, when a window is
Mwm*background:                 white           ! deactivated, the background
Mwm*backgroundPixmap:           50_foreground   ! becomes white, insted of
Mwm*topShadowPixmap:            white           ! 50% foreground (grey)

Mwm*activeForeground:           black
Mwm*activeBackground:           white
Mwm*activeBackgroundPixmap:     50_foreground
Mwm*activeTopShadowPixmap:      white

Mwm*menu*backgroundPixmap:      background
Mwm*menu*topShadowPixmap:       50_foreground

Mwm*title*foreground:                   black
Mwm*title*background:                   white
Mwm*title*backgroundPixmap:             white
Mwm*title*topShadowPixmap:              50_foreground
Mwm*title*activeForeground:             white
Mwm*title*activeBackground:             black
Mwm*title*activeBackgroundPixmap:       black
Mwm*title*activeBottomShadowPixmap:     50_foreground

Mwm*feedback*backgroundPixmap:          white

or

! From: tsang@isi.com (Kam C. Tsang)
Mwm*background:                      White
Mwm*activeBackground:                White
Mwm*activeBackgroundPixmap:          25_foreground
Mwm*foreground:                      Black
Mwm*activeForeground:                Black
Mwm*menu*background:                 white
Mwm*menu*foreground:                 black
xterm*Foreground:                    black
xterm*Background:                    white


or

! From: ucsd.edu!usc!snorkelwacker!paperboy!yee  (Michael K. Yee)
Mwm*cleanText:                          True

Mwm*activeBackground:           white
Mwm*activeForeground:           black
Mwm*background:                 white
Mwm*foreground:                 black

Mwm*client*activeBackgroundPixmap:      50_foreground
Mwm*client*activeTopShadowPixmap:       foreground
Mwm*client*activeBottomShadowPixmap:    background

!Mwm*client*background:                 white
!Mwm*client*foreground:                 black
Mwm*client*backgroundPixmap:            75_foreground
Mwm*client*topShadowPixmap:             foreground
Mwm*client*bottomShadowPixmap:          background

!Mwm*feedback*background:               white
!Mwm*feedback*foreground:               black
Mwm*feedback*backgroundPixmap:          50_foreground
!Mwm*feedback*topShadowPixmap:          25_foreground
!Mwm*feedback*bottomShadowPixmap:       background

!Mwm*menu*background:                   white
!Mwm*menu*foreground:                   black
Mwm*menu*backgroundPixmap:              foreground
!Mwm*menu*topShadowPixmap:              foreground
!Mwm*menu*bottomShadowPixmap:           background

!Mwm*icon*background:                   white
!Mwm*icon*foreground:                   black
Mwm*icon*activeBackgroundPixmap:        50_foreground
Mwm*icon*activeBottomShadowPixmap:      foreground
Mwm*icon*backgroundPixmap:              75_foreground


-----------------------------------------------------------------------------
Subject: 52)  How can I modify the Motif window manager decorations?

Answer: In resource files, use the window manager's client resource (which is
the application) and the resource clientDecoration:

Mwm*XClock.clientDecoration:   none

turns off all clock decorations.  See the mwm(1) entry for other
possibilities.

Programmatically, set the VendorShell resource XmNmwmDecorations to
appropriate values: MWM_DECOR_NONE (or a bitwise or of values).

-----------------------------------------------------------------------------
Subject: 53)  Is there an ICCCM compliant way of setting window manager
decorations?

Answer: Tom LaStrange (toml@LaStrange.COM) writes: "No, there is no ICCCM
portable way to alter decorations."

-----------------------------------------------------------------------------
Subject: 54)  How can I put decorations on transient windows using olwm?

Answer: From Jean-Philippe Martin-Flatin <syj@ecmwf.co.uk>

/**********************************************************************
** WindowDecorations.c
**
** Manages window decorations under the OpenLook window manager (OLWM).
**
** Adapted from a C++ program posted to comp.windows.x.motif by:
**
**    +--------------------------------------------------------------+
**    | Ron Edmark                          User Interface Group     |
**    | Tel:        (408) 980-1500 x282     Integrated Systems, Inc. |
**    | Internet:   edmark@isi.com          3260 Jay St.             |
**    | Voice mail: (408) 980-1590 x282     Santa Clara, CA 95054    |
**    +--------------------------------------------------------------+
***********************************************************************/

#include <X11/X.h>
#include <X11/Xlib.h>
#include <X11/Xatom.h>
#include <X11/Intrinsic.h>
#include <X11/StringDefs.h>
#include <X11/Protocols.h>
#include <Xm/Xm.h>
#include <Xm/AtomMgr.h>

/*
** Decorations for OpenLook:
** The caller can OR different mask options to change the frame decoration.
*/
#define OLWM_Header     (long)(1<<0)
#define OLWM_Resize     (long)(1<<1)
#define OLWM_Close      (long)(1<<2)

/*
** Prototypes
*/
static void InstallOLWMAtoms  (Widget w);
static void AddOLWMDialogFrame(Widget widget, long decorationMask);


/*
** Global variables
*/
static Atom AtomWinAttr;
static Atom AtomWTOther;
static Atom AtomDecor;
static Atom AtomResize;
static Atom AtomHeader;
static Atom AtomClose;
static int  not_installed_yet = TRUE;


static void InstallOLWMAtoms(Widget w)
{
        AtomWinAttr = XInternAtom(XtDisplay(w), "_OL_WIN_ATTR" ,    FALSE);
        AtomWTOther = XInternAtom(XtDisplay(w), "_OL_WT_OTHER",     FALSE);
        AtomDecor   = XInternAtom(XtDisplay(w), "_OL_DECOR_ADD",    FALSE);
        AtomResize  = XInternAtom(XtDisplay(w), "_OL_DECOR_RESIZE", FALSE);
        AtomHeader  = XInternAtom(XtDisplay(w), "_OL_DECOR_HEADER", FALSE);
        AtomClose   = XInternAtom(XtDisplay(w), "_OL_DECOR_CLOSE",  FALSE);

        not_installed_yet = FALSE;
}

static void AddOLWMDialogFrame(Widget widget, long decorationMask)
{
        Atom   winAttrs[2];
        Atom   winDecor[3];
        Widget shell = widget;
        Window win;
        int    numberOfDecorations = 0;

        /*
        ** Make sure atoms for OpenLook are installed only once
        */
        if (not_installed_yet) InstallOLWMAtoms(widget);

        while (!XtIsShell(shell)) shell = XtParent(shell);

        win = XtWindow(shell);

        /*
        ** Tell Open Look that our window is not one of the standard OLWM window        ** types. See OLIT Widget Set Programmer's Guide pp.70-73.
        */

        winAttrs[0] = AtomWTOther;

        XChangeProperty(XtDisplay(shell),
                        win,
                        AtomWinAttr,
                        XA_ATOM,
                        32,
                        PropModeReplace,
                        (unsigned char*)winAttrs,
                        1);

        /*
        ** Tell Open Look to add some decorations to our window
        */
        numberOfDecorations = 0;
        if (decorationMask & OLWM_Header)
                winDecor[numberOfDecorations++] = AtomHeader;
        if (decorationMask & OLWM_Resize)
                winDecor[numberOfDecorations++] = AtomResize;
        if (decorationMask & OLWM_Close)
        {
                winDecor[numberOfDecorations++] = AtomClose;

                /*
                ** If the close button is specified, the header must be
                ** specified. If the header bit is not set, set it.
                */
                if (!(decorationMask & OLWM_Header))
                        winDecor[numberOfDecorations++] = AtomHeader;
        }

        XChangeProperty(XtDisplay(shell),
                        win,
                        AtomDecor,
                        XA_ATOM,
                        32,
                        PropModeReplace,
                        (unsigned char*)winDecor,
                        numberOfDecorations);
}


/*
** Example of use of AddOLWMDialogFrame, with a bit of extra stuff
*/
void register_dialog_to_WM(Widget shell, XtCallbackProc Cbk_func)
{
        Atom atom;

        /*
        ** Alias the "Close" item in system menu attached to dialog shell
        ** to the activate callback of "Exit" in the menubar
        */
        if (Cbk_func)
        {
            atom = XmInternAtom(XtDisplay(shell),"WM_DELETE_WINDOW",TRUE);
            XmAddWMProtocolCallback(shell,atom, Cbk_func,NULL);
        }

        /*
        ** If Motif is the window manager, skip OpenLook specific stuff
        */
        if (XmIsMotifWMRunning(shell)) return;

        /*
        ** Register dialog shell to OpenLook.
        **
        ** WARNING: on some systems, adding the "Close" button allows the title
        ** to be properly centered in the title bar. On others, activating
        ** "Close" crashes OpenLook. The reason is not clear yet, but it seems
        ** the first case occurs with OpenWindows 2 while the second occurs with
        ** Openwindows 3. Thus, comment out one of the two following lines as
        ** suitable for your site, and send e-mail to syj@ecmwf.co.uk if you
        ** find out what is going on !
        */
        AddOLWMDialogFrame(shell,(OLWM_Header | OLWM_Resize));
/*      AddOLWMDialogFrame(shell,(OLWM_Header | OLWM_Resize | OLWM_Close)); */
}


-----------------------------------------------------------------------------
Subject: 55)  How can I turn off the Motif window manager functions from the
system menu?
[Last modified: October 92]

Answer: The user of an application can control functions in the system menu
for an application using the mwm resource clientFunctions:

        mwm.application_name.clientFunctions: -resize -close

Note that mwm will have to be restarted after putting this in their resource
database.


Answer: The writer of an application can only remove items.  Be warned that
your users will probably gnash their teeth, swear furiously at your product
and stop using it if they discover that you have done this.  (Especially if
you have removed the Close button, your application has hung and it has taken
up all of memory and swap so it can't be killed.) Much better is to catch the
action gracefully as in the next question.

        #include <Xm/MwmUtil.h>

        XtVaGetValues(shell, XmNmwmFunctions, &int_val, NULL);
        int_val &= ~(MWM_FUNC_CLOSE | MWM_FUNC_ALL);
        XtVaSetValues(shell, XmNmwmFunctions, int_val, NULL);


-----------------------------------------------------------------------------
Subject: 56)+ How can I keep my shell windows fixed in size?

[Last modified: Apr 95]

Answer: In addition to the decoration controls mentioned in the previous few
subjects of this FAQ, you can also specify size hints for your shell widget's
windows with these resources:  XmNminWidth, XmNmaxWidth, XmNminHeight,
XmNmaxHeight.  If you set the min and max values to the same size, most window
managers will not allow the user to resize the window.

Thanks to Ken Lee, kenton@rahul.net

-----------------------------------------------------------------------------
Subject: 57)  How can my application know when the user has quit Mwm?

[Last modified: Feb 95]

Answer: Looking for an answer to this one. ANY TAKERS? (Still looking.)

-----------------------------------------------------------------------------
Subject: 58)  How can I tell if the user has selected "Close" from the system
menu?  I need to do some clean up before exiting.

[Last modified: Feb 95]

Answer:          This works with R4 Intrinsics

        #include <Xm/Protocols.h>

        void FinalCleanupCB(w, client_data, call_data)
        Widget   w;
        caddr_t  client_data, call_data;
        {
                /* tidy up stuff here */
                ...
                /* exit if you want to */
                exit (0);
        }

        main()
        {
                Atom wm_delete_window;

                ...
                XtRealizeWidget(toplevel);
                ...
                wm_delete_window =
                        XmInternAtom(XtDisplay(toplevel),
                                "WM_DELETE_WINDOW", False);
                XmAddWMProtocolCallback(toplevel, wm_delete_window,
                        FinalCleanupCB, NULL);
                XtMainLoop();
        }

This will still kill the application.  To turn this behaviour off so that the
application is not killed, set the shell resource XmNdeleteResponse to
XmDO_NOTHING.  This means that users cannot kill your application via the
system menu, and may be a bad thing.

If you are running R3, Bob Hays (bobhays@spss.com) has suggested this:
"Trapping on the delete window atom does not work as I cannot force my action
routine to the top of the action list for the activity desired, so the window
manager kills my window anyway BEFORE I can do anything about it.  And, to
make matters worse, the window manager (Motif in this case) tacks its atoms
and handlers onto the window at some unknown point down the line after the
creation of the shell widget as far as I can tell.  So....

I have a procedure as an action routine for ClientMessage.  Then, if I get a
property change event on the window manager protocols, I then tack on
WM_SAVE_YOURSELF.  If I get this request, I clean up (it seems to happen on
WM_DELETE_WINDOW, BTW, if you remove WM_DELETE_WINDOW from the WM protocols
atom) and exit.  Works great and is less filling overall:-)."

The following similar code fragment is from Dave Mink
(mink@cadcam.pms.ford.com):

void setupCloseCallback(Widget shell, XtCallbackProc closeProc)
{
    /* get window manager delete protocol atom */
    Atom deletewin_protocol = XmInternAtom(
        XtDisplay(shell), "WM_DELETE_WINDOW", True
        );
    /* turn off default delete response */
    XtVaSetValues( shell,
        XmNdeleteResponse, XmDO_NOTHING,
        NULL);
    /* add callback for window manager delete protocol */
    XmAddWMProtocolCallback(shell, deletewin_protocol, closeProc, NULL);
}


-----------------------------------------------------------------------------
Subject: 59)  Is there an mwm virtual desktop manager?

[Last modified: Nov 94]

Answer: David Kaelbling (drk@x.org) reports: In OSF/Motif 2.0, mwm supports
both workspaces (see the f.cci function and the wsm demo for a sample
interface) and a virtual root window.  To manipulate the virtual screen
f.goto, f.pan, and f.track_pan were added, as were iconPinned and clientPinned
client resources.

Peter E. Wagner (pew@cs.brown.edu): Imagine that your "desktop" extends beyond
the view provided by your monitor.  A virtual window manager gives you access
to the space beyond your viewport (i.e. your screen) by allowing you to move
the viewport to other areas of the extended desktop.

The first one is Solbourne's swm, which spawned vtwm/tvtwm/olvwm.

David B. Lewis created one.  suresh@unipalm.co.uk has further developed it
into the UniPalm product DOORS, which is only available as a source code
extension to the MOTIF window manager.  The price of the source and unlimited
right to distribute binaries is 10,000 pounds Sterling.  Alternately, source
and right to use within one company is 2,000 pounds Sterling.  Contact Peter
Dawe

Unipalm Limited                         Voice: +44 (0) 223 420002
216 The Science Park                    Fax:   +44 (0) 223 426868
CAMBRIDGE
CB4 4WA

An enhancement request for such an object has been filed with OSF.

Tim Failes (tim@aus.oz.au) of Advanced User Systems Pty Ltd writes: IXI has a
fully supported product called Panorama which provides this facility.
Panorama allows the user to pan around the virtual work space, dynamically
change the size of the virtual workspace, and also access windows via an icon
box.  Panorama also includes a point-and-click tool for setting resources such
as colours, focus policy, etc. [IXI contact information appears in the "Where
can I get Motif?" subject. -ed]

-----------------------------------------------------------------------------
Subject: 60)  Why does mwm 1.2 crash on startup?

[Last modified: March 93]

Answer: From David Brooks: The commonest cause of early mwm demise is as
follows:

- You, or someone, built Xlib in the default way using the Xsi
  internationalization functions.

- Your Xlib wasn't installed completely (or at all).

- Early on, mwm calls the function XmbTextListToTextProperty, which calls
  _XConvertMBToCT, which looks for the Xsi locale database, finds it
  missing, ignores this fact and tries to dereference zero.

The workaround is to find the database *somewhere*, and point the environment
variable XNLSPATH at it.  For example, in my personal X source tree:

        setenv XNLSPATH /home/X11r5src/mit/lib/nls/Xsi

-----------------------------------------------------------------------------
Subject: 61)  How do I obtain the size of a unmanaged shell widget?

Answer: In the code below, use getsize() for widgets which have been managed,
and getsize2() for newly created shell widgets which have not yet been
managed.

getsize2() takes two widget parameters because popup dialogs etc.  _consist_
of two separate widgets - the parent shell and the child bulletin board, form,
whatever.  This important distinction (somewhat glossed over in the Motif
manuals) is the cause of a large number of queries in comp.windows.x.motif.
XmCreate...Dialog() functions return the (bulletin board, form, whatever)
_child_ of the pair, not the parent shell.

getsize2() takes the _shell_ widget as it's first parameter, and the shell's
_child_ (the bulletin board, form, whatever) as it's second.  Thus, if you are
using code like widget = XmCreate...Dialog() to create your popup dialogs, use
code like getsize2(XtParent(widget),widget,&width,&height) to get the width
and height. If you use e.g. XmCreateDialogShell() or XtCreatePopupShell(),
then you are creating the the shell widget and it's child explicitly, and can
just pass them into getsize2() with no problem.

Note: getsize2() calls getsize().

/* getsize(widget,width,height);
 * Widget widget;
 * int *width,*height;
 *
 * returns the width and height of a managed widget */


void getsize(l,w,h) Widget l; int *w,*h; { Dimension w_,h_,b_;

static Arg size_args[] =
  {
  { XmNwidth,0 },
  { XmNheight,0 },
  { XmNborderWidth,0 },
  };

size_args[0].value = (XtArgVal)&w_; size_args[1].value = (XtArgVal)&h_;
size_args[2].value = (XtArgVal)&b_;

XtGetValues(l,size_args,3);

if (w) *w = w_ + b_; if (h) *h = h_ + b_; } /*
getsize2(shell,child,width,height);
 * Widget shell,child;
 * int *width,*height;
 *
 * returns the width, height of an unmanaged shell widget */

void getsize2(p,c,w,h) Widget p,c; int *w,*h; { XtSetMappedWhenManaged(p,0);

XtManageChild(c);

getsize(p,w,h);

XtUnmanageChild(c);

XtSetMappedWhenManaged(p,-1); } submitted by: [ Huw Rogers  Communications
Software Engineer, NEC Corporation, Tokyo, Japan ] [ Email:
rogersh@ccs.mt.nec.co.jp  Fax: +81-3-5476-1005  Tel: +81-3-5476-1096 ]

-----------------------------------------------------------------------------
Subject: 62)  XtGetValues() on XmNx and XmNy of my top level shell don't
return the correct root window coordinates.  How do I compute these?

Answer: XmNx and XmNy are the coordinates relative to your shell's parent
window, which is usually a window manager's frame window.  To translate to the
root coordinate space, use XtTranslateCoords() or XTranslateCoordinates().

Thanks to Ken Lee, kenton@rahul.net

-----------------------------------------------------------------------------
Subject: 63)+ How can I create a shell widget with a non-default visual type?

[Last modified: Apr 95]

Answer: You must specify the colormap, visual type, and depth for the shell
before it is realized.  If you don't specify all three resources (or specify
them incorrectly), you will probably get BadMatch protocol errors from your X
server.

Thanks to Ken Lee, kenton@rahul.net

-----------------------------------------------------------------------------
END OF PART TWO

-----------------------------------------------------------------------------
Subject: 64)  TOPIC: MOTIF DEVELOPMENT TOOLS (GUI BUILDERS and UIMS's)

-----------------------------------------------------------------------------
Subject: 65)  What GUI tools exist to assist in developing Motif applications?

[Last modified: Mar 95 ]

Answer: [A FAQ is not for "personal opinions" on these tools.  I don't think
it is appropriate to give such opinions through this particular posting, so I
haven't included any. I will include vendor-provided descriptions provided
they are concise and informative. See Subject 0 for contribution details.]

`Prototyping tools' and `code generation tools' come in two forms:

    GUI (Graphical User Interface) builder -
    those that can be used to design (and perhaps rehearse)
    the interface only ; and

    UIMS (User Interface Management Systems) -
    those that are a system supporting the development and
    execution of user interfaces.

However, this distinction can be somewhat arbitrary when specific tools are
categorized as either one or the other.  (Therefore, the classification below
should be taken with a kilogram of salt. :-)

A number of commercial and non-commercial tools of both kinds that will
support Motif are listed below. [NOTE: Vendors or individuals wishing to add
their product or tool to this list, or to change their entry, should email to
the maintainer of this FAQ.]

GUI builders:

        Builder Xcessory (bx)
        Druid
        ExoCODE/xm
        iXBUILD (formerly X Build)
        MOTIFATION
        WKSH (Windowing Korn Shell)
        X-Designer

UIMS:

        ALEX
        ezX User Interface Management System
        Galaxy
        MetaCard
        Serpent
        TAE Plus
        TeleUse
        UIMX
        VXP (Visual X windows Programming Interface)
        Widget Creation Library (Wcl)
        WINTERP
        XFaceMaker2


For users of the WWW, see also Brad A. Myers' `User Interface Software Tools'
list (which is not limited to Motif tools):
http://www.cs.cmu.edu:8001/afs/cs.cmu.edu/user/bam/www/toolnames.html


Some contact addresses, presented in alphabetical order (without regard to GUI
or UIMS categorization), follow:


o  ALEX: For more information contact Michael Karliner on (+44) 81 566 2307 or
E-mail to alex@s-strat.co.uk.  ALEX Technologies, Waterman's Yard, 32a The
Mall, Ealing, London W5, UK.


o  Builder Xcessory (bx): is from ICS.  More details are available by sending
a request to info@ics.com.  Address:

        ICS Inc.,
        201 Broadway,
        Cambridge MA 02139,
        Tel. (617) 621-0060,
        Fax. (617) 621-9555
        http://www.ics.com/


o  Druid: is a commercial product. It currently supports Motif1.1 and 4 unix
platforms: SPARC, HP 9000, RS6000, and SGI. For further information contact:

        Mr. Fred Lee,
        Automated Systems (Pte) Limited,
        203 Henderson Road, #12-07/14,
        Henderson Industrial Park,
        Singapore 0315.
        FAX: (65)272-2029


Or: Dr. Gurminder Singh (gsingh@iss.nus.sg), Institute of Systems Science,
National University of Singapore


o  ExoCODE/xm: From Expert Object Corp., 7250 Cicero Avenue, Lincolnwood, IL
60646 (708)676-5555.  Also: ExoCODE, EXOC, 500 Hyacinth Place, Highland Park,
IL, 60035, (708) 926-8500, $1,500, Motif or OpenLook or SunView.


o  ezX: Contact information:


        ezX User Interface Management System
        Sunrise Software, International
        170 Enterprise Center
        Middletown, RI 02840
        401-847-7868
        email: support@sunrise.com


o  Galaxy, Visix Software Inc., 11440 Commerce Park Drive, Reston, VA, 22091,
(800) 832-8668, $9,600, Mac, Windows, Motif, OpenLook; very complete, Virtual
Toolkit, UIMS


o  iXBUILD (formerly X Build):

        iXOS Software GmbH,
        Bretonischer Ring 12,
        8011 Grasbrunn/Munich, Germany,
        email support@ixos.de or office@ixos.de,
        phone ++49-89-46005 0

or in the US:

        UniPress Software,
        2025 Lincoln Hwy.,
        Edison, NJ 08817,
        phone 1-800-222-0550


o  MetaCard: MetaCard 1.0 is supported on five popular UNIX/X11 platforms:
SPARC, Sun3, DECstation, HP-9000/300, and SCO ODT.  An HP-9000/700 port is
underway and should be available by the end of July.  [They] plan to support
IBM RS/6000, SGI Iris, and DG AViiON sometime fall '92.  For more information,
or to receive a free save-disabled but licensable copy of MetaCard, email to
info@metacard.com or call 303- 447-3936.  If you have anonymous FTP access to
the Internet, you can download the current engines, documentation, and an
unlicensed Home stack from ftp.metacard.com (128.138.213.21), directory
MetaCard.  Commercial users can get MetaCard from world.std.com
(192.74.137.5), directory pub/Metacard.  If you don't have an anonymous ftp
access, you can also download MetaCard from The World using kermit or xmodem
from the ~ftp/pub/MetaCard directory.  Sign up by calling 617-739-0202 (voice)
or via modem by dialing 617-739-9753 (7 bits even parity) and logging in as
new.

MetaCard 1.2 Beta 5 is now available for anonymous FTP from ftp.metacard.com
(directory MetaCard/1.2B5), and ftp.uu.net (directory vendor/MetaCard/1.2B5).

There is also a MetaCard mailing list.  To subscribe to the metacard-list,
send mail to listserv@grot.starconn.com with the following commands in the
body of the message:

      subscribe metacard-list firstname lastname
      quit

Replace "firstname lastname" with your name, not your e-mail address.


o  MOTIFATION: PEM GmbH, Vaihinger Strasse 49, 7000 Stuttgart 80, Germany,
Tel: +49 (0) 711 713045, Fax: +49 (0) 711 713047 Email: basien@pem-
stuttgart.de.  Available for (Motif 1.2/1.1) on SunOS, Solaris 2.1, HP,
Interactive, ODT 3.0, Silicon Graphics, PCS, ...


o  Serpent: The S/W is free (anonymous ftp) from ftp.sei.cmu.edu.  For more
info contact erik/robert at serpent-info@sei.cmu.edu.  NOTE: This is no longer
supported, and is apparently replaced by a commercial product called Alpha.


o  TAE Plus: TAE Plus is a mature, portable software development environment
that supports rapid prototyping, tailoring, and management of Motif-based
graphical user interfaces.  It particularly supports GUI development by non-
programmers and by programmers who are not well-versed in the details of X and
Motif.  Its code generator can produce C, C++, and Ada code and allows for
automatic merging of regenerated code with previously modified parts of the
interface code.  It supports generation of a UIL/Mrm representation of the
interface.

Scripting capabilities are provided to facilitate automatic testing, on-line
demos, and tutorials.  A record and playback feature lets you build scripts
simply by interacting with your GUI.  Dynamic Data Objects allow the developer
to create pictorial objects (e.g., a thermometer to show temperature), whose
dynamic portions (e.g., the mercury in the themometer) can change to reflect
changing data or be directly manipulated by the end-user. TAE Plus is
available on Sun, HP, IBM, SGI, and SCO Unix platforms.  Evaluation software
is available via anonymous ftp.

TAE Plus contact information:

        Century Computing, Inc.
        1014 West Street
        Laurel, MD 20707
        1-800-823-3228
        tae-info@cen.com


o  TeleUSE: Built around X Windows and OSF/Motif, TeleUSE's comprehensive
toolset gives you maximum control over every phase of graphical user interface
development, including static screen layout and design, automatic
implementation of callbacks, building the executable, and the interactive
test, debug, and maintenance cycles.  For more information, please contact:

In North America and countries not specified below:

        Alsys (formerly TeleSoft)
        10251 Vista Sorrento Parkway Suite 300
        San Diego, CA 92121 USA
        (619) 457-2700 X244
        (619) 452-1334 (fax)
        leigh@alsys.com

        In France: +33 1 47 66 21 83
        In the UK: +49 491 579 090
        In Scandinavia: +46 8 520 69010
        In the Benelux: +31 15 62 21 21
        In Germany: +49 7531 65022
        In Italy: +39 6 5045 1
        In Japan: +81 3 522 85620
        In South Korea: +82 2 577 2044


o  UIMX:

        Visual Edge Software Limited
        3870 Cote Vertu
        St Laurent, Quebec
        H4R 1V4
        Phone: (514) 332-6430
        Fax:   (514) 332-5914
or:
        Visual Edge Software Ltd.
        101 First Street, Suite 443
        Los Altos, CA 94022
        Phone: (415) 948-0753
        Fax:   (415) 948-0843


o  VXP (Visual X windows Programming Interface):

Yong Chen (stdyxc05@pip.shsu.edu) developed a Motif GUI builder called VXP --
Visual X windows Programming Interface. VXP has some UIMS capabilities. VXP is
now distributed as a freeware, and has been ported to SGI irix, HP hp-ux, Sun
OS4 and Solaris 2.x, DEC OSF/1, IBM AIX, Linux, SCO, NetBSD.  For more
information, visit VXP's WWW home page at

        http://www.shsu.edu/~stdyxc05/VXP/
or ftp at
        ftp.shsu.edu    /pub/VXP/


o  Widget Creation Library (Wcl): The distribution is available in several
ways.  The preferred approach it for you to get the compressed tar file using
anonymous ftp from:


        ftp.x.org       /R5contrib/Wcl-2.5.tar.Z
        WWW URL: ftp://ftp.x.org/R5contrib/Wcl-2.5.tar.Z


o  WINTERP: (Widget INTERPreter) An object-oriented rapid prototyping,
development and delivery environment for building extensible applications with
the OSF/Motif UI Toolkit and Xtango-based graphics/animation. By Niels Mayer
(mayer@netcom.com).  Mailing list: winterp-request@netcom.com. Available via
ftp from ftp.x.org:/contrib/devel_tools/winterp-2.xx.tar.gz (where 'xx' is
currently '03').

Key WINTERP Features:

        * High-level, Object-oriented interface to OSF/Motif and Xtoolkit.
        * High-level object-oriented 2.5D graphics&animation widget based
          on Xtango path transition animation system.
        * Ability to easily create new widget classes w/ complex graphical
          behavior using Xtango animation/graphics.
        * Automatic storeage management of all X/Xt/Motif data, Pixmaps,
          animations. Automatic resource conversion and management.
        * Asynchronous communications w/ other unix programs via
          expect-based subprocess facility.
        * Includes XmGraph to display graphs (both cyclic, acyclic,
          directed, undirected); graph nodes can be arbitrary widgets
          created by WINTERP; supports direct manipulation editing of graph.
        * GIF image support.
        * Lisp-eval server architecture supports inter-application
          communication.
        * Interactive programming via Gnu-Emacs or Motif-Text-widget interface.
        * Portable, small, fast, and free.


o  WKSH (Windowing Korn Shell):

        EXtensible Korn Shell (C language calling interface,
        dynamic library loading, etc.)
        Motif or OpenLook API
        X Toolkit Intrinsics
        WKSH Convenience Functions
        Fast Learning and Prototyping Feature (ksh interpreter)
Contact:
        Acacia Computer,
        PO Box 4376,
        Warren, NJ 07059,
        Phone: 908 548 6955,
        Email: uunet!aca1


or: Computer Aid Inc, 1-(800)-444-WKSH, or:


        Consensys Corp,
        Europe: +(44)-734-833241 (Roger Chalke), +(44)0734-835391 (Fax),
        US: (416)-940-2903, (416)-940-2903 (Fax).


WKSH was developed by USL. Binaries are available through Acacia Computer for
SUNOS, Solaris, SCO ODT, Intel SVR4.0


o  X-Designer: From Imperial Software Technology in the UK.  Email address is
sales@ist.co.uk.  (+44) 743 587055

V.I. Corporation have become the distributor for the X-Designer product in the
United States.  In addition, IST and V.I. Corporation have developed a product
called DVX-Designer that merges X-Designer with their GUI product called
DataViews.  Other merged products are in the works.  For more information,
people can contact:

        V.I. Corporation
        47 Pleasant Street
        Northampton, MA  01060
        Phone: (413) 586-4144
        Fax: (413) 586-3805
        Email: vi@vicorp.com


o  XFaceMaker2:

        NSL -  Non Standard Logics S.A.,
        57-59, rue Lhomond,
        75005  Paris - France,
        Phone: +33 (1) 43.36.77.50,
        Fax:   +33 (1) 43.36.59.78
        email: requests@nsl.fr or requests%nsl.fr@inria.fr for information.

Their North American office:

        Non Standard Logics, Inc.,
        4141 State Street, Suite B-11,
        Santa Barbara CA 93110,
        Tel: 805 964 9599,
        Fax: 805 964 4367

-----------------------------------------------------------------------------
Subject: 66)  TOPIC: GEOMETRY MANAGEMENT

[NOTE: As you can see, this is a new topic area. Send me your ideas for
answered questions pertaining to this topic.]

-----------------------------------------------------------------------------
Subject: 67)  Why is geometry management so important?

[Last modified: Sept 94]

Answer: Geometry management is a key element of Motif applications for reasons
which include, but are not limited to, the following:


    The user should be able to re-size the shell and get
    some reasonable geometry response (other than clipping).

    The user should be able to tailor fonts and have the
    widgets adjust accordingly.  (Many people over 40 simply
    can't read small fonts without serious eye strain.)

    When the designers decide to change a label, the widgets
    should re-adjust accordingly.

    Some labels must be set dynamically and the widgets should
    re-layout accordingly.

    An internationalized application must work with several resource
    files, one for each supported natural language.  The labels in each
    file have different lengths and the application should adjust
    accordingly.


-----------------------------------------------------------------------------
Subject: 68)  What are good references for reading about geometry management?

[Last modified: Oct 94]

Answer: See the BOOKS topics for detailed reference information.  "X Toolkit
Intrinsics Programming Manual" (Nye & O'Reilly) contains an entire chapter on
geometry management, as does "X Window System Toolkit" (Asente & Swick) on
which the O'Reilly book is based.  Another good reference is the discussion of
the "geometry_manager" and "query_geometry" methods in "X Toolkit Intrinsics
Reference Manual".

"Motif Programming Manual" (Heller & Ferguson) has a chapter devoted to Motif
Manager widgets.  Finally, the widget documentation for each geometry manager
widget typically describes its policy in detail.

-----------------------------------------------------------------------------
Subject: 69)  Why don't my labels resize in a RowColumn widget?  I have a
RowColumn widget in my application, with several rows and columns of XmLabels.
When I update the text in the labels, the label's width does not get updated.

[Last modified: Oct 94]

Answer: Make sure all the ancestor widget resize mechanisms are enabled:

   - on shells, set XmNallowShellResize
   - on row column, set XmNresizeWidth and XmNresizeHeight
   - on bulletin board and form, set XmNresizePolicy

Also, set XmNrecomputeSize on the label itself.  The shell resource is off by
default; the others should be on by default.

Thanks to Ken Lee, kenton@rahul.net

-----------------------------------------------------------------------------
Subject: 70)  Why do dialogs appear smaller under 1.2.3 and later?  The same
problem occurs with parts of a complex main window.  All of my dialogs which
were fine under 1.2.2 and earlier come up too small to work with under 1.2.3
(or later). Why?

A. Thanks to David Brooks (dbrooks@ics.com) for pointing me to Daniel
Dardailler (daniel@x.org) who wrote this scholarly treatise:

      Application's Geometry Management Advanced Guidelines:
      =====================================================
      (or "How to properly manage children of already realized parent")

Xt Background:
-------------

    XtCreateWidget:        call Initialize ;

    XtManageChild:         if (parent realized)
                              call ChangeManaged ;
                              call Realize ;

    XtRealizeWidget:       postorder ChangeManaged loop ;
                           preorder Window-creation loop ;


Creating a widget only invokes its Initialize method (its parent's
InsertPosition method too, but that has nothing to do with GM).
Composite widgets, by opposition to Primitive, does
not usually get a correct size at initialization time, since their
correct size is based on their children sizes, which do not exist yet
at this time.

Applications usually create an entire tree of managed but
unrealized widgets and then realize their top level widget, which recursively
realize every widgets in the tree. During the creation process, the
managing of the unrealized widgets is a no-op (only mark them managed).

When XtRealizeWidget(toplevel) happens, the change_managed methods of
all the composite widgets in the tree are called in bottom-to-top
order, thus giving each of them a chance to determine their own size
based on their children *current* sizes (composite or not).
Using the current size of the children in this situation is fine,
since they should also be the children's preferred size, not
yet constrained by the parents layout (post-order traversal).

When one create a widget inside an already realized parent, this is
a different story and the order of management vs realization is important.

Consider a MessageBox created in a realized Frame.
The MessageBox itself creates a bunch of managed children
inside its Initialize method.
If you manage the MessageBox right after its creation, the Frame
ChangeManaged will be called (since it is realized), and its will use
the MessageBox current size as its base for its own size.
Unfortunately, the MessageBox ChangeManaged proc has never been called!
so its current size is whatever the default is, usually a non-settable
value (needed for tracking real initial size setting).
The MessageBox ChangeManaged has not been called because its children
were created and managed at a time where it wasn't realized.

What to do ?

The first solution would be to have all the ChangeManaged methods in
Motif call XtQueryGeometry instead of using the current size if it's
not the first time (i.e. if they're already realized).
But this is a lot of code to change and a kind of expensive run-time
process as it results in non-linear traversal order of the realized
tree (looks like an O(n!) but I'm not sure).
It's not even guaranteed that it will always work fine, since it relies on
the assumption that the geometry queried is the same that the geometry
asked for any manager (I mean, it might be the case, but if it's not,
it's just more code to fix in a very "bc-sensitive" part of Xm).


This other solution lies into the application, and is to realize a
manager first and then to manage it.
By realizing it, you are forcing its ChangeManaged proc to be
called (XtRealizeWidget does that), it will get a correct size and
this size will be used by its parent ChangeManaged when
you'll manage the manager. By explicitly realizing the branch
before managing its root, you are reproducing the ordering that
is typical of most applications at startup.

So the trick is:

        XtCreateWidget(realize_parent, MessageBox);
        XtRealizeWidget(MessageBox);  /* needed */
        XtManageChild(MessageBox);

and the model is:

    "Always explicitly realize a composite widget child of an already
     realized parent before managing it if all its children have been
     already managed"

One can always realize every widget children of realized parents, that
won't hurt, but it's useless for Primitives and Composites that
get more children added later in the program.
Why? because Primitives get their correct size at initialization
time anyway and adding a child to a Composite will generate a geometry
request and a layout that will have the same effect as if the
ChangeManaged method had been called (well, nearly the same effect,
that a complication I will address later).

If we consider Motif, this trick is only useful for MessageBox,
SelectionBox and subclasses, and Scale, since those are the only
Composites that create managed children in their Initialize method and
don't usually get additional kids from the application.

However, any application that re-creates this order of actions will
need to apply the "realize<manage" method too.
For instance:

        XtCreateWidget(realize_parent, DrawingArea);
        XtRealizeWidget(DrawingArea);   /* not needed */
        XtManageChild(DrawingArea);
        XtCreateWidget(DrawingArea, any_child) ;
        XtManageChild(any_child);
but
        XtCreateWidget(realize_parent, DrawingArea);
        XtCreateWidget(DrawingArea, any_child) ;
        XtManageChild(any_child);
        XtRealizeWidget(DrawingArea);   /* needed */
        XtManageChild(DrawingArea);

Now this is becoming interesting: there are exceptions to the model :-)

The first one is the Xt Shell widget, which has what I consider to be a
bug, but what MIT has, until recently, always considered to be a specific
behavior overridable by a subclass (like our VendorShell):
the ChangeManaged method always resizes the child to its own size
when the Shell is realized.

A side effect of this behavior is that even the realized<managed trick
won't work for direct descendant of Shell widget:

        XtCreateWidget(realize_shell, MessageBox);
        XtRealizeWidget(MessageBox);  /* needless */
        XtManageChild(MessageBox);    /* will get resized anyway */

To get rid of this problem, one needs to add a regular manager
between the Shell and the MessageBox in this case, for the sake
of having this manager doing a request to the Shell from its
ChangeManaged proc. This request will then be handled by the Shell
geometry manager, not its ChangeManaged proc, and it will take into
account the child size.
Note that we could also change our VendorShell ChangeManaged code to not
systematically envelop the Xt Shell ChangeManaged class method, and
check for the already realized case, but I would rather wait
for an Xt fix instead (I'm working on it).

If you broader the scope of the Xt Shell situation, you find that there are
also some resources in Xm that come into effect upon geometry request
reception but are not used in the ChangeManaged method.

Take the PanedWindow constraint resource XmNallowResize for instance,
which controls the validity of a geometry request made by a PW child.

If you do:

        XtCreateWidget(realize_shell, PanedWindow);
        XtManageChild(PanedWindow);

        XtCreateWidget(PanedWindow, button);
        XtManageChild(button);

that works fine since the ChangeManaged of the PanedWindow will
handle the insertion of the button and allowResize won't be used.

But if you add a manager in this hierarchy:

        XtCreateWidget(realize_parent, PanedWindow);
        XtManageChild(PanedWindow);

        XtCreateWidget(PanedWindow, manager);
        XtManageChild(manager);

        XtCreateWidget(manager, button);
        XtManageChild(button);

That doesn't work anymore since the button management results in
its parent manager's ChangeManaged being called, which in turn makes a
*request* to the PanedWindow, resulting in a No reply because
of allowResize (set to False by default).

The PanedWindow parent wouldn't have been realized that everything
would have worked fine, since no request would have been made.
It really depends on the early realization scheme.

I think XmNresizable in Form is the only other resource to present
this problem. There is not much to do in those cases except than
setting the corresponding resource to True, which makes sense.


-----------------------------------------------------------------------------
Subject: 71)  TOPIC: TEXT WIDGET

-----------------------------------------------------------------------------
Subject: 72)  How do XmTextField and a single line XmText widget differ?

[Last modified: Oct 94]

Answer: XmTextField is designed to be a lightweight, single line text editor.
It does not provide as much functionality as does XmText in order to achieve
better performance.

Thanks to Kevin Till, kev@osf.org

-----------------------------------------------------------------------------
Subject: 73)  Why does  pressing  <return> in a text widget do nothing?  This
happens using Motif 1.0 when I have a text widget inside a bulletin board (or
form) inside a dialog shell. (In Motif 1.1 it is fixed for both text and list
widgets.)

Answer: In single line mode, pressing the <return> key usually invokes the
activate() action, and in multi-line mode, the newline() action.  However,
whenever a widget is the child of a bulletin board widget which is the child
of a dialog shell, the bulletin board forces all of its children to translate
<return> to the bulletin board action Return() which is usually associated
with the default button of the dialog.  To restore the text actions of
activate() or newline(), you need to overide the Return() action of the
bulletin board.


        /* declarations */
        /* for a single line widget */
        char newTrans[] = "<Key>Return : activate()";
        /* for a multi line widget */
        char newTrans[] = "<Key>Return : newline()";
        XtTranslations transTable;

        /* in executable section */

        transTable = XtParseTranslationTable(newTrans);

        /* after creating but before managing text widget */

        XtOverrideTranslations(textWidget, transTable);


-----------------------------------------------------------------------------
Subject: 74)  When I add text to a scrolling text widget, how can I get the
new text to show?

[Last modified: Sept 94]

Answer: Use the (fully supported) function XmTextShowPosition:

        void XmTextShowPosition(w, position)
        Widget w;
        XmTextPosition position;

where the position is the number of characters from the beginning of the
buffer of the text to be displayed. If you don't know how many characters are
in the buffer, use XmTextGetLastPosition.

        position = XmTextGetLastPosition(w)


-----------------------------------------------------------------------------
Subject: 75)  Does the text widget support 16 bit character fonts?


[Last modified: November 92]

Answer: R5 has support for 16 bit character sets, and Motif 1.2 uses that.
Neither Motif 1.0 nor 1.1 support 16 bit sets.

-----------------------------------------------------------------------------
Subject: 76)  How can I stop the text widget from echoing characters typed?  I
need to turn off echo for password input.

Answer: Use the XmNmodifyVerifyCallback to tell when input is received. Set
the `doit' field in the XmTextVerifyCallbackStruct to False to stop the echo.
(In Motif 1.0 this will cause a beep per character: Live with it, because at
1.1 you can turn it off.) Note that password hiding is inherently insecure in
X - someone may have an X grab on the keyboard and be reading all characters
typed in anyway.

Another solution often proposed is to set the foreground and background
colours to be the same, effectively hiding the text.  This has a major flaw:
someone may select the text (triple click the mouse to get the line), and then
paste the password into say an xterm with *different* foreground and
background colours.  This immediately shows the password.

-----------------------------------------------------------------------------
Subject: 77)  How can I replace characters typed with say a `*'?  I want to
replace input for password entry.

[Last modified: April 93]

Answer: In Motif 1.1 Use the modifyVerifyCallback to tell when input is
received.  Set text->ptr in the callback structure to '*'. This does not work
under 1.0 because of an oversight in which changes to this are ignored.  In
Motif 1.0, what you can do is set the doit flag to 'false' so the text is not
displayed. Then set a static boolean to True to prevent re-entrance.  Next
call XmTextReplace() to display your '*'.  then reset your re-entrance flag to
False.  XmTextReplace() will call the XmNmodifyVerify callback.  To prevent
getting into an infinite loop, you need the re-entrance flag.

The following program from Dan Heller illustrates this:

--------------
/* Written by Dan Heller.  Copyright 1991, O'Reilly && Associates.
 * This program is freely distributable without licensing fees and
 * is provided without guarantee or warranty expressed or implied.
 * This program is -not- in the public domain.  This program appears
 * in the Motif Programming Manual, O'Reilly Volume 6.
 */

/* passwd.c -- prompt for a passwd.  Meaning, all input looks like
 * a series of *'s.  Store the actual data typed by the user in
 * an internal variable.  Don't allow paste operations.  Handle
 * backspacing by deleting all text from insertion point to the
 * end of text.
 */
#include <Xm/Text.h>
#include <Xm/LabelG.h>
#include <Xm/RowColumn.h>
#include <ctype.h>

void check_passwd();
char *passwd; /* store user-typed passwd here. */

main(argc, argv)
int argc;
char *argv[];
{
    Widget        toplevel, text_w, rowcol;
    XtAppContext  app;

    toplevel = XtVaAppInitialize(&app, "Demos",
        NULL, 0, &argc, argv, NULL, NULL);

    rowcol = XtVaCreateWidget("rowcol",
        xmRowColumnWidgetClass, toplevel,
        XmNorientation, XmHORIZONTAL,
        NULL);

    XtVaCreateManagedWidget("Password:",
        xmLabelGadgetClass, rowcol, NULL);
    text_w = XtVaCreateManagedWidget("text_w",
        xmTextWidgetClass, rowcol, NULL);

    XtAddCallback(text_w, XmNmodifyVerifyCallback, check_passwd, NULL);
    XtAddCallback(text_w, XmNactivateCallback, check_passwd, NULL);

    XtManageChild(rowcol);
    XtRealizeWidget(toplevel);
    XtAppMainLoop(app);
}

void
check_passwd(text_w, unused, cbs)
Widget        text_w;
XtPointer     unused;
XmTextVerifyCallbackStruct *cbs;
{
    char *new;
    int len;

    if (cbs->reason == XmCR_ACTIVATE) {
        printf("Password: %s\n", passwd);
        return;
    }

    if (cbs->text->ptr == NULL) { /* backspace */
        cbs->endPos = strlen(passwd); /* delete from here to end */
        if (cbs->endPos <= 0) return; /* catch null passwd - Mark Scoville */
        passwd[cbs->startPos] = 0; /* backspace--terminate */
        return;
    }

    if (cbs->text->length > 1) {
        cbs->doit = False; /* don't allow "paste" operations */
        return; /* make the user *type* the password! */
    }

    new = XtMalloc(cbs->endPos + 2); /* new char + NULL terminator */
    if (passwd) {
        strcpy(new, passwd);
        XtFree(passwd);
    } else
        new[0] = NULL;
    passwd = new;
    strncat(passwd, cbs->text->ptr, cbs->text->length);
    passwd[cbs->endPos + cbs->text->length] = 0;

    for (len = 0; len < cbs->text->length; len++)
        cbs->text->ptr[len] = '*';
}


-----------------------------------------------------------------------------
Subject: 78)  How can I best add a large piece of text to a scrolled text
widget?

[Last modified: Sept 94]

[NOTE: This problem is probably only relevant for Motif 1.0 which probably no
one is using anymore. If you know this to still be a problem, send mail to
ksall@cen.com. I'll probably remove this question otherwise.]

In some versions of Motif 1.0 even using XmTextSetString, it insists on adding
the text one line at a time, adjusting the scroll bar each time. It looks
awful and is slow.

Answer: If you don't have this problem, use XmTextSetString to set all of the
text in the widget.  If you do have this slowdown problem even using
XmTextSetString, unmanage the widget, add the text and then manage it again.
This may cause the window to blink, but you have to put up with that or switch
to a different version of Motif.

-----------------------------------------------------------------------------
Subject: 79)  How can I highlight text in the Text widget?

Answer: From: argv@zipcode.com (Dan Heller)

If you don't need font or color changes, you can do all this using a Text
widget very easily [in Motif 1.1, anyway].

        loop() {
            pos = offset_of_pattern_in_text_widget(pattern, text_w);
            search_len = strlen(pattern);
            XmTextSetHighlight(text_w, pos, pos+search_len,
                        XmHIGHLIGHT_SELECTED);
        }


There are two choices for highlighting: reverse video (HIGHLIGHT_SELECTED) and
underlined (HIGHLIGHT_SECONDARY_SELECTED).  Be careful that your users won't
confuse your highlights with actual selections!

-----------------------------------------------------------------------------
Subject: 80)  How can I select all of the text in a widget programmatically?
So that some initial text is displayed, but anything typed replaces it.

Answer: XmTextSetSelection(Text1, 0, XmTextGetLastPosition(Text1), event-
>xbutton.time);

where Text1 is the widget in question (obviously) and event is some event that
triggered this call.  You can use XtLastTimestampProcessed( display) instead
of xbutton.time if you don't happen to have an event pointer handy.


-----------------------------------------------------------------------------
Subject: 81)  How can I change colours of text in the Text widget?  I want
some of the text in one colour, some in another.

Answer: You can't.  Text stores an ordinary string, and points where
`highlights' of various types begin and end.  These highlights are all the
control you have over components of the text.  See the previous question.


-----------------------------------------------------------------------------
Subject: 82)  How can I change the font of text in the Text widget?  I want
some of the text in one font, some in another.

[Last modified: Sept 94]

Answer: You can't in Text (see the previous question).  If you wanted readonly
text, you could do it by using a label instead.  Label uses XmStrings, which
can contain multiple character sets in the one string.

If you are using Motif 2.0, however, XmStrings are now permitted in XmText
widgets, which solves this particular problem.

-----------------------------------------------------------------------------
Subject: 83)  Is there an emacs binding for the text widget?

Answer: This set is due to Kee Hinckley (nazgul@utopia.com):

*XmText.translations: #override\n\
        Ctrl <Key>b:            backward-character()\n\
        Alt <Key>b:             backward-word()\n\
        Meta <Key>b:            backward-word()\n\
        Shift Alt <Key>b:       backward-word(extend)\n\
        Shift Meta <Key>b:      backward-word(extend)\n\
        Alt <Key>[:             backward-paragraph()\n\
        Meta <Key>[:            backward-paragraph()\n\
        Shift Alt <Key>[:       backward-paragraph(extend)\n\
        Shift Meta <Key>[:      backward-paragraph(extend)\n\
        Alt <Key><:             beginning-of-file()\n\
        Meta <Key><:            beginning-of-file()\n\
        Ctrl <Key>a:            beginning-of-line()\n\
        Shift Ctrl <Key>a:      beginning-of-line(extend)\n\
        Ctrl <Key>osfInsert:    copy-clipboard()\n\
        Shift <Key>osfDelete:   cut-clipboard()\n\
        Shift <Key>osfInsert:   paste-clipboard()\n\
        Alt <Key>>:             end-of-file()\n\
        Meta <Key>>:            end-of-file()\n\
        Ctrl <Key>e:            end-of-line()\n\
        Shift Ctrl <Key>e:      end-of-line(extend)\n\
        Ctrl <Key>f:            forward-character()\n\
        Alt <Key>]:             forward-paragraph()\n\
        Meta <Key>]:            forward-paragraph()\n\
        Shift Alt <Key>]:       forward-paragraph(extend)\n\
        Shift Meta <Key>]:      forward-paragraph(extend)\n\
        Ctrl Alt <Key>f:        forward-word()\n\
        Ctrl Meta <Key>f:       forward-word()\n\
        Ctrl <Key>d:            kill-next-character()\n\
        Alt <Key>BackSpace:     kill-previous-word()\n\
        Meta <Key>BackSpace:    kill-previous-word()\n\
        Ctrl <Key>w:            key-select() kill-selection()\n\
        Ctrl <Key>y:            unkill()\n\
        Ctrl <Key>k:            kill-to-end-of-line()\n\
        Alt <Key>Delete:        kill-to-start-of-line()\n\
        Meta <Key>Delete:       kill-to-start-of-line()\n\
        Ctrl <Key>o:            newline-and-backup()\n\
        Ctrl <Key>j:            newline-and-indent()\n\
        Ctrl <Key>n:            next-line()\n\
        Ctrl <Key>osfLeft:      page-left()\n\
        Ctrl <Key>osfRight:     page-right()\n\
        Ctrl <Key>p:            previous-line()\n\
        Ctrl <Key>g:            process-cancel()\n\
        Ctrl <Key>l:            redraw-display()\n\
        Ctrl <Key>osfDown:      next-page()\n\
        Ctrl <Key>osfUp:        previous-page()\n\
        Ctrl <Key>space:        set-anchor()\n


! If you'd like the Delete key to work like backspace instead of deleting
! backwards, add the following definition to the lines above.
!       <Key>osfDelete: delete-previous-character()\n\

! These aren't included because they could intefere with
| menu accelerators (or vice versa)
!       Alt <Key>p:             backward-paragraph()\n\
!       Meta <Key>p:            backward-paragraph()\n\
!       Shift Alt<Key>p:        backward-paragraph(extend)\n\
!       Shift Meta<Key>p:       backward-paragraph(extend)\n\
!       Alt <Key>w:             copy-clipboard()\n\
!       Meta <Key>w:            copy-clipboard()\n\
!       Ctrl Alt <Key>w:        cut-clipboard()\n\
!       Ctrl Meta <Key>w:       cut-clipboard()\n\
!       Alt <Key>y:             paste-clipboard()\n\
!       Meta <Key>y:            paste-clipboard()\n\
!       Alt <Key>f:             forward-word()\n\
!       Meta <Key>f:            forward-word()\n\
!       Alt <Key>n:             forward-paragraph()\n\
!       Meta <Key>n:            forward-paragraph()\n\
!       Shift Alt <Key>n:       forward-paragraph(extend)\n\
!       Shift Meta <Key>n:      forward-paragraph(extend)\n\
!       Shift Alt <Key>f:       forward-word(extend)\n\
!       Shift Meta <Key>f:      forward-word(extend)\n\
!       Alt <Key>d:             kill-next-word()\n\
!       Meta <Key>d:            kill-next-word()\n\
!       Alt <Key>h:             select-all()\n\
!       Meta <Key>h:            select-all()\n\

Similar sets of translations have been suggested by others.

-----------------------------------------------------------------------------
Subject: 84)  What if I have problems with the backspace/delete keys?

[Last modified: Dec 94]

Answer: mclarnon@maths.ox.ac.uk (Gerald.McLarnon) writes:

  I am running a precompiled program based on motif and am having some
problems
  with the backspace/delete keys. Following the instructions of the faq I put
th e
  following lines in my .Xdefaults file

     *XmText.translations: #override                     <Key>osfDelete:
delete-previous-character()


     *XmTextField.translations: #override                     <Key>osfDelete:
delete-previous-character()
  This meant that in dialogue boxes (such as 'Open File') the delete key
  deleted to the left, but not in the main application window.

  Any hints for someone who isn't much of an X-pert?

David Kaelbling <drk@x.org> replied:

There are a couple possibilities.  In addition to the precedence of loading
resource files (explained in section 2.3 of the X11R5 X Toolkit Intrinsics
manual), resource values in the database are chosen based on a "most explicit
match" algorithm (i.e. those with the most qualifiers on the left hand side
win -- see section 15.2 of the X11R5 Xlib - C Library manual).  So if this
application's app-defaults file or fallback resources says
*Foo*XmText.translations:... that value will be used instead of yours.

Find the app-defaults file for your application and look to see if it
specifies translations for text widgets in the main application; if it does
you'll need to make yours at least as explicit.

If the app-defaults file isn't the problem then the application may be hard-
wiring the translations.  If that's the case you'll probably have to change
your virtual key bindings so that the key you think of as osfDelete is really
osfBackSpace.  You can do that for an individual application by setting its
defaultVirtualBindings resource, or for all Motif applications with a
$HOME/.motifbind file ("man xmbind" and "man VirtualBindings" give more detail
and alternatives).  In either case you'll need to specify a complete list of
virtual key bindings; there is no equivalent to #override.  To find out your
current virtual key bindings run "xprop -root | fgrep BINDINGS" and clean up
the result.

-----------------------------------------------------------------------------
Subject: 85)  How can I use a file as the text source for a Text widget?

Answer: You can't do it directly like you can with the Athena Text widget.
Instead, read the text from the file into a string (all of it!) and then use
XmTextSetString.  Alternatively, read blocks of characters and add them at the
end of the text using XmTextInsertString.  The following is an excerpt from
Dan Heller's "file_browser.c":

    /* file_browser.c -- use a ScrolledText object to view the
     * contents of arbitrary files chosen by the user from a
     * FileSelectionDialog or from a single-line text widget.
     */

    ...
    struct stat statb;

    /* make sure the file is a regular text file and open it */
    if (stat(filename, &statb) == -1 ||
            (statb.st_mode & S_IFMT) != S_IFREG ||
            !(fp = fopen(filename, "r"))) {
        if ((statb.st_mode & S_IFMT) == S_IFREG)
            perror(filename); /* send to stderr why we can't read it */
        else
            fprintf(stderr, "%s: not a regular file0, filename);
        XtFree(filename);
        return;
    }

    /* put the contents of the file in the Text widget by allocating
     * enough space for the entire file, reading the file into the
     * allocated space, and using XmTextFieldSetString() to show the file.
     */
    if (!(text = XtMalloc((unsigned)(statb.st_size+1)))) {
        fprintf(stderr, "Can't alloc enough space for %s", filename);
        XtFree(filename);
        fclose(fp);
        return;
    }

    if (!fread(text, sizeof(char), statb.st_size+1, fp))
        fprintf(stderr, "Warning: may not have read entire file!0);

    text[statb.st_size] = 0; /* be sure to NULL-terminate */

    /* insert file contents in Text widget */
    XmTextSetString(text_w, text);


-----------------------------------------------------------------------------
Subject: 86)  How can put Text in overstrike mode instead of insert?

[Last modified: Mar 95]

Answer: (Be sure to read the update after the first answer. This is also a
second update which cautions against the approach.)

There is no direct way. This was posted by Edmond Pitt (ejp@bohra.cpg.oz) The
correct answer to the question is to put the following in a modifyVerify
callback, where 'mvcb' is the XmTextVerifyCallbackStruct, and 'overstriking'
is defined by you:

    if (overstriking && mvcb->text->length == 1)
    {
        _XmTextDisableRedisplay(w,FALSE);
        XtCallActionProc(w,"delete-next-character",mvcb->event,0);
        _XmTextEnableRedisplay(w);
    }

_XmText{Dis,En}ableRedisplay() are XmText{Dis,En}ableRedisplay() in 1.0, but
X11R3 has no XtCallActionProc() anyway. For this environment you need my 1.0.3
Text widget patches posted last year & available on request.

An update was provided by Ingeborg (inca@osf.org):

In 1.2 and later releases, there is an action function toggle-overstrike()
which will toggle between overstrike and insert mode. Before 1.2.3, there is
no visual difference, and at most one character will get overstruck. In 1.2.3,
a block cursor was added as a visual cue to that the widget is in overstrike
mode, and the code was fixed to overstrike the actual number of characters
input (this makes a difference if you have preediting - for example in
japanese).

There is no default binding in 1.2, but the recommended key is osfInsert
without modifiers.  No resource exists.


Ed Kaltenbach (kaltenba@ataway.aptec.com) wrote:

    I was simulating overstrike mode in the Text Field widget by using
    the delete_next_character solution listed in subject 71.
    When the software is compiled with Motif 1.2.2, the modifyVerify
    callback does not get called for the last character when XmNmaxLength
    is specified.  It seems that the check if maxLength has been reached
    is done before the modifyVerify gets called and it keeps the modifyVerify
    from being called.  Is this a Motif bug? Does anybody have a solution that
    will work with Versions 1.1 and 1.2 of Motif?


Phil Day <phil@cfmu.eurocontrol.be> responded to Ed (and apologized for only
sending pseudocode!):

I've had the same problem, and for my money it's a bug.  My workaround is to
make all text widgets (I don't use textfield because of some other problems in
the past) have XmNmaxLength > XmNcolumns, so that the modifyVerify callback
gets a chance to do its stuff.

If you only want to support overstrike for typing, 1 extra charater is enough,
but if you want to support cut-and-paste for any length string you need
maxLength = 2*columns.  In the modifyVerify you have to check the result is <
columns.

I've tried using the Motif 1.2 support for overstrike, but this just seems to
work on a kind of pending-delete and only works for the single charater
replacement caes (that's my main argument for calling it a bug).

I don't use delete-next-character (I can't remember why just now, but I know I
had some problem with it).  Instead I have something like the following:

modifyVerify()
{
        if (acceptable)
                XmReplaceText(...)

        cd->doit = False;
        // we've just done it, we don't wnat Motif to !

    XtVaSetValues (w,
                   XmNverifyBell, False,
                   NULL);
        // Otherwise we'll get a beep.
}

valueChanged()
{

    XtVaSetValues (w,
                   XmNverifyBell, True,
                   NULL);
        // turned off in modifyVerify

}

Glenn Mandelkern <gmandel@Corp.Megatest.Com> writes about a problem with the
above solution.


    We have been running our software on Sparc 20's, under Motif 1.1
    and Motif 1.2, X11R5, Solaris 2.4.
    Unfortunately, some colleagues and I have found a disturbing side effect
    when following this suggestion.  Calling XtVaSetValues() in the
    modifyVerifyCallback causes the Text widget to flash.

    The O'Reilly guides say not to call XtVaSetValues() during text
    modification callbacks.  Motif Volume 6 has this on page 511 and
    Motif Volume 6A has it on page 496.

    I myself thought it would be fairly trivial to just switch the bell
    on and off.  But since XtVaSetValues() calls XmText's set_values() method,
    my guess is that its set_values() does something that causes this.

    So when you enter characters, the Text widget flashes.  It also slows
    down the performance of the Text widget.  You'll see this on a multi-line
    Text widget, especially with it occupying a full screen with text.

    If you want to see this, take the editor.c program in Volume 6 or 6A,
    then add a modifyVerifyCallback to the text_output widget.  Then inside
    that callback, call XtVaSetValues with the XmNverifyBell like above.

    This is a common "mistake", one which I've done more than once.
    I remember also that when I did not have the XtVaSetValues() in place,
    I got the beeps.

    So now we've reworked the application as follows:
        1.  The Text widget is initially created with XmNverifyBell
            set to False.

        2.  We ring the bell using XBell() when we detect a condition
            for which we want to veto text modifications.

    For our application, this provides the wanted feedback and gets rid
    of the flashes.


-----------------------------------------------------------------------------
Subject: 87)  How can I make the Delete key do a Backspace?  Related question:
How can I swap Delete and Backspace?

[Last modified: Oct 94]

Answer: Put this in your .Xdefaults

    *XmText.translations: #override <Key>osfDelete: delete-previous-character()


Additional information from David Kaelbling <drk@x.org>:

You can also supply an arbitrary file name to xmbind (so you can conditionally
run xmbind from your .xinitrc file based on the hostname, architecture,
xdpyinfo output, or whatever).

Some people prefer to use xmodmap to swap the keysyms for all applications,
but what you're doing will work fine if you specify all of the virtual key
bindings.  The current bindings are stored on the root window -- use "xprop
-root" and look for a _MOTIF_BINDINGS or _MOTIF_DEFAULT_BINDINGS property.
OSF/Motif is also distributed with a "bindings" directory containing all the
fallback virtkey binding files.

There are several ways to do display-specific customization: make

-----------------------------------------------------------------------------
END OF PART THREE

-----------------------------------------------------------------------------
Subject: 88)  TOPIC: LIST WIDGET

-----------------------------------------------------------------------------
Subject: 89)  Should I create an XmList widget as a child of automatic
XmScrolledWindow or use the XmCreateScrolledList() convenience function?

Answer: With most implementations, the convenience function use internal hooks
to give somewhat better scrolling performance.

Thanks to Ken Lee, kenton@rahul.net

-----------------------------------------------------------------------------
Subject: 90)  How do I best put a new set of items into a list?

Answer: Set the new list count and list by XtSetArgs and install them by
XtSetValues.

    XmString list[SIZE];
    int list_size;

    XtSetArg (args[n], XmNitemCount, list_size); n++;
    XtSetArg (args[n], XmNitems, list); n++;
    XtSetValues (w, args, n);


or similarly with XtVaSetValues:


    XtVaSetValues (w,
       XmNitemCount, list_size,
       XmNitems, list,
       NULL);


Each time the list is reset by this the old contents are freed by the widget
and the new supplied list is copied.  Do *not* free the old list of items
yourself as this would result in the space being freed twice.  It is not
necessary to remove the items one at a time, nor to "zero" out the list first.

-----------------------------------------------------------------------------
Subject: 91)  Can I have strings with different fonts in a list?

Answer: Yes. The strings are XmStrings. Each one can be created using a
different character set using a different font.


-----------------------------------------------------------------------------
Subject: 92)  Can I get a bitmap to show in a list item like I can in a Label?
I want to place a bitmap along with some normal text in my list items.

Answer: No. The list contains XmStrings, and these only allow text in various
character sets. The workaround is to define your font containing the icons you
want. Then you can create a fontlist containing your icon font and the font
you want the text in, and then make your items multi-segment XmStrings where
the first segment contains the code of the icon you want with a charset that
matches the icon font in your fontlist and the second segment with a charset
matching the text font.


-----------------------------------------------------------------------------
Subject: 93)  Can I have items with different colours in a list?

Answer: No.  The list contains XmStrings, and these only allow text in various
character sets. Since the items are XmStrings, you can already change the font
of an item by replacing it with an item with the same text and a different
charset tag.  Adding support for color would require modification of the
internal data structure in XmList as well as modification to the drawing
routines.  A possible workaround is to use a rowcolumn of buttons which can be
individually set.  However, you would have to do all list functionality
yourself.


-----------------------------------------------------------------------------
Subject: 94)  Can I grey out an item in a list?  I want to make insensitive
items in a list so that they cannot be selected.

Answer:

From W. Scott Meeks of OSF:

Unfortunately, you can't do it directly since the list items aren't individual
widgets.  We've had other requests for this technology, but it didn't make the
cut for 1.2; it should be in some future release.

However, you can probably fake it in your application with some difficulty.
First, a list item is an XmString, so you can specify a different charset for
the item than for other items in the list and then specify a font in the
list's fontlist that matches the charset and gives you the visual you want.
The next problem is making the item unselectable.  One idea would be to have
the application keep track of the insensitive items and the items currently
selected.  Then you would set up a selection callback that when called would
check the item selected against the list of insensitive items and if the
selected item matched would deselect that item and reselect the previously
selected items.  Otherwise it would just update the application's list of
selected items.  The major drawback with this approach is that you'll get
flashing whenever the list selects an item and your application immediately
de-selects.  Unfortunately I can't think of a way around this without mucking
with the list internals.

Another alternative suggested is to use instead a column of say read only text
widgets which you can make insensitive.

-----------------------------------------------------------------------------
Subject: 95)  Can I have multi-line items in a list?
[Last modified: August 92]

Answer: Motif 1.0 and 1.1 both have problems with multi-line items in a list.
They should work okay in Motif 1.2.

-----------------------------------------------------------------------------
Subject: 96)  How can I tell the position of selected items in a list?

[Last modified: Oct 92]

Answer: From  W. Scott Meeks:

1) All XmList selection callbacks get an XmListCallbackStruct which includes
the item selected and its position.  In addition, the multiple and extended
selection callbacks also get a list of the selected items.  This approach
requires that your application saves this information if you need it outside
of the immediate callback.

2) At any time you can XtGetValues the XmNselectedItems and
XmNselectedItemCount resources.  The problem with this approach is that
identical items may or may not show up in multiple times in this list and the
position in the selectedItems list may not relate directly to the position in
the items list.

3) You can call XmListGetSelectedPos on the list widget.  This will return a
list of the positions of all selected items.

-----------------------------------------------------------------------------
Subject: 97)  TOPIC: FILE SELECTION BOX WIDGET

-----------------------------------------------------------------------------
Subject: 98)  What is libPW.a and do I need it?  My manual says I need to link
in libPW.a to use the File Selection Box.  I can't find it on my system.

[Last modified: Sept 94]

Answer: The libPW.a is the Programmers Workbench library which is an ATT
product not included in Berkeley based systems, hence it is not found in SunOS
or Ultrix, but is found on HP-UX (a Berkeley/ATT hybrid which chose ATT in
this case).  It contains the regex(3) routines (regcmp, regex).  Some systems
which don't have these in the libc.a need to link with -lPW.  Some systems
which have the regex(3) routines in there also have the libPW.a.  If you have
regex(3) in libc, and it works, don't link with libPW.  If you don't have
regex(3) in libc, and you don't have a libPW, then check some sites on the net
for public domain replacements (several exist), or call your vendor.

In most versions of Motif (see the doco), you can compile FileSB.c with
-DNO_REGEX if you don't have it.


Casper H.S. Dik (asper@fwi.uva.nl), Faculty of Mathematics & Computer Science,
University of Amsterdam, sent this update for Solaris 2.x users:

The regex and regcmp function are part of libgen in SVR4.  Motif applications
should be linked with -lgen. (However, some SVR4 implementations, especially
those of vendors that once shipped SVR3 still contain libPW.)

On Solaris 2.x system, you'll need libgen which is located in /usr/ccs/lib.

-----------------------------------------------------------------------------
Subject: 99)  What are these compile errors: Undefined symbol _regcmp and
_regex?

[Last modified: Sept 94]

Answer: You need to link in the libPW or libgen library - see previous
question.


-----------------------------------------------------------------------------
Subject: 100)  What's wrong with the Motif 1.0 File Selection Box?  I can't
set the directory, change the directory or get the file mask to work.

Answer: The 1.0 File Selection Box is broken, and these don't work.  They
weren't fixed until Motif 1.04.  Use these later versions of 1.0 or switch to
Motif 1.1 where it changed a lot.

Joe Hildebrand has a work-around for some of this: Before popping up an
XmFileSelectionDialog, change to the directory you want.  When a file is
selected, check if it is a directory, so that we can change to it.  i.e.

static void show_file_box_CB(w, client_data, call_data)
   Widget               w;
   Widget               client_data;
   XmAnyCallbackStruct  *call_data;
{
   chdir("/users/hildjj/files");
   XtManageChild(client_data);
}

static void val_save(w, client_data, call_data)
   Widget       w;
   Widget       client_data;
   XmSelectionBoxCallbackStruct *call_data;
{
   struct stat buf;  /* struct stat is defined in stat.h */
   char *filename;

   /* get the file name from the FileSelectionBox */
   filename = SmX(call_data->value);

   /* get the status of the file named filename, and put it into buf */
   if (!stat(filename, &buf))
   {
      /* if it's a directory */
      /* if it's a directory */
      if(S_ISDIR(buf.st_mode))
      {
         /* change to that directory, and update the FileSelectionBox */
        chdir(filename);
        XmFileSelectionDoSearch(w, NULL);
      }
      else
         /* if it's a regular file */
         if(S_ISREG(buf.st_mode))
            /* ask if it should be overwritten */
            XtManageChild(valbox);
         else
            /* it's another kind of file.  What type, i can't think of,
               but it might happen */
            pop_up_error_box(client_data, "Error saving file");
   }
   else  /* we couldn't get the file status */
   {
      /* if it's because the file doesn't exist, we're golden */
      if (errno == ENOENT)
         save_file();
      else   /* there is some other problem getting the status.
                e.g. bad path */
         pop_up_error_box(client_data, "Error saving file");
   }
}

this still doesn't implement the file masking stuff.


-----------------------------------------------------------------------------
Subject: 101)+ What's wrong with the FileSelectionBox under Solaris?

[Last modified: Apr 95]

Answer: Jim Guyton (guyton@burton.cs.colorado.edu) writes:

While not strictly a Motif problem, this one had me confused for [awhile].

If under Solaris the entries in a FileSelectionBox look strange and seem to be
missing the first two characters of many filenames, then be sure you're
linking -lc before -lucb.

If on the other hand, the filenames look strange and seem to have two garbage
characters in front of every filename, be sure to link -lucb before -lc.

There are two versions of readdir().  The one in -lucb returns a structure
that has the filename at an offset of 8 bytes (which matches
/usr/ucbinclude/sys/dir.h).

But the version in -lc returns the filename at an offset of 10 bytes (which
matches /usr/include/dirent.h).

So depending on how Motif was built for your Solaris, vs. how you link your
application, your filenames could be two bytes off in either direction.

-----------------------------------------------------------------------------
Subject: 102)  TOPIC: FORM WIDGET


-----------------------------------------------------------------------------
Subject: 103)  Why don't labels in a Form resize when the label is changed?
I've got some labels in a form. The labels don't resize whenever the label
string resource is changed. As a result, the operator has to resize the window
to see the new label contents. I am using Motif 1.1.

Answer: This problem may happen to any widget inside a Form widget. The
problem was that the Form will resize itself when it gets geometry requests
from its children. If its preferred size is not allowed, the Form will
disallow all geometry requests from its children. The workaround is that you
should set any ancestor of the Form to be resizable. For the shell which
contains the Form you should set the shell resource XmNallowShellResize to be
True (by default, it is set to FALSE).  There is currently an inconsistency on
how resizing is being done, and it may get fixed in Motif 1.2.

From db@sunbim.be (Danny Backx)

Basically what you have to do is set the XmNresizePolicy on the Form to
XmRESIZE_NONE.  The facts seem to be that XmRESIZE_NONE does NOT mean "do not
allow resizes".  You may also have to set XmNresizable on the form to True.

-----------------------------------------------------------------------------
Subject: 104)  How can I center a widget in a form?

Answer: One of Motif's trickier questions.  The problems are that: Form gives
no support for centering, only for edge attachments, and the widget must stay
in the center if the form or the widget is resized.  Just looking at
horizontal centering (vertical is similar) some solutions are:

 a.  Use the table widget instead of Form.

 b.  A hack free solution is from Dan Heller:

     /* Written by Dan Heller.  Copyright 1991, O'Reilly && Associates.
      * This program is freely distributable without licensing fees and
      * is provided without guarantee or warranty expressed or implied.
      * This program is -not- in the public domain.  This program is
      * taken from the Motif Programming Manual, O'Reilly Volume 6.
      */

     /* corners.c -- demonstrate widget layout management for a
      * BulletinBoard widget.  There are four widgets each labeled
      * top-left, top-right, bottom-left and bottom-right.  Their
      * positions in the bulletin board correspond to their names.
      * Only when the widget is resized does the geometry management
      * kick in and position the children in their correct locations.
      */
     #include <Xm/BulletinB.h>
     #include <Xm/PushBG.h>

     char *corners[] = {
         "Top-Left", "Top-Right", "Bottom-Left", "Bottom-Right",
     };

     static void resize();

     main(argc, argv)
     int argc;
     char *argv[];
     {
         Widget toplevel, bboard;
         XtAppContext app;
         XtActionsRec rec;
         int i;

         /* Initialize toolkit and create toplevel shell */
         toplevel = XtVaAppInitialize(&app, "Demos", NULL, 0,
             &argc, argv, NULL, NULL);

         /* Create your standard BulletinBoard widget */
         bboard = XtVaCreateManagedWidget("bboard",
             xmBulletinBoardWidgetClass, toplevel, NULL);

         /* Set up a translation table that captures "Resize" events
          * (also called ConfigureNotify or Configure events).  If the
          * event is generated, call the function resize().
          */
         rec.string = "resize";
         rec.proc = resize;
         XtAppAddActions(app, &rec, 1);
         XtOverrideTranslations(bboard,
             XtParseTranslationTable("<Configure>: resize()"));

         /* Create children of the dialog -- a PushButton in each corner. */
         for (i = 0; i < XtNumber(corners); i++)
             XtVaCreateManagedWidget(corners[i],
                 xmPushButtonGadgetClass, bboard, NULL);

         XtRealizeWidget(toplevel);
         XtAppMainLoop(app);
     }

     /* resize(), the routine that is automatically called by Xt upon the
      * delivery of a Configure event.  This happens whenever the widget
      * gets resized.
      */
     static void
     resize(w, event, args, num_args)
     CompositeWidget w;   /* The widget (BulletinBoard) that got resized */
     XConfigureEvent *event;  /* The event struct associated with the event */
     String args[]; /* unused */
     int *num_args; /* unused */
     {
         WidgetList children;
         int width = event->width;
         int height = event->height;
         Dimension w_width, w_height;
         short margin_w, margin_h;

         /* get handle to BulletinBoard's children and marginal spacing */
         XtVaGetValues(w,
             XmNchildren, &children,
             XmNmarginWidth, &margin_w,
             XmNmarginHeight, &margin_h,
             NULL);

         /* place the top left widget */
         XtVaSetValues(children[0],
             XmNx, margin_w,

             XmNy, margin_h,
             NULL);

         /* top right */
         XtVaGetValues(children[1], XmNwidth, &w_width, NULL);

         /* To Center a widget in the middle of the BulletinBoard (or Form),
          * simply call:
          *   XtVaSetValues(widget,
               XmNx,    (width - w_width)/2,
               XmNy,    (height - w_height)/2,
               NULL);
          * and return.
          */
         XtVaSetValues(children[1],
             XmNx, width - margin_w - w_width,
             XmNy, margin_h,
             NULL);
         /* bottom left */
         XtVaGetValues(children[2], XmNheight, &w_height, NULL);
         XtVaSetValues(children[2],

             XmNx, margin_w,
             XmNy, height - margin_h - w_height,
             NULL);
         /* bottom right */
         XtVaGetValues(children[3],
             XmNheight, &w_height,
             XmNwidth, &w_width,
             NULL);
         XtVaSetValues(children[3],
             XmNx, width - margin_w - w_width,
             XmNy, height - margin_h - w_height,
             NULL);
     }

 c.  No uil solution has been suggested, because of the widget size problem

-----------------------------------------------------------------------------
Subject: 105)  How do I line up two columns of widgets of different types?  I
have a column of say label widgets, and a column of text widgets and I want to
have them lined up horizontally. The problem is that they are of different
heights. Just putting them in a form or rowcolumn doesn't line them up
properly because the label and text widgets are of different height.

If you want the geometry to look like this

          -------------------------------------
         |          -------------------------- |
         |a label  |Some text                 ||
         |          -------------------------- |
                           ------------------- |
         |a longer label  |Some more text     ||
         |                 ------------------- |
         |                    ---------------- |
         |a very long label  |Even more text  ||
         |                    ---------------- |
          -------------------------------------

try

/* Written by Dan Heller.  Copyright 1991, O'Reilly && Associates.
 * This program is freely distributable without licensing fees and
 * is provided without guarantee or warranty expressed or implied.
 * This program is -not- in the public domain.  This program is
 * taken from the Motif Programming Manual, O'Reilly Volume 6.
 */

/* text_form.c -- demonstrate how attachments work in Form widgets.
 * by creating a text-entry form type application.
 */

#include <Xm/PushB.h>
#include <Xm/PushBG.h>
#include <Xm/LabelG.h>
#include <Xm/Text.h>
#include <Xm/Form.h>

char *prompts[] = {
    "Name:", "Phone:", "Address:",
    "City:", "State:", "Zip:",
};

main(argc, argv)
int argc;
char *argv[];
{
    Widget toplevel, mainform, subform, label, text;
    XtAppContext app;
    char buf[32];
    int i;

    toplevel = XtVaAppInitialize(&app, "Demos", NULL, 0,
        &argc, argv, NULL, NULL);

    mainform = XtVaCreateWidget("mainform",
        xmFormWidgetClass, toplevel,
        NULL);

    for (i = 0; i < XtNumber(prompts); i++) {
        subform = XtVaCreateWidget("subform",
            xmFormWidgetClass,   mainform,
            /* first one should be attached for form */
            XmNtopAttachment,    i? XmATTACH_WIDGET : XmATTACH_FORM,
            /* others are attached to the previous subform */
            XmNtopWidget,        subform,
            XmNleftAttachment,   XmATTACH_FORM,
            XmNrightAttachment,  XmATTACH_FORM,
            NULL);
        label = XtVaCreateManagedWidget(prompts[i],
            xmLabelGadgetClass,  subform,
            XmNtopAttachment,    XmATTACH_FORM,
            XmNbottomAttachment, XmATTACH_FORM,
            XmNleftAttachment,   XmATTACH_FORM,
            XmNalignment,        XmALIGNMENT_BEGINNING,
            NULL);
        sprintf(buf, "text_%d", i);
        text = XtVaCreateManagedWidget(buf,
            xmTextWidgetClass,   subform,
            XmNtopAttachment,    XmATTACH_FORM,
            XmNbottomAttachment, XmATTACH_FORM,
            XmNrightAttachment,  XmATTACH_FORM,
            XmNleftAttachment,   XmATTACH_WIDGET,
            XmNleftWidget,       label,
            NULL);
        XtManageChild(subform);
    }
    /* Now that all the forms are added, manage the main form */
    XtManageChild(mainform);

    XtRealizeWidget(toplevel);
    XtAppMainLoop(app);
}

If you resize horizontally it stretches the text widgets.  If you resize
vertically it leaves space under the bottom (if you don't resize, this is not
problem).

If you want the text widgets to be lined up on the left, as in

          ----------------------------------------
         |                    ------------------- |
         |          a label  |Some text          ||
         |                    ------------------- |
                              ------------------- |
         |   a longer label  |Some more text     ||
         |                    ------------------- |
         |                    ------------------- |
         |a very long label  |Even more text     ||
         |                    ------------------- |
          ----------------------------------------

try this

/* Written by Dan Heller.  Copyright 1991, O'Reilly && Associates.
 * This program is freely distributable without licensing fees and
 * is provided without guarantee or warranty expressed or implied.
 * This program is -not- in the public domain.  This program is
 * taken from the Motif Programming Manual, O'Reilly Volume 6.
 */

/* text_entry.c -- This demo shows how the RowColumn widget can be
 * configured to build a text entry form.  It displays a table of
 * right-justified Labels and Text widgets that extend to the right
 * edge of the Form.
 */
#include <Xm/LabelG.h>
#include <Xm/RowColumn.h>
#include <Xm/Text.h>

char *text_labels[] = {
    "Name:", "Phone:", "Address:", "City:", "State:", "Zip:",
};

main(argc, argv)
int argc;
char *argv[];
{
    Widget toplevel, rowcol;
    XtAppContext app;
    char buf[8];
    int i;

    toplevel = XtVaAppInitialize(&app, "Demos", NULL, 0,
        &argc, argv, NULL, NULL);

    rowcol = XtVaCreateWidget("rowcolumn",
        xmRowColumnWidgetClass, toplevel,
        XmNpacking,        XmPACK_COLUMN,
        XmNnumColumns,     XtNumber(text_labels),
        XmNorientation,    XmHORIZONTAL,
        XmNisAligned,      True,
        XmNentryAlignment, XmALIGNMENT_END,
        NULL);

    /* simply loop thru the strings creating a widget for each one */
    for (i = 0; i < XtNumber(text_labels); i++) {
        XtVaCreateManagedWidget(text_labels[i],
            xmLabelGadgetClass, rowcol,
            NULL);
        sprintf(buf, "text_%d", i);
        XtVaCreateManagedWidget(buf,
            xmTextWidgetClass, rowcol,
            NULL);
    }

    XtManageChild(rowcol);
    XtRealizeWidget(toplevel);
    XtAppMainLoop(app);
}

This makes all objects exactly the same size.  It does not resize in nice
ways.

If you want the text widgets lined up on the left, and the labels to be the
size of the longest string, resizing nicely both horizontally and vertically,
as in

         -------------------------------------
        |                    ---------------- |
        |          a label  |Some text       ||
        |                    ---------------- |
                             ---------------- |
        |   a longer label  |Some more text  ||
        |                    ---------------- |
        |                    ---------------- |
        |a very long label  |Even more text  ||
        |                    ---------------- |
         -------------------------------------


Answer: Do this: to get the widgets lined up horizontally, use a form but
place the widgets using XmATTACH_POSITION.  In the example, attach the top of
the first label to the form, the bottomPosition to 33 (33% of the height).
Attach the topPosition of the second label to 33 and the bottomPosition to 66.
Attach the topPosition of the third label to 66 and the bottom of the label to
the form.  Do the same with the text widgets.

To get the label widgets lined up vertically, use the right attachment of
XmATTACH_OPPOSITE_WIDGET: starting from the one with the longest label, attach
widgets on the right to each other. In the example, attach the 2nd label to
the third, and the first to the second.  To get the text widgets lined up,
just attach them on the left to the labels.  To get the text in the labels
aligned correctly, use XmALIGNMENT_END for the XmNalignment resource.


        /* geometry for label 2
        */
        n = 0;
        XtSetArg (args[n], XmNalignment, XmALIGNMENT_END); n++;
        XtSetArg (args[n], XmNleftAttachment, XmATTACH_FORM); n++;
        XtSetArg (args[n], XmNbottomAttachment, XmATTACH_FORM); n++;
        XtSetArg (args[n], XmNtopAttachment, XmATTACH_POSITION); n++;
        XtSetArg (args[n], XmNtopPosition, 66); n++;
        XtSetValues (label[2], args, n);

        /* geometry for label 1
        */
        n = 0;
        XtSetArg (args[n], XmNalignment, XmALIGNMENT_END); n++;
        XtSetArg (args[n], XmNbottomAttachment, XmATTACH_POSITION); n++;
        XtSetArg (args[n], XmNbottomPosition, 66); n++;
        XtSetArg (args[n], XmNtopAttachment, XmATTACH_POSITION); n++;
        XtSetArg (args[n], XmNtopPosition, 33); n++;
        XtSetArg (args[n], XmNleftAttachment, XmATTACH_FORM); n++;
        XtSetArg (args[n], XmNrightAttachment, XmATTACH_OPPOSITE_WIDGET); n++;
        XtSetArg (args[n], XmNrightWidget, label[2]); n++;
        XtSetValues (label[1], args, n);

        /* geometry for label 0
        */
        n = 0;
        XtSetArg (args[n], XmNalignment, XmALIGNMENT_END); n++;
        XtSetArg (args[n], XmNbottomAttachment, XmATTACH_POSITION); n++;
        XtSetArg (args[n], XmNbottomPosition, 33); n++;
        XtSetArg (args[n], XmNtopAttachment, XmATTACH_FORM); n++;
        XtSetArg (args[n], XmNleftAttachment, XmATTACH_FORM); n++;
        XtSetArg (args[n], XmNrightAttachment, XmATTACH_OPPOSITE_WIDGET); n++;
        XtSetArg (args[n], XmNrightWidget, label[1]); n++;
        XtSetValues (label[0], args, n);

        /* geometry for text 0
        */
        n = 0;
        XtSetArg (args[n], XmNtopAttachment, XmATTACH_FORM); n++;
        XtSetArg (args[n], XmNbottomAttachment, XmATTACH_POSITION); n++;
        XtSetArg (args[n], XmNbottomPosition, 33); n++;
        XtSetArg (args[n], XmNrightAttachment, XmATTACH_FORM); n++;
        XtSetArg (args[n], XmNleftAttachment, XmATTACH_WIDGET); n++;
        XtSetArg (args[n], XmNleftWidget, label[0]); n++;
        XtSetValues (text[0], args, n);

        /* geometry for text 1
        */
        XtSetArg (args[n], XmNtopAttachment, XmATTACH_POSITION); n++;
        XtSetArg (args[n], XmNtopPosition, 33); n++;
        XtSetArg (args[n], XmNbottomAttachment, XmATTACH_POSITION); n++;
        XtSetArg (args[n], XmNbottomPosition, 66); n++;
        XtSetArg (args[n], XmNrightAttachment, XmATTACH_FORM); n++;
        XtSetArg (args[n], XmNleftAttachment, XmATTACH_WIDGET); n++;
        XtSetArg (args[n], XmNleftWidget, label[1]); n++;
        XtSetValues (text[1], args, n);

        /* geometry for text 2
        */
        XtSetArg (args[n], XmNtopAttachment, XmATTACH_POSITION); n++;
        XtSetArg (args[n], XmNtopPosition, 66); n++;
        XtSetArg (args[n], XmNrightAttachment, XmATTACH_FORM); n++;
        XtSetArg (args[n], XmNleftAttachment, XmATTACH_WIDGET); n++;
        XtSetArg (args[n], XmNleftWidget, label[2]); n++;
        XtSetArg (args[n], XmNbottomAttachment, XmATTACH_FORM); n++;
        XtSetValues (text[2], args, n);


-----------------------------------------------------------------------------
Subject: 106)  TOPIC: PUSHBUTTON WIDGET

-----------------------------------------------------------------------------
Subject: 107)  Why can't I use accelerators on buttons not in a menu?

[Last modified: Sept 94]

Answer:

It is apparently a difficult feature to implement, but OSF are considering
this for the future. It is problematic trying to use the Xt accelerators since
the Motif method interferes with this.  one workaround suggested is to
duplicate your non-menu button by a button in a menu somewhere, which does
have a menu-accelerator installed.  When the user invokes what they think is
the accelerator for the button they can see Motif actually invokes the button
on the menu that they can't see at the time. Another method is described below
and was contributed by Harald Albrecht of Institute of Geometry and Practical
Mathematics Rhine Westphalia Technical University Aachen (RWTH Aachen),
Germany


From albrecht@igpm.rwth-aachen.de Thu Jul  8 11:44:21 1993

NOTE: Pointers to a more recent solution by the same author follow this code
sample.

My work-around of this problem looks like this: (I've written that code for a
Motif Object Library in C++ so please forgive me for being object orientated!)
The hack consists of a rewritten message loop which checks for keypresses
<MAlt>+<key>. If MessageLoop() finds such a keypress HandleAcc() ist called
and the widget tree is searched for a suitable widget with the right mnemonic.


// --------------------------------------------------------------------------
// traverse the widget tree starting with the given widget.
//
BOOL TraverseWidgetTree(Widget w, char *pMnemonic, XKeyEvent *KeyEvent)
{
    Widget               wChild;
    WidgetList           ChildList;
    int                  NumChilds, Child;
    KeySym               LabelMnemonic;
    char                 *pMnemonicString;

// Check if the widget is a subclass of label -- then it may have an
// accelerator attached...
    if ( XtIsSubclass(w, xmLabelWidgetClass) ) {
// ok. Now: get the widget's mnemonic, convert it to ASCII and compare
// it with the Key we're looking for.
        XtVaGetValues(w, XmNmnemonic, &LabelMnemonic, NULL);
        pMnemonicString = XKeysymToString(LabelMnemonic);
        if ( pMnemonicString &&
             (strcasecmp(pMnemonicString, pMnemonic) == 0) ) {
            // stimulate the keypress
            XmProcessTraversal((Widget)w, XmTRAVERSE_CURRENT);
            KeyEvent->type      = KeyPress;
            KeyEvent->window    = XtWindow(w);
            KeyEvent->subwindow = XtWindow(w);
            KeyEvent->state     = 0;
            KeyEvent->keycode   =
                XKeysymToKeycode(XtDisplay(w), XK_space);
            XSendEvent(XtDisplay(w), XtWindow(w),
                       True,
                       ButtonPressMask, (XEvent*) KeyEvent);
            KeyEvent->type      = KeyRelease;
            XSendEvent(XtDisplay(w), XtWindow(w),
                       True,
                       ButtonReleaseMask, (XEvent*) KeyEvent);
            return True;
        }
    }
// if this widget is a subclass of Composite check all the widget's
// childs.
    if ( XtIsSubclass(w, compositeWidgetClass) ) {
// if we're in a menu (or something like that) forget this leaf of the
// widget tree!
        if ( XtIsSubclass(w, xmRowColumnWidgetClass) ) {
            unsigned char RowColumnType;
            XtVaGetValues(w, XmNrowColumnType, &RowColumnType, NULL);
            if ( RowColumnType != XmWORK_AREA ) return False;
        }
        XtVaGetValues(w, XmNchildren, &ChildList,
                         XmNnumChildren, &NumChilds, NULL);
        for ( Child = 0; Child < NumChilds; ++Child ) {
            wChild = ChildList[Child];
            if ( TraverseWidgetTree(wChild, pMnemonic, KeyEvent) )
                return True;
        }
    }
    return False;
} // TraverseWidgetTree
// --------------------------------------------------------------------------
// handle accelerators (keypress MAlt + key)
//
#define MAX_MAPPING 10
BOOL HandleAcc(Widget w, XEvent *event)
{
           Widget         widget, OldWidget;
    static char           keybuffer[MAX_MAPPING];
           int            CharCount;
    static XComposeStatus composeStatus;

// convert KeyPress to ASCII
    CharCount = XLookupString((XKeyEvent*) event,
                              keybuffer, sizeof(keybuffer),
                              NULL, &composeStatus);
    keybuffer[CharCount] = 0;
// Only one char is alright -- then search the widget tree for a widget
// with the right mnemonic
    if ( CharCount == 1 ) {
        keybuffer[0] = tolower(keybuffer[0]);
        widget = w;
        while ( (widget != NULL) &&
                !XtIsSubclass(widget, shellWidgetClass) ) {
            OldWidget = widget; widget = XtParent(widget);
        }
        if ( !widget ) widget = OldWidget;
        return TraverseWidgetTree(widget,
                                  keybuffer, (XKeyEvent*) event);
    }
    return False; // no-one found.
} // HandleAcc
// --------------------------------------------------------------------------
// modified message loop
// loops until the Boolean pFlag points to is set to False
void MessageLoop(Boolean *pFlag)
{
    XEvent nextEvent;

    while ( *pFlag ) {
        if ( XtAppPending(AppContext) ) {
            XtAppNextEvent(AppContext, &nextEvent);
            if ( nextEvent.type == KeyPress ) {
// Falls es ein Tastendruck ist, bei dem auch noch die ALT-Taste
// (=Modifier 1) gedrueckt ist, koennte es ein Accelerator sein!
                if ( nextEvent.xkey.state & Mod1Mask )
                    if ( HandleAcc(XtWindowToWidget(nextEvent.xkey.display,
                                                    nextEvent.xkey.window),
                                   &nextEvent) )
                        continue; // Mitteilung konnte ausgeliefert werden
                                  // und darf daher nicht den ueblichen
                                  // Weg gehen!
            }
            XtDispatchEvent(&nextEvent);
        }
    }
} // TApplication::MessageLoop


Harald Albrecht albrecht@igpm.rwth-aachen.de Institute of Geometry and
Practical Mathematics Rhine Westphalia Technical University Aachen (RWTH
Aachen), Germany

NOTE: Harald Albrecht has re-designed his solution so that you can assign
hotkeys to *every* widget by placing a label near that widget. Get the code
from:

  ftp.informatik.rwth-aachen.de (137.226.112.172)
  in: /pub/packages/Mnemonic/Mnemonic.tar.gz

or from the WWW:

   file://134.130.161.30/arc/pub/unix/html/motifcorner.html

-----------------------------------------------------------------------------
Subject: 108)  TOPIC: ICON WIDGET

-----------------------------------------------------------------------------
Subject: 109)  How can I add multi-colored icons to my application?

[Last modified: Sept 94]

Answer: Get the Xpm (X PixMap file format) widgets.  There is a tutorial in
the directory ftp.x.org:/contrib/docs/xpm_tut and source code in the directory
ftp.x.org:/contrib/libraries.  Documentation is part of the tar file found in
/contrib/libraries.  The /contrib/libraries directory also contains xpm.FAQ.

There is also a mailing list: xpm-talk@sophia.inria.fr.

-----------------------------------------------------------------------------
Subject: 110)  How can I convert a Sun/GIF/TIFF image to a pixmap?

[Last modified: Oct 94]

Answer: An application called "xv" (interactive image display for the X Window
System) is useful for displaying and converting many image formats. From the
man page:

     xv is an X11 program that displays images in the GIF,  JPEG,
     TIFF,  PBM, PGM, PPM, X11 bitmap, PDS/VICAR, Sun Rasterfile,
     and PM formats on 1-, 2-, 4-, 6-, 8-, 16-, 24-, and 32-bit X
     displays.   xv  will also read compress-ed versions of these
     files.

You can get "xv" (shareware by John Bradley et al) from:

        ftp://ftp.cis.upenn.edu/pub/xv
or:
        ftp://ftp.x.org/R5contrib/xv-3.01.tar.gz

Another useful conversion package is "pbm" (portable bitmap file format) by
Jef Poskanzer et al, available from:

        ftp://ftp.x.org/R5contrib/netpbm-1mar1994.tar.gz
or:
        ftp://ftp.x.org/R5contrib/pbmplus10dec91.tar.Z (much older :-)

You might also want to check the X11 FAQ for additional conversion options:

        ftp://ftp.x.org/contrib/faqs/FAQ

-----------------------------------------------------------------------------
Subject: 111)  TOPIC: SCALE WIDGET

-----------------------------------------------------------------------------
Subject: 112)  Can the XmScale widget have arrows or tick marks in Motif 2.0?

Answer: Daniel Dardailler (daniel@x.org) (http://www.x.org/people/daniel)
writes:

In 2.0, Scale gets arrows (on both sides or same side), thermometer look,
thumb slider option, tick marks, and editable resource. For a picture, see:

    http://www.osf.org:8001:/motif/Motif20.html

-----------------------------------------------------------------------------
Subject: 113)  TOPIC: LABEL WIDGET

-----------------------------------------------------------------------------
Subject: 114)  How can I align the text in a label (button, etc) widget?

Answer: The alignment for the label widget is controlled by the resource
XmNalignment, and the default centers the text. Use this resource to change it
to left or right alignment.  However, when the label (or any descendant) is in
a row column, and XmNisAligned is True (the default), the row column aligns
text using its resource XmNentryAlignment. If you want simultaneous control
over all widgets use this, but otherwise turn XmNisAligned off and do it
individually.


-----------------------------------------------------------------------------
Subject: 115)  Why doesn't label alignment work in a RowColumn?

Answer: RowColumn has a  resource XmNisAligned (default True) and and
XmNentryAlignment (default XmALIGNMENT_BEGINNING).  These control alignment of
the labelString in Labels and descendants. Set XmNisAligned to False to turn
this off.

-----------------------------------------------------------------------------
Subject: 116)  How can I set a multiline label?

[Last modified: Feb 95]

Answer: In .Xdefaults

      *XmLabel*labelString:             Here\nis\nthe\nLabel

This method does not seem to work in some of the older Motif 1.0 versions.

In code,

      char buf[128];
      XmString msg;
      sprintf(buf, "Here\nis\nthe\nLabel");
      msg = XmStringCreateLtoR(buf, XmSTRING_DEFAULT_CHARSET);
      XtSetArg (args[n], XmNlabelString, msg);

Gives a four line label, using the escape sequence \n for a newline.  Here's
another approach from Jean-Philippe Martin-Flatin <syj@ecmwf.co.uk>

#include <Xm/Xm.h>
#include <string.h>

/*-----------------------------------------------------
    Create a new XmString from a char*

    This function can deal with embedded 'newline' and
    is equivalent to XmStringCreateLtoR,
    except it does not use non AES compliant charset
    XmSTRING_DEFAULT_CHARSET
----------------------------------------------------*/
XmString xec_NewString(char *s)
{
    XmString xms1;
    XmString xms2;
    XmString line;
    XmString separator;
    char     *p;
    char     *t = XtNewString(s);   /* Make a copy for strtok not to */
                                    /* damage the original string    */


    separator = XmStringSeparatorCreate();
    p         = strtok(t,"\n");
    xms1      = XmStringCreateLocalized(p);

    while (p = strtok(NULL,"\n"))
    {
        line = XmStringCreateLocalized(p);
        xms2 = XmStringConcat(xms1,separator);
        XmStringFree(xms1);
        xms1 = XmStringConcat(xms2,line);
        XmStringFree(xms2);
        XmStringFree(line);
    }

    XmStringFree(separator);
    XtFree(t);
    return xms1;
}


Do not use XmStringCreateLocalized() - it does not process the newline
character in the way you want. [TBD - Does anyone know if this statement is
true? Originally, this was in reference to the obsolete XmStringCreateSimple
function....ksall@cen.com]

-----------------------------------------------------------------------------
Subject: 117)  How can I have a vertical label?

Answer: Make a multiline label with one character per line, as in the last
question. There is no way to make the text rotated by 90 degrees though.


-----------------------------------------------------------------------------
Subject: 118)  How can I have a Pixmap in a Label?

Answer: From Bob Hays (bobhays@spss.com)

    Pixmap px_disarm, px_disarm_insens;

    Widget Label1;
    Pixel   foreground, background;
    Arg     args[4];
    Arg     arg[] = {
                { XmNforeground, &foreground },
                { XmNbackground, &background }
    };

    Label1 = XmCreateLabel ( Shell1, "Label1",
                                       (Arg *) NULL, (Cardinal) 0 );
    XtGetValues ( Label1, arg, XtNumber ( arg ) );
    px_disarm =
      XCreatePixmapFromBitmapData(display,
                                DefaultRootWindow(display),
                                mtn_bits, mtn_width, mtn_height,
                                foreground,
                                background,
                                DefaultDepth(display,DefaultScreen(display)));
    px_disarm_insens =
      XCreatePixmapFromBitmapData(display,
                                DefaultRootWindow(display),
                                mtn_ins_bits, mtn_ins_width, mtn_ins_height,
                                foreground,
                                background,
                                DefaultDepth(display,DefaultScreen(display)));

    n = 0;
    XtSetArg(args[n], XmNlabelType, XmPIXMAP);  n++;
    XtSetArg(args[n], XmNlabelPixmap, px_disarm);  n++;
    XtSetArg(args[n], XmNlabelInsensitivePixmap, px_disarm_insens ); n++;
    XtSetValues ( Label1, args, n );
    XtManageChild(Label1);

That will cause the foreground and background of your pixmap to be inherited
from the one that would be used by OSF/Motif when the label is displayed.  The
advantage is that this will utilize any resource values the user may have
requested without looking explicitly into the resource database.  And, you
will have a pixmap handy if the application insensitizes the label (without an
XmNlabelInsensitivePixmap your label will go empty if made insensitive).

[Bob's original code was for a PushButton. Just change all Label to PushButton
for them.]

-----------------------------------------------------------------------------
Subject: 119)  TOPIC: DRAWING AREA WIDGET

-----------------------------------------------------------------------------
Subject: 120)  How can I send an expose event to a Drawing Area widget?  (or
any other, come to that). I want to send an expose event so that it will
redraw itself.

Answer: Use the Xlib call

        XClearArea(XtDisplay(w), XtWindow(w), 0, 0, 0, 0, True)

This clears the widget's window and generates an expose event in doing so.
The widgets expose action will then redraw it.  This uses a round trip
request.  An alternative, without the round trip is

from orca!mesa!rthomson@uunet.uu.net  (Rich Thomson):

    Widget da;
    XmDrawingAreaCallbackStruct da_struct;

    da_struct.reason = XmCR_EXPOSE;
    da_struct.event = (XEvent *) NULL;
    da_struct.window = XtWindow(da);

    XtCallCallbacks(da, XmNexposeCallback, (XtPointer) da_struct);


-----------------------------------------------------------------------------
Subject: 121)  How can I know when a DrawingArea has been resized?  It
generates an expose event whn it is enlarged, but not when it is shrunk.

Answer: Use the resize callback.

-----------------------------------------------------------------------------
Subject: 122)+ How can I create a drawing area widget with a non-default
visual type?

[Last modified: Apr 95]

Answer: The standard Motif drawing area does not support this.  You can,
however, easily create a subclass with a new Realize class method.  In SGI's
Motif, such a widget is called SgVisualDrawingArea.  Other Motif
implementations may have similar widgets.

Thanks to Ken Lee, kenton@rahul.net

-----------------------------------------------------------------------------
END OF PART FOUR

-----------------------------------------------------------------------------
Subject: 123)  TOPIC: MENUS

-----------------------------------------------------------------------------
Subject: 124)* How do I set the current choice in a radio box or an option
menu?

[Last modified: Apr 95]

Answer: Set the XmNmenuHistory resource on its RowColumn parent.

Thanks to Ken Lee, kenton@rahul.net

buser@tartan.com (Mark) sent this code fragment:

    Widget      menu;
    int         num_buttons;
    WidgetList  buttons;

    XtVaGetValues( simple_option_widget, XmNsubMenuId, &menu, NULL);

    XtVaGetValues( menu, XmNnumChildren, &num_buttons,
                XmNchildren, &buttons, NULL ) ;

 and change current selection with:

    XtVaSetValues( menu, XmNmenuHistory, buttons[index], NULL ) ;

    /* where index is between 0 and num_buttons */


-----------------------------------------------------------------------------
Subject: 125)  How do I make a menu choice insensitive if it was created with
XmVaCreateSimplePulldownMenu?

[Last modified: Sept 94]

Answer: According to the Motif manual, the buttons are named "button_n", where
"n" is an integer starting from 0.  You can use XtNameToWidget() to convert
these names to widget ID's.

Thanks to Ken Lee, kenton@rahul.net

-----------------------------------------------------------------------------
Subject: 126)  What can I put inside a menu bar?

Answer: You can only put cascade buttons in menu bars. No pushbuttons, toggle
buttons or gadgets are allowed. When you create a pulldown menu with parent a
menu bar, its real parent is a shell widget.

-----------------------------------------------------------------------------
Subject: 127)  Can I have a cascade button without a submenu in a pulldown
menu?

Answer: Yes you can. A cascade button has an activate callback which is called
when you click on it and it doesn't have a submenu. It can have a mnemonic,
but keyboard traversal using the arrow keys in the menu will skip over it.

-----------------------------------------------------------------------------
Subject: 128)  Should I have a cascade button without a submenu in a pulldown
menu?

Answer: No. This is forbidden by the style guide. Technically you can do it
(see previous question) but if you do it will not be Motif style compliant.
This is unlikely to change - if a "button" is important enough to be in a
pulldown menu bar with no pulldown, it should be a button elsewhere.  (Mind
you, you won't be able to put accelerators on it elsewhere though.)

-----------------------------------------------------------------------------
Subject: 129)  What is the best way to create popup menus?

[Last modified: August 92]

Susan Murdock Thompson (from OSF): In general, create a popupMenu as the child
from which you will be posting it from (ie: if you have a bulletinBoard with a
PushButton in it and want MB2 on the pushButton to post the popupMenu, create
the popupMenu as a child of the pushButton).  [This parent-child relationship
seems to make a big difference in the behavior of the popups.]  Add an event
handler to handle buttonPress events.  You'll need to check for the correct
button (what you've specified menuPost to be) before posting the menu.

To create a popup that can be accessible from within an entire client window,
create it as the child of the top-most widget (but not the shell) and add
event handlers for the top-most widget and children widgets.

ie:

{
  ....

  XtManageChild(rc=XmCreateRowColumn(Shell1, "rc", NULL, 0));
  XtManageChild(label = XmCreateLabel(rc, "label", NULL, 0));
  XtManageChild(text = XmCreateText(rc, "text", NULL, 0));
  XtManageChild(pushbutton = XmCreatePushButton(rc, "pushbutton", NULL, 0));

  n = 0;
  XtSetArg(args[n], XmNmenuPost, "<Btn3Down>"); n++;
  popup = XmCreatePopupMenu(rc, "popup", args, n);

  XtAddEventHandler(rc, ButtonPressMask, False, PostMenu3, popup);
  XtAddEventHandler(text, ButtonPressMask, False, PostMenu3, popup);
  XtAddEventHandler(label, ButtonPressMask, False, PostMenu3, popup);
  XtAddEventHandler(pushbutton, ButtonPressMask, False, PostMenu3, popup);

  XtManageChild(m1 = XmCreatePushButton(popup, "m1", NULL, 0));
  XtManageChild(m2 = XmCreatePushButton(popup, "m2", NULL, 0));
  XtManageChild(m3 = XmCreatePushButton(popup, "m3", NULL, 0));

  XtAddCallback(m1, XmNactivateCallback, SayCB, "button M1");
  XtAddCallback(m2, XmNactivateCallback, SayCB, "button M2");
  XtAddCallback(m3, XmNactivateCallback, SayCB, "button M3");
  ...
}

/* where PostMenu3 is ... */

PostMenu3 (w, popup, event)
Widget w;
Widget popup;
XButtonEvent * event;
{
  printf("menuPost = 3, button %d0, event->button);

  if (event->button != Button3)
    return;
  XmMenuPosition(popup, event);
  XtManageChild(popup);
}


-----------------------------------------------------------------------------
Subject: 130)  How do popup menus work?

[Last modified: August 92]

Answer:

When a popup menu is created as the child of a widget the menu system installs
a translation on the parent of the popup and descendants with an action which:
(1) when 3-rd button (the default for the menuPost resource) is pressed the
cursor changes and the mouse is grabbed for 5 seconds; (2) disables event
handlers on the descendants and the handlers are never called; (3) an event
handler installed on the parent works fine.

It is done so that the correct event handler will (in fact) be called.  There
is a grab with owner_events true.  The grab is released by a timer,  but
normally the posted menu shell puts up it's own grab.

If you only have widgets then you can use the subwindow field in the event to
identify the original widget.  If you have gadgets or other data that you want
to change the menu for (or use a specific menu for) then you must do a walk of
the parent's children to find the best match.

One thing to beware of is that even with the grab,  because the menu system
does a grab with owner events true, you must either have an event handler, or
nothing that will use the event on each widget in the hierarchy of the menu's
parent.  If a child widget has another event handler for button down, it may
swallow the event and do something else.

-----------------------------------------------------------------------------
Subject: 131)  Should I use translation tables or actions for popup menus?

[Last modified: August 92]

Answer: The original goal of popupMenus was that the user would not have to
specify an event handler to manage popupMenus; however, that did not become
reality.  Larry Rogers wrote:

> There appear to be two ways to manage popup menus.  I
> am curious what the correct way would be:

> 1.  Change the translation table of the widget with the
>    popup child to popup the menu.  Note that this does
>    not currently working for many widgets, because aug-
>    menting their translations, even for augment breaks
>    the widget.

> 2.  Add an event handler at creation to the widget; then
>    determine if the event that caused the event handler
>    to be called is the current button being used by the
>    menu as its activation button.

Susan Murdock Thompson (from OSF) replied: *Theoretically, you should be able
to do both.*  Our documentation says use event handlers.  Our tests for the
toolkit use event handlers and for UIL use translations.  (Although I tried an
event handler with a UIL test and it works).

-----------------------------------------------------------------------------
Subject: 132)  What are the known bugs in popup menus?
[Last modified: August 92]

Answer: As at Motif 1.1.4, the bugs for which an OSF PIR exists are:

   (3)  Menus not being sticky (ie: posted on a Btn CLICK)  [ Note:this
        problem occurs with OptionMenus as well]  (PIR 3435)

   (6)  Destroying a widget with an associated popupMenu results in
        "Warning: Attempt to remove non-existant passive grab"         (PIR
2972)

   (7)  Current documentation insufficient regarding requirements for
        success in using PopupMenus.  (PIR 3433)


-----------------------------------------------------------------------------
Subject: 133)  Can I have multiple popup menus on the same widget?

[Last modified: August 92]

Answer: If you want to have several popups (activated by different mouse
buttons) on the same widget..., well, that doesn't work yet.

If you want to have several popups on different children... that works.  But
don't put a popup on the parent (manager) widget, or it will rule!


-----------------------------------------------------------------------------
Subject: 134)  TOPIC: INPUT FOCUS

-----------------------------------------------------------------------------
Subject: 135)  How can I specify the widget that should have the keyboard
focus when my application starts up?  Answer: In Motif 1.2, use
XmNinitialFocus on the manager widget.

Thanks to Ken Lee, kenton@rahul.net

-----------------------------------------------------------------------------
Subject: 136)  How can I direct the keyboard input to a particular widget?

Answer: In Motif 1.1 call XmProcessTraversal(target, XmTRAVERSE_CURRENT).  The
widget (and all of its ancestors) does need to be realized BEFORE you call
this. Otherwise it has no effect.  XmProcessTraversal is reported to have many
bugs, so it may not work right.  A common occurrence is that it doesn't move
to the widget, but if you call XmProcessTraversal *twice* in a row, it will.
If you can't get it to work, try this from Kee Hinckley:

    // This insane sequence is as follows:
    //      On manage set up a focus callback
    //      On focus callback set up a timer (and get rid of focus callback!)
    //      On timer set the focus (which only works if the parent
    //      has the focus,
    //      which is why we went through all of this garbage)
    // There may be a better way, but I haven't time to try it now.
    //
    static void focusTO(void *data, XtIntervalId *) {
        XmProcessTraversal((Widget) data, XmTRAVERSE_CURRENT);
    }

    static void focusCB(Widget w, XtPointer data, XtPointer) {
        XtRemoveCallback(w, XmNfocusCallback, focusCB, data);
        XtAppAddTimeOut(XtWidgetToApplicationContext(w), 0, focusTO, data);
    }

    void OmXSetFocus(Widget parent, Widget w) {
        XtAddCallback(parent, XmNfocusCallback, focusCB, w);
    }


In Motif 1.0 call the undocumented _XmGrabTheFocus(target).

Do not use the X or Xt calls such as XtSetKeyboardFocus since this bypasses
the Motif traversal layer and can cause it to get confused.  This can lead to
odd keyboard behaviour elsewhere in your application.

-----------------------------------------------------------------------------
Subject: 137)  How can I have a modal dialog which has to be answered before
the application can continue?

[Last modified: Feb 95]

Answer: Note: J.-N. Meurisse (uunet!rc4.vub.ac.be!jnmeuris) sent a correction
to the following code fragment. Change:

        XtAddCallback(dialog, XmNpopdownCallback, ...)
to
        XtAddCallback(XtParent(dialog), XmNpopdownCallback, ...)

The answer depends on whether you are using the Motif window manager mwm or
not.  Test for this by XmIsMotifWMRunning.

The window manager mwm knows how to control event passing to dialog widgets
declared as modal. If the dialog is set to application modal, then no
interaction with the rest of the application can occur until the dialog is
destroyed or unmanaged.

Use the appropriate code in the following program.  There is followup
discussion after the program.


/* Written by Dan Heller.  Copyright 1991, O'Reilly && Associates.
 * This program is freely distributable without licensing fees and
 * is provided without guarantee or warranty expressed or implied.
 * This program is -not- in the public domain.  This program is
 * taken from the Motif Programming Manual, O'Reilly Volume 6.
 */

/*
 * ask_user.c -- create a pushbutton that posts a dialog box
 * that asks the user a question that requires an immediate
 * response.  The function that asks the question actually
 * posts the dialog that displays the question, waits for and
 * returns the result.
 */
#include <X11/Intrinsic.h>
#include <Xm/DialogS.h>
#include <Xm/SelectioB.h>
#include <Xm/RowColumn.h>
#include <Xm/MessageB.h>
#include <Xm/PushBG.h>
#include <Xm/PushB.h>

XtAppContext app;

#define YES 1
#define NO  2

/* main() --create a pushbutton whose callback pops up a dialog box */
main(argc, argv)
char *argv[];
int argc;
{
    Widget parent, button, toplevel;
    XmString label;
    void pushed();

    toplevel = XtAppInitialize(&app, "Demos",
        NULL, 0, &argc, argv, NULL, NULL, 0);

    label = XmStringCreateLocalized("/bin/rm *");
    button = XtVaCreateManagedWidget("button",
        xmPushButtonWidgetClass, toplevel,
        XmNlabelString,          label,
        NULL);
    XtAddCallback(button, XmNactivateCallback,
        pushed, "Remove Everything?");
    XmStringFree(label);

    XtRealizeWidget(toplevel);
    XtAppMainLoop(app);
}

/* pushed() --the callback routine for the main app's pushbutton. */
void
pushed(w, question)
Widget w;
char *question;
{
    if (AskUser(w, question) == YES)
        puts("Yes");
    else
        puts("No");
}

/*
 * AskUser() -- a generalized routine that asks the user a question
 * and returns the response.
 */
AskUser(parent, question)
char *question;
{
    static Widget dialog;
    XmString text, yes, no;
    static int answer;
    extern void response();

    answer = 0;
    if (!dialog) {
        dialog = XmCreateQuestionDialog(parent, "dialog", NULL, 0);
        yes = XmStringCreateLocalized("Yes");
        no = XmStringCreateLocalized("No");
        XtVaSetValues(dialog,
            XmNdialogStyle,        XmDIALOG_APPLICATION_MODAL,
            XmNokLabelString,      yes,
            XmNcancelLabelString,  no,
            NULL);
        XtSetSensitive(
            XmMessageBoxGetChild(dialog, XmDIALOG_HELP_BUTTON), False);
        XtAddCallback(dialog, XmNokCallback, response, &answer);
        XtAddCallback(dialog, XmNcancelCallback, response, &answer);
        /* if the user interacts via the system menu: */
/* SEE CORRECTION ABOVE */
        XtAddCallback(dialog, XmNpopdownCallback, response, &answer);
    }
    text = XmStringCreateLocalized(question);
    XtVaSetValues(dialog,
        XmNmessageString,      text,
        NULL);
    XmStringFree(text);
    XtManageChild(dialog);
    XtPopup(XtParent(dialog), XtGrabNone);

    /* while the user hasn't provided an answer, simulate XtMainLoop.
     * The answer changes as soon as the user selects one of the
     * buttons and the callback routine changes its value.  Don't
     * break loop until XtPending() also returns False to assure
     * widget destruction.
     */
    while (answer == 0 || XtAppPending(app))
        XtAppProcessEvent(app, XtIMAll);
    return answer;
}

/* response() --The user made some sort of response to the
 * question posed in AskUser().  Set the answer (client_data)
 * accordingly and destroy the dialog.
 */
void
response(w, answer, reason)
Widget w;
int *answer;
XmAnyCallbackStruct *reason;
{
    switch (reason->reason) {
        case XmCR_OK:
            *answer = YES;
            break;
        case XmCR_CANCEL:
            *answer = NO;
            break;
        default:
            *answer = NO;
            return;
    }
}


If you aren't running a window manager that acknowledges this hint, then you
may have to grab the pointer (and keyboard) yourself to make sure the user
doesn't interact with any other widget.  Change the grab flag in XtPopup to
XtGrabExclusive, and XtRemoveGrab(XtParent(w)) to the response() function.


-----------------------------------------------------------------------------
Subject: 138)  TOPIC: MEMORY AND SPEED

-----------------------------------------------------------------------------
Subject: 139)  When can I free data structures passed to or retrieved from
Motif?

Answer:
 In most cases, especially for XmStrings and XmFontLists, Motif copies data
passed to it or retrieved from it, so it may be freed immediately.  Server-
side resources, such as pixmaps and color cells, however, are not copied, so
should not be freed.  More recent versions of Motif are better than earlier
versions and exceptions should be documented.

Thanks to Ken Lee, kenton@rahul.net

-----------------------------------------------------------------------------
Subject: 140)  Why does my application grow in size?

[Last modified: Feb 95]

Answer: Motif 1.0 has many memory leaks, particularly in XmString
manipulation.  Switch to Motif 1.1. 1.2, or 2.0.

Answer: The Intrinsics have a memory leak in accelerator table management, and
Motif uses this heavily.  Avoid this by mapping/unmapping widgets rather than
creating/destroying them, or get  X11R4 fix-15/16/17.

Answer: The server may grow in size due to its own memory leaks.  Switch to a
later server.

Answer: You are responsible for garbage collection in `C'.  Some common cases
where a piece of memory becomes garbage are

 a.  Memory is allocated by Motif for XmStrings by the functions
     XmStringConcat, XmStringCopy, XmStringCreate, XmStringCreateLtoR,
     XmStringCreateLocalized, XmStringDirectionCreate, XmStringNConcat,
     XmStringNCopy, XmStringSegmentCreate, and XmStringSeparatorCreate.  The
     values returned by these functions should be freed using XmStringFree
     when they are no longer needed.

 b.  Memory is allocated by Motif for ordinary character strings (of type
     String) by Motif in XmStringGetLtoR, XmStringGetNextComponent, and
     XmStringGetNextSegment. After using the string, XtFree() it. [Note that
     XmStrings and Strings are two different data types.  XmStrings are
     XmStringFree'd, Strings are XtFree'd.]

 c.  If you have set the label (an XmString) in a label, pushbutton, etc
     widget, free it after calling XtSetValues() or the widget creation
     routine by XmStringFree().

 d.  If you have set text in a text widget, the text widget makes its own
     copy.  Unless you have a use for it, there is no need to keep your own
     copy.

 e.  If you have set the strings in a list widget the list widget makes its
     own copy.  Unless you have a use for it, there is no need to keep your
     own copy.

 f.  When you get the value of a single compound string from a Widget e.g.
     XmNlabelString, XmNmessageString, ... Motif gives you a copy of its
     internal value.  You should XmStringFree this when you have finished with
     it.

 g.  On the other hand, when you get a value of a Table e.g. XmStringTable for
     a List, you get a *pointer* to the internal Table, and should not free
     it.

 h.  When you get the value of the text in a widget by XmTextGetString or from
     the resource XmNvalue, you get a copy of the text.  You should XtFree
     this when you have finished with it.

Answer: From Josef Nelissen: at least in Motif 1.1.4, X11R4 on a HP 720, the
XmText/XmTextFieldSetString() functions have a memory leak.  The old
value/contents of the Widget isn't freed correctly.  To work around this bug,
one should use a XmText Widget (in single-line-mode) instead of a XmTextField
Widget (the solution fails with XmTextField Widgets !) and replace any

       XmTextSetString(text_widget, str);

by

       XmTextReplace(text_widget, (XmTextPosition) 0,
                     XmTextGetLastPosition(text_widget), str);


-----------------------------------------------------------------------------
Subject: 141)  Why does my application take a long time to start up?

Answer: You are probably creating too many widgets at startup time.  Delay
creating them until needed.  If you have a large number of resources in text
files (such as in app-defaults), time may be spent reading and parsing it.

-----------------------------------------------------------------------------
Subject: 142)  My application is running too slowly. How can I speed it up?

Answer: Use the R4 rather than R3 server.  It is much faster.

Answer: The standard memory allocator is not well tuned to Motif, and can
degrade performance.  Use a better allocator.  e.g. with SCO Unix, link with
libmalloc.a; use the allocator from GNU emacs; use the allocator from Perl.

Answer: Avoid lots of widget creation and destruction.  It fragments memory
and slows everything down.  Popup/popdown, manage/unmanage instead.

Answer: Set mappedWhenManaged to FALSE, and then call XtMapWidget()
XtUnmapWidget() rather than managing.

Answer: Get more memory - your application, the server and the Operating
System may be spending a lot of time being swapped.

Answer: If you are doing much XmString work yourself, such as heavy use of
XmStringCompare, speed may deteriorate due to the large amount of internal
conversions and malloc'ing.  Try using XmStringByteCompare if appropriate or
ordinary Ascii strings if you can.


-----------------------------------------------------------------------------
Subject: 143)  Why is my application so huge?

Answer: The typical size of a statically linked Motif app is in the megabytes.
This is often caused by the size of libXm.a. A large part of this gets linked
in to even trivial Motif programs. You can reduce the code size by linking
against shared libraries if they are available.  Running "strip" on the
executable can often reduce size. Note that the size of the running program
should be measured by "ps", not by the code size.

-----------------------------------------------------------------------------
END OF PART FIVE

-----------------------------------------------------------------------------
Subject: 144)  TOPIC: XMSTRING

-----------------------------------------------------------------------------
Subject: 145)  What string functions differ in Motif 1.1 and 1.2? Is
XmStringCreateSimple obsolete? What should I use instead?

[Last modified: Feb 95]

Answer: XmStringCreateSimple is obsolete. Use XmStringCreateLocalized instead.

Matthew B. Evans (Evans@EDFUA6.ctis.af.mil) writes:

We just upgraded from Motif 1.1 to 1.2.  When we went to compile, no problem,
but our XmStringCreateSimple() and XmStringGetLtoR() seemed to have problems.

As we found out, Motif 1.2 STRONGLY recommends to use the constant
XmFONTLIST_DEFAULT_TAG instead of XmSTRING_DEFAULT_CHARSET in all of the
XmStringXXX() functions, as XmSTRING_DEFAULT_CHARSET is maintained only for
compatibility (not a whole lot in my opinion).  I got this information from
Book 6B from O'Reilly.

You may want to take a look at this book if you can. Some XmString functions
are outdated and maintained only for compatibility, whereas some don't
function correctly when using XmSTRING_DEFAULT_CHARSET (from our in-depth
tests).

We have changed all our XmStringCreateSimple() to XmStringCreateLocalized()
(as suggested in book 6B) and changed all XmSTRING_DEFAULT_CHARSET to
XmFONTLIST_DEFAULT_TAG.

[Thanks to John West (jwest@nas.nasa.gov) for fixing a typo in the above.]

NOTE: All string answers in this FAQ now use XmStringCreateLocalized rather
than XmStringCreateSimple. The documentaton makes it clear that
XmStringCreateSimple is obsolete and is only kept for compatibility with Motif
1.1. New applications should not use this function since XmStringCreateSimple
may disappear in a subsequent Motif release. (Thanks to Miguel Angel Chamochin
(mangel@tid.es) for reminding me to fix this mess.)....ksall@cen.com.

-----------------------------------------------------------------------------
Subject: 146)  How can I get the Ascii text out of an XmString?

Answer: To get the first line of text from a string created left-to-right


        char *str;
        XmString xmstr;

        /* stuff to create xmstr */
        ...

        /* set str to point to the text */
        XmStringGetLtoR(xmstr, XmSTRING_DEFAULT_CHARSET, &str);
        /* use the string */
        ...

        /* and reclaim space */
        XtFree(str);


-----------------------------------------------------------------------------
Subject: 147)  When can XmStrings used as resources be freed?

Answer: The policy OSF have been trying to enforce is that if you set an
XmString or XmStringTable resource, the application is responsible for freeing
the XmStrings used because the widget makes a copy.  If you get an XmString
resource, then the application must free the value gotten.  If you get an
XmStringTable, then the application should NOT free the value gotten.  If the
application wants to manipulate it, it should make a copy first. This policy
appears to be implemented progressively, so may be less true for Motif 1.0
than 1.1.

-----------------------------------------------------------------------------
Subject: 148)  Why doesn't XmStringGetNextSegment() work properly?

Answer: The documentation in Motif 1.0 is in error. Instead of

        XmStringGetnextSegment(context, ...)
        XmStringContext * context;

it should be

        XmStringGetnextSegment(context, ...)
        XmStringContext context;

i.e. with no indirection.


-----------------------------------------------------------------------------
Subject: 149)  Why does using XmStringDraw cause a Bad Font error?

[Last modified: Sept 94]

Answer: From Thomas Berlage (berlage@gmdzi.gmd.de): You could call this a bug
in Motif. You pass a GC to XmStringDraw, however, Motif wants to use the fonts
from the font list to draw the string.  Therefore it replaces the font of the
GC temporarily with some fonts of its own as specified in the font list. In
the end it tries to restore the old font of the GC. There comes the problem:

If a GC uses the default font, the client side GC structure does not have a
valid font id (that is the 0xffffffff you may see in the error message). Motif
tries to restore this invalid id at the end.

The workaround is: Before drawing with XmStringDraw, set the font id of the GC
to any valid font id, for example using

      XSetFont (display, gc, XLoadFont (display, "fixed"));

Another solution is available from "Harry's Motif Programming Corner", Harald
Albrecht, albrecht@igpm.rwth-aachen.de, who writes:

"It's somewhat longer but doesn't rely on a font named "fixed" installed on
your platform. Instead it takes a fontlist and then uses the first font listed
there. You'll find this source together with a short demo program (which
creates a DrawingArea and then paints some text in it) on:
  ftp.igpm.rwth-aachen.de (134.130.161.30)
  in: /arc/pub/unix/motif/RenderXmString.tar.gz

There's also a html page available:
  file://ftp.igpm.rwth-aachen.de/arc/pub/unix/html/renderxmstrings.html "

From Harald Albrecht (albrecht@igpm.rwth-aachen.de)

-----------------------------------------------------------------------------
Subject: 150)  TOPIC: DIALOGS

-----------------------------------------------------------------------------
Subject: 151)  How do I stop my dialog disappearing when I press the help
button?

Answer: Bulletin board has the resource autoUnmanage which defaults to True.
This unmanages the widget when any button child is activated - including the
help button.  Set this to False to stop it disappearing. Note that you then
have to unmanage the bulletin board yourself when any other button is
activated.

-----------------------------------------------------------------------------
Subject: 152)  How do I make my own dialog?  I want a dialog with my own set
of buttons that stretch and shrink like the ones in e.g. PromptDialog and its
own contents.

Answer: Start off with say a PromptDialog. Unmanage the buttons you don't want
or manage the Apply button if you want another. Unmanage the other bits of the
selection box you don't want. You can add another WorkArea child to the
selection box for any extra stuff you want.

    /* Copyright 1990, Kee Hinckley and Brian Holt Hawthorne */
    /* Permission granted for any use, provided this copyright */
    /* notice is maintained. */

    /* Create a dialog box */
    argcount = setArgs(&args, XmNautoUnmanage, False, NULL);
    SomeDialog = XmCreatePromptDialog(mainShell, "someDialog", args, argcount);

    /* Now get rid of the things we don't want */
    child = XmSelectionBoxGetChild(SomeDialog, XmDIALOG_SELECTION_LABEL);
    XtUnmanageChild(child);
    child = XmSelectionBoxGetChild(SomeDialog, XmDIALOG_TEXT);
    XtUnmanageChild(child);

    /* set the callbacks, and make sure the buttons we want are there */
    child = XmSelectionBoxGetChild(SomeDialog, XmDIALOG_OK_BUTTON);
    XtAddCallback(child, XmNactivateCallback, callSomeFunc, someArg);
    XtAddCallback(child, XmNactivateCallback, unManage, SomeDialog);
    XtManageChild(child);
    child = XmSelectionBoxGetChild(SomeDialog, XmDIALOG_APPLY_BUTTON);
    XtAddCallback(child, XmNactivateCallback, callSomeFunc, someOtherArg);
    XtManageChild(child);
    child = XmSelectionBoxGetChild(SomeDialog, XmDIALOG_CANCEL_BUTTON);
    XtAddCallback(child, XmNactivateCallback, dialogUnmanage, SomeDialog);
    XtManageChild(child);

    /* Add a new work area. This can be any manager. */
    child = XmCreateForm(SomeDialog, "someForm", NULL, 0);
    XtManageChild(child);

    /* and fill it up... */
    something = doYourStuff(child);

another Answer:

        I had a some people asking about my xmSmartMessageBoxWidget

        It's public domain, and needs Motif-1.2  and is available at
        ftp.x.org:/contrib/widget/SmartMB.tar.Z.

        The basic idea behind it is that it allows the programmer to
        specify the management of child widgets in 4 areas: Label, Control,
        Separator and Action.  You can have up to 1 Label, 1 Control,
        1 Separator and as many Action children as you want.  It does not
        REQUIRE any of these, and there is no unmanaging of extra widgets,
        as the programmer creates what is needed.

        Thanks for the smart dialog info to:         John L. Cwikla
        Wolfram Research, Inc.          cwikla@wri.com


-----------------------------------------------------------------------------
Subject: 153)  Why do dialog title bars have "_popup" or "<-popup"
concatenated onto the widget name?


Answer: Motif 1.0.3 (?) "fixed" things such that title bars without an
explicit dialogTitle setting use the widget name with "_popup" or whatever
added on.  Set the dialogTitle resource explicitly if you don't want this new
default naming scheme.

-----------------------------------------------------------------------------
Subject: 154)  How can I force a dialog window to display?

I manage a "working" dialog, and do some computing, but the dialog window
appears blank until the work has finished.  How can I force it to be
displayed?

[Last modified: Dec '94]

Answer: David Brooks <dbrooks@ics.com> writes: The dialog window won't get
expose events until the window manager has fielded the map request, done the
reparenting with all that entails, and finally convinced the server that the
window is for real.  The safe way of doing it is [below].

Use this.  (David Brooks, Systems Engineering, Open Software Foundation)

/*
 * This procedure will ensure that, if a dialog window is being mapped,
 * its contents become visible before returning.  It is intended to be
 * used just before a bout of computing that doesn't service the display.
 * You should still call XmUpdateDisplay() at intervals during this
 * computing if possible.
 *
 * The monitoring of window states is necessary because attempts to map
 * the dialog are redirected to the window manager (if there is one) and
 * this introduces a significant delay before the window is actually mapped
 * and exposed.  This code works under mwm, twm, uwm, and no-wm.  It
 * doesn't work (but doesn't hang) with olwm if the mainwindow is iconified.
 *
 * The argument to ForceDialog is any widget in the dialog (often it
 * will be the BulletinBoard child of a DialogShell).
 */

ForceDialog(w)
     Widget w;
{
  Widget diashell, topshell;
  Window diawindow, topwindow;
  Display *dpy;
  XWindowAttributes xwa;
  XEvent event;
  XtAppContext cxt;

/* Locate the shell we are interested in.  In a particular instance, you
 * may know these shells already.
 */

  for (diashell = w;
       !XtIsShell(diashell);
       diashell = XtParent(diashell))
    ;

/* Locate its primary window's shell (which may be the same) */

  for (topshell = diashell;
       !XtIsTopLevelShell(topshell);
       topshell = XtParent(topshell))
    ;

  if (XtIsRealized(diashell) && XtIsRealized(topshell)) {
    dpy = XtDisplay(topshell);
    diawindow = XtWindow(diashell);
    topwindow = XtWindow(topshell);
    cxt = XtWidgetToApplicationContext(diashell);

/* Wait for the dialog to be mapped.  It's guaranteed to become so unless... */

    while (XGetWindowAttributes(dpy, diawindow, &xwa),
           xwa.map_state != IsViewable) {

/* ...if the primary is (or becomes) unviewable or unmapped, it's
   probably iconified, and nothing will happen. */

      if (XGetWindowAttributes(dpy, topwindow, &xwa),
          xwa.map_state != IsViewable)
        break;

/* At this stage, we are guaranteed there will be an event of some kind.
   Beware; we are presumably in a callback, so this can recurse. */

      XtAppNextEvent(cxt, &event);
      XtDispatchEvent(&event);
    }
  }

/* The next XSync() will get an expose event if the dialog was unmapped. */

  XmUpdateDisplay(topshell);
}


-----------------------------------------------------------------------------
Subject: 155)  How can I control placement of a popup widget?  Each time a
popup is created, it is placed in or over the middle of its parent.  How can I
make it obey the XmNx and XmNy values?

[Last modified: Feb 95]
Answer: Set the resource XmNdefaultPosition for the popup to False.  Set the
position of the popup by the resource values of XmNx and XmNy.  Do not use
XtMoveWidget, as this is for widget writers only.  Here's a demo program from
Dan Heller:

/* Written by Dan Heller.  Copyright 1991, O'Reilly && Associates.
 * This program is freely distributable without licensing fees and
 * is provided without guarantee or warranty expressed or implied.
 * This program is -not- in the public domain.  This program is
 * taken from the Motif Programming Manual, O'Reilly Volume 6.
 */

/* map_dlg.c -- Use the XmNmapCallback to automatically position
 * a dialog on the screen.  Each time the dialog is displayed, it
 * is mapped down and to the right by 200 pixels in each direction.
 */
#include <Xm/MessageB.h>
#include <Xm/PushB.h>

/* main() --create a pushbutton whose callback pops up a dialog box */
main(argc, argv)
char *argv[];
{
    Widget toplevel, button;
    XtAppContext app;
    void pushed();

    toplevel = XtVaAppInitialize(&app, "Demos",
        NULL, 0, &argc, argv, NULL, NULL);

    button = XtCreateManagedWidget("button", xmPushButtonWidgetClass,
        toplevel, NULL, 0);
    XtAddCallback(button, XmNactivateCallback, pushed, "Hello World");

    XtRealizeWidget(toplevel);
    XtAppMainLoop(app);
}

/* callback function for XmNmapCallback.  Position dialog in 200 pixel
 * "steps".  When the edge of the screen is hit, start over.
 */
static void
map_dialog(dialog, client_data, cbs)
Widget dialog;
XtPointer client_data;
XmAnyCallbackStruct *cbs;
{
    static Position x, y;
    Dimension w, h;

    XtVaGetValues(dialog, XmNwidth, &w, XmNheight, &h, NULL);
    if ((x + w) >= WidthOfScreen(XtScreen(dialog)))
        x = 0;
    if ((y + h) >= HeightOfScreen(XtScreen(dialog)))
        y = 0;
    XtVaSetValues(dialog, XmNx, x, XmNy, y, NULL);
    x += 200, y += 200;
}

/* pushed() --the callback routine for the main app's pushbutton.
 * Create and popup a dialog box that has callback functions for
 * the Ok, Cancel and Help buttons.
 */
void
pushed(w, message)
Widget w;
char *message; /* The client_data parameter passed by XtAddCallback */
{
    Widget dialog;
    Arg arg[3];
    XmString t = XmStringCreateLocalized(message);
    extern void response();

    XtSetArg(arg[0], XmNautoUnmanage, False);
    XtSetArg(arg[1], XmNmessageString, t);
    XtSetArg(arg[2], XmNdefaultPosition, False);
    dialog = XmCreateMessageDialog(w, "notice", arg, 3);
    XmStringFree(t);

    XtAddCallback(dialog, XmNmapCallback, map_dialog, NULL);

    XtManageChild(dialog);
    XtPopup(XtParent(dialog), XtGrabNone);
}


-----------------------------------------------------------------------------
Subject: 156)  TOPIC: LANGUAGE BINDINGS

-----------------------------------------------------------------------------
Subject: 157)  Is there a C++ binding for Motif?

[Last modified: Dec 94]


Answer: Wind/U implements MFC (Microsoft Foundation Classes) on Unix using
Motif.  Bristol Technology, Inc. (203) 438-6969, info@bristol.com.

WWL is a library which defines C++ classes around X Toolkit Widgets.  It is
intended to simplify the task of C++ code writers when using the Toolkit by
providing them with C++ objects, methods, type checking and several utility
functions and classes.

WWL has been tested under SunOs4.0.3 on sun3 and sun4, HPUX version 6.5 and
7.0 and Ultrix 4.0 on DECstation 3100 and 5000. It is expected to work on most
other UNIX systems without too many problems.

WWL is distributed as a tar file with all the source, documentation and
example. The file is available using anonymous ftp from

        ftp.x.org            /R5contrib/WWW-1.2.tar.Z

( ftp://ftp.x.org/R5contrib/WWW-1.2.tar.Z )

Answer: Rogue Wave Software has a C++ binding for Motif called View.h++.

"View.h++ is a complete C++ interface to OSF/Motif.  It doesn't just
encapsulate it, but also includes a set of classes that provide a level of
abstraction above Motif, thus simplifying menu and dialog creation, XmStrings,
XmFontLists, etc.  View.h++ supports a Model- View-Controller architecture,
allowing for an even more object-oriented interface design.  Includes a copy
of Rogue Wave's Tools.h++ (foundation class library)"

An object license is $795 "per seat" and a source code license is available
for $2,995 "per seat."  Rogue Wave also offers full support for View.h++.

It is currently available for Sun Sparc, IBM RS/6000, HP 9000/700 series, SCO,
Intel SVR4 ESIX.  Please call for Silicon Graphics and DEC Ultrix status.

For additional information, please contact:

Matt Steinauer
Rogue Wave Software, Inc.
P.O. Box 2328
Corvallis, OR 97339
Phone: (503)754-3010
Fax:   (503)757-6650

email:   matts@roguewave.com


Answer: Builder Xcessory 3.0, an interface builder from ICS, allows the user
to visually build C++ classes from Motif and user-written widgets.  C++ code
is generated in the "Doug Young" fashion.  (Doug actually worked on this
project with ICS.)  C and UIL can also be generated.

Integrated Computer Solutions, Inc. (ICS) 201 Broadway, Cambridge, MA  02139
USA info@ics.com   617/621-0060


Answer: From Andreas.Baecker@gmd.de: The GINA++ application framework contains
an encapsulation of the OSF/Motif widg et classes and the Xt functionality
into C++ classes. Its functionality is comparab le to that of the ULowell
binding and the WWL. Additionally, it provides an easy-to -use framework for
modeling new composite and primitive widget classes, plus an application
framework similar to ET++ or MacApp build on top of it. The binding may be
used independently from the framework classes. GINA++ is available through
anonymous ftp from ftp.gmd.de [129.26.8.90] in the directory /gmd/ginaplus.
Documentation about the Motif binding has been published in the X Resource
Journal, Number 2, 1992, Pages 106-130. The binding compiles with AT&T C++ 2.1
and GNU G+ + 2.1 and has been tested on SunOS 4.1.[12], X11R4 and Motif 1.1.3.

Answer: Motif++ is a library that defines C++ class "wrappers" for the widgets
defined in the X11R5 OSF/Motif-1.2 widget library.  It also supports
X11R4/Motif-1.1 as well.

Motif++ is also an application toolkit that provides other tools in
conjunction with the widget wrapper classes.  It has support for the Xbae
widget set, plus other widgets.  It has Imake support, and lots of test files.
Motif++ also has alot of contributed software.


Motif++ is very similar to other public domain widget libraries such as The
Widget Wrapper Library (WWL) and the C++ Binding for OSF/Motif developed at
the University of Lowell. The two latter libraries are the result of much
larger efforts.

Available via anonymous ftp:

        ftp://src.doc.ic.ac.uk/packages/motif++/motif++.30.jul.94.tar.gz

The /packages/motif++ also contains documentation.  For more information,
contact Ronald van Loon (rvloon@motif.xs4all.nl).  There is also mailing list
for Motif++:

        motif++@motif.xs4all.nl

To join, send email to the administrative address:

        motif++-request@motif.xs4all.nl

C++ Report, a magazine published by SIGS Publications, now regularly publishes
articles on X, Xt and Motif vs. C++ written by Ronald van Loon.

Answer: Xm++ is a user interface framework for the C++ language built upon X11
and the X-Toolkit. It is designed to be a simple and intuitive programming
interface to access the functionality of commonly used widgets.  Xm++ was
initially created for the Motif widget set, now support for the Athena widgets
was added. Applications created with Xm++ run in both environments without
changes, although many nice features are only available when using Motif.

Xm++ is available on: ftp.x.org as: /R5contrib/Xm++.0.53.tar.Z (
ftp://ftp.x.org/R5contrib/Xm++.0.53.tar.Z ).

Answer: wxWindows is a toolkit for platform-independent GUI programming in
C++. It consists of several class libraries and tools.  wxWindows has been
made freely available with no commercial restrictions. As well as undergoing
further development at AIAI ( http://www.aiai.ed.ac.uk/ ), outside
contributors are helping to extend its abilities and range of platforms.  See
http://www.aiai.ed.ac.uk/~jacs/wxwin.html .

Answer: The Solbourne OI toolkit (not Motif) also has a C++ binding.

Answer: Liant have C++/Views.

Answer: Quest have ObjectViews.  Answer: Builder Xcessory 3.0, an interface
builder from ICS, allows the user to visually build C++ classes from Motif and
user-written widgets.  C++ code is generated in the "Doug Young" fashion.
(Doug actually worked on this project with ICS.)  C and UIL can also be
generated.

Integrated Computer Solutions, Inc. (ICS) 201 Broadway, Cambridge, MA  02139
USA info@ics.com   617/621-0060


Answer: Doug Young has written a book "Object Oriented Programming with C++
and Motif", Prentice-Hall ISBN 0-13-630252-1 about using C++ without requiring
one of these toolkits.

Answer: Unfortunately, this library (last released in 9/92) has the same name
as the one by Ronald van Loon (rvloon@motif.hacktic.nl).  Motif++1.2 is a
library that defines C++ class "wrappers" for the widgets defined in the
OSF/Motif-1.1 widget library.  Motif++1.2 is also an application toolkit that
provides other tools in conjunction with the widget wrapper classes.
    One enhancement of Motif++1.2 beyond its wrapper classes are the addition
of an "application" class which takes care of the low-level tasks including
initializing X, creating and managing one or more top-level shells, and
entering the main event loop.
    Another feature of Motif++1.2 is its integration with The Widget Creation
Library (Wcl).  Motif++1.2 makes it easy to initialize Wcl and create C++
wrappers for desired widgets in the widget tree.
    Availability: anonymous FTP at ftp.arc.umn.edu (137.66.130.11), file
pub/Motif++1.2.tar.Z.  Contact Paul Felix, felix@ahpcrc.umn.edu or
pfelix@vx.cis.umn.edu.

submitted by: mvc!biggers@duke.cs.duke.edu ( Mark R. Biggers )

-----------------------------------------------------------------------------
Subject: 158)  How can I avoid C++ String class and typedef char *String
conflicts?  We're using the USL C++ Standard Components which has the String
class.  This, however, conflicts with the typedef char *String found in
<X11/Intrinsic.h>

[Last modified: Oct 94]

Answer: This is very simple to workaround.  I agree that it is "wrong" but all
you need to do is:

#define String XtStringType
#include "all the X files"
#undef String


This will translate the offending symbol.

Thanks to Doug Rand <drand@sgi.com>

-----------------------------------------------------------------------------
Subject: 159)  How can I have a C++ member function in a callback?

[Last modified: Oct 94]

Answer: There are three common user problems with C++ callbacks.  First, make
sure you use the correct function prototype for the function declarations.
Second, the callback function must be declared as a static member of the
class.  Third, when registering it with XtAddCallback(), you must use its full
signature.  For example: (from Ken Lee, kenton@rahul.net)


    class MyClass {
        ...
        void createWidgets();
        static void myButtonCB(Widget, XtPointer, XtPointer);
        ...
    };
    void MyClass::createWidgets() {
        ...
        w = XtCreatePushButton(...);
        XtAddCallback(w, XmNactivateCallback, &MyClass::myButtonCB,
            (XtPointer) this);
        ...
    }
    void myButtonCB(Widget w, XtPointer clientData, XtPointer callData) {
        MyClass *myclass = (MyClass *) clientData;
        ...
    }

Note that the "this" pointer is used as the client data.  This technique is
popular, but not required.


Motif++ has a nice tutorial summarizing mechanisms (Ronald van Loon,
rvloon@motif.xs4all.nl).  See his articles in the September, 1994 and
Nov/December, 1994 issues of C++ Report.


Doug Young's book deals extensively with one of these. The problem is that you
don't get the object when you just use the function as a callback.  You need
to pass the object as a pointer through as the client_data.  (use "this" as
the client_data.) Then you can retrieve the object's address, and dereference
from there. For example (Leo O'Donnell, Email: leo@avs.com),

    class MyButton {
      public:
                MyButton (Widget parent, const char *name) {
                    _button = XtVaCreateManagedWidget (
                        name, xmPushButtonWidgetClass, parent, NULL, 0);
                    XtAddCallback (
                        _button,
                        XmNactivateCallback,
                        &MyButton::activateCB,
                        (XtPointer) this);
                }
                ~MyButton () { XtDestroyWidget (_button); }
      private:
        Widget  _button;
        static  void activateCB (Widget, XtPointer, XtPointer);
    };

    void MyButton::activateCB (Widget, XtPointer thisBtn, XtPointer)
    {
        MyButton *btn = (MyButton *) thisBtn;

        // OK you've got the button instance now. Do some stuff with it!
    }


-----------------------------------------------------------------------------
Subject: 160)  Is there a Common Lisp binding for Motif?

[Last modified: Oct 94]

Answer: Try CLM. This includes a toolkit demon (in C) that takes a widget
description (with callbacks), and forks a new process for each Motif
application (which can be just a single menu, or whatever).  Lisp can then
continue running, with a separate lightweight lisp process handling the
connection & callbacks.  In North America & net environs, CLM-2.3.tar.Z is
available from ftp.x.org.

There is also CLIM, the Common Lisp Interface Manager. It provides access to
motif and other toolkits and window systems.  Here is some blurb: "Version 2.0
of the Common Lisp Interface Manager (CLIM) provides access to Motif. CLIM is
the emerging standard for GUI development in Common Lisp.  It offers a set of
high-level facilities that enable rapid construction of user interfaces.
Applications written using CLIM are portable across a variety of window
systems and toolkits.  For example, on the X window System, both Motif
(OSF/Motif) and Openlook (OLIT) are supported.  CLIM accesses the toolkit
directly rather than emulating the look and feel."

CLIM is available from a variety of Common Lisp vendors including Symbolics
and Franz Inc. (info@franz.com).

-----------------------------------------------------------------------------
END OF PART SIX

-----------------------------------------------------------------------------
Subject: 161)  Is there an Ada binding for Motif? (Part 1 of 2)

[Last modified: Apr 94 ]

Answer: Answer:  Integrated Computer Solutions, Inc. (ICS) supplies Ada
bindings to Motif for a number of platforms and Ada compilers.  ICS also
provides Builder Xcessory, a Motif interface builder, which outputs Ada code
usable with the Ada bindings.  The product family is known collectively as the
Ada Xcessories.

Integrated Computer Solutions, Inc. (ICS) 201 Broadway, Cambridge, MA  02139
USA info@ics.com   617/621-0060


Information on Ada bindings to Motif and other services (such as SQL and
POSIX) can be found in a document maintained by the Ada Information
Clearinghouse.  The report can be found at

        host:   ajpo.sei.cmu.edu
        loc:    /public/ada-info/bindings.hlp.*
        access: anonymous ftp

The suffix to the file (indicated above with an asterix) is the date of the
latest update to the document.  For example, the full name of the report
updated on 14 June 1993 would be

        /public/ada-info/bindings.hlp.14Jun93.

The file is ASCII.

------ Included File


[...Excerpted from the AdaIC report bindings.hlp.14Jun93...]
[...Updates can be found on ajpo.sei.cmu.edu, in the    ...]
[...file /public/ada-info/bindings.hlp.*  The suffix    ...]
[...is always the date of the lastest version to the    ...]
[...report.                                             ...]

                                     SECTION 12
                                  X-Window System:
                               OSF Motif and Open Look
                               Available Ada Bindings


12.1  Description and Standardization Efforts

The X-Window System is a network-transparent window system.  It supports one
or more screens containing overlapping windows or subwindows.  X display
servers distribute user input to and accept output requests from various
client programs located either on the same machine or elsewhere in the
network.

            OSF Motif (Open Software Foundation/Motif) is a graphical user
            interface from OSF that provides a Presentation Manager look and
            feel for applications running on any system with X Window version
            11.  It conforms to POSIX, ANSI C and X/Open's XPG3 standards.

12.2  Resources Available from Software Reuse Libraries/Repositories


ASSET                                               (Updated:  November 1992)

The following information was taken in its entirety from the ASSET Library
Repository Catalog, October 9, 1992.  For more information on ASSET, see
Appendix C.


INTERFACE TO THE X WINDOW SYSTEM

VERSION_NUMBER    : 1.1
DEVELOPED_BY      : SAIC
RELEASE_DATE      : 29-SEP-88
UNIQUE_IDENTIFIER : ASSET_A_240
ALTERNATE_NAME    : SAICX2
ASSET_TYPE        : SOFTWARE CODE
FUNCTIONS         : INTERFACE, BIND
OBJECTS           : ADA, X WINDOWS
KEYWORDS          : STANDARDS, BINDINGS
COLLECTION        : STARS FOUNDATIONS
DISTRIBUTION      : UNLIMITED

DESCRIPTION       :

Interface to the X Window System
      An expression of the various concepts in Ada that provides a full,
working Ada specification of the X Window system.
     Approved for public release; distribution is unlimited.

12.3  Products Available from Vendors


Advanced Technology Center                           (Updated:  November 1992)

The Advanced Technology Center (ATC) has an Ada binding to OSF Motif for their
AXI~ product.  AXI is currently available for most UNIX-based platforms, and
is supported by Verdix, Meridian, and TeleSoft compilers.

AXI is an Ada-to-X-Window System interface that provides the Ada programmer
access to the 500+ functions, libraries, and procedures contained in the X
library (Xlib), the X Toolkit (Xt), the X Extensible Library, the X
Miscellaneous Utilities, the Motif widget set and the Motif Resource Manager.

ATC is planning to develop an Ada binding to Open Look for AXI.

For more information, contact:Larry Paulson, Advanced Technology Center, 22982
                        Mill Creek Drive, Laguna Hills, CA  92653, USA; Phone:
                        714-583-9119


Alsys, Inc.                                            (Updated:  May 1992)

The Alsys Ada Software Development Environment (Alsys's validated Ada compiler
#901221W1.11103) for 386 UNIX is a production-quality Ada environment capable
of handling very large Ada applications (over 500,000 lines of code).  The
product includes the Compiler; Multi-Library Environment, which provides a
powerful and flexible way to manage Ada development effort and share program
units; Binder, which supports unused subprograms elimination; High-and Low-
Level Optimizers for improving code quality and performance; and Run-Time
Executive for efficient support for executing Ada programs.  Also included is
the Developer's Toolset including:  Ada Probe, a symbolic source level
debugger and program viewer; AdaXref, a cross-reference generator; AdaMake, a
recompilation aid; AdaReformat, a source reformatter.

Alsys currently has Ada bindings to POSIX, X-Windows (OSF Motif), and the
Generic Package of Elementary Functions for the Alsys Ada Software Development
Environment, running on 386 UNIX 386/486-based machines supported as both host
and target and running 386/ix or SCO UNIX.  They are also planning a binding
to SQL for  386/486 machines.

Host/Target:386/486 PC under IX UNIX, 386/486 PC under SCO UNIX

The Alsys Ada Software Development Environment for the IBM RS/6000 is a
production-quality Ada environment capable of handling very large Ada
applications.  Hosted on and targeted to the IBM RS/6000 workstation under
IBM's AIX operating system, the product includes the Compiler; Multi-Library
Environment, which provides a  powerful and flexible way to manage Ada
development efforts and share program units; Binder; Run-Time Executive; and
both a High and Low-Level Optimizer for improving code quality and
performance.  Also included is the Alsys Ada Toolset including Ada Probe,
symbolic source level debugger and program viewer; AdaXref, cross-reference
generator; AdaMake, recompilation aid; and AdaReformat, source reformatter.

Alsys has bindings currently available to the Generic Package of Elementary
Functions and to X-Windows (OSF Motif) for the Alsys Ada Development
Environment for the IBM RS/6000 running on any RISC System/6000 machine as
both host and target and running IBM's AIX operating system (Alsys's validated
Ada compiler #910809W1.11195).   Alsys also plans to develop a POSIX binding
for the RS/6000.

Host/Target:RISC System/6000 under AIX

The Alsys Ada Software Development Environment for SPARC Workstations is a
production-quality Ada environment capable of handling very large Ada
applications.  Hosted on any SPARC-based workstation under SunOS or SunView,
the product helps you realize the full potential of Ada on SPARC machines. The
product includes the Compiler (with High- and Low-Level Optimizers); Binder,
which supports unused subprogram elimination; Multi-Library system (Family,
Library, and Unit Managers) which provides a powerful and flexible way to
manage Ada development efforts and share program units;  AdaExec real-time
executive, for complete and efficient support for executing Ada programs; and
ISO-standard mathematical library.  Also included is the Alsys Ada Toolset
including AdaProbe, symbolic source level debugger and program viewer;
AdaXref, cross-reference  generator; AdaMake, recompilation aid; and
AdaReformat, source reformatter.

Bindings to the Generic Package of Elementary Functions and to OSF/Motif are
currently available for the Alsys Ada Software Development Environment running
on any SPARC-based Workstation as both host and target and running SunOS or
SunView.

Host/Target:SPARC under SUNOS

For more information, contact:Scott Garren, Alsys, Inc., 67 South Bedford
                        Street, Burlington, MA  01803-5152, USA;  Phone:
                        (617) 270-0030


Digital Equipment Corporation                       (Updated:  November 1992)

Digital Equipment Corporation has bindings available for GKS, PHIGS, SQL, and
OSF Motif for VAX Ada/VMS.  The Ada bindings are provided either as part of a
compiler product or the services/facilities that are provided by Digital and
its suppliers.

Host/Target:DEC VAX under VMS

For more information, contact:Mary Anne Cacciola, Digital Equipment
                        Corporation, 110 Spit Brook Road, Nashua, NH  03062,
                        USA; Phone:  (603) 881-1028


IBM                                              (Updated:  November 1992)

IBM's AIX Ada/6000 product provides a binding to GPEF and IBM AIXWindows (X-
Windows ... not Motif).  It runs on all models of the IBM RISC System/6000
under the IBM AIX Version 3.2 operating system. See also entries for Systems
Engineering Research Corporation (SERC) and Advanced Technology Center (ATC)
for Motif, GKS or PHIGS bindings for use with IBM AIX Ada/6000 products.


The AIX Ada/6000 licensed programs (5706-291 and 5706-294) consist of an
optimizing compiler, a run-time environment, a symbolic debugger, an Ada
"makefile" generator for use in automating and minimizing recompilation, Ada
library management tools and Ada language bindings to some key AIX subsystems.
With the exception of some system-specific aspects of the language, the Ada
language for the AIX operating system is source compatible with the Ada
language supported by IBM licensed programs in VM/CMS and MVS.

Host/Target:IBM RISC System/6000 under the IBM AIX Version 3.2 operating
            system

This product conforms to the following standards:  ANSI/MIL-STD-1815A - Ada at
current level (1.11) of the ACVC test suite.

For more information, contact:Barry Lee, IBM Corporation, 844 Don Mills Road,
                        North York, Ontario, Canada  M3C 1V7; Phone:  (416)
                        448-3174; Fax: (416) 448-4810

Objective Interface Systems, Inc.                  (Updated:  November 1992)

Objective Interface Systems, Inc., has an Ada binding to X-windows (OSF Motif)
for its Screen Machine~ product.  The Screen Machine binding to Motif includes
a WYSIWYG drawing tool and an Ada code generator.

Host/Target:

      Sun SPARC/SunOS         Rational R1000/Delta    HP 9000/7XX; 8X7
      IBM RISC System/6000/AIXPC 386/486/ISC UNIX     HFSI WIS Workstation
      PC 286/386/486/MS-DOS   PC 386/486/SCO UNIX     DEC Ultrix; DEC VMS

For more information, contact:Phil Carrasco, Object Interface Systems, Inc.
                        1895 Preston White Drive, Suite 250, Reston, VA
                        22091-5448, USA; Phone: (703) 264-1900; Fax:
                        703-264-1721; email info@ois.com (internet)


SL Corporation                                     (Updated: November 1992)

SL Corporation's SL-GMS toolkit includes Ada bindings to GPEF, GPPF, POSIX,
SQL, TCP/IP, OSF/Motif, and Open Look.

SL-GMS is a toolkit for developing dynamic graphics screens for real-time or
highly interactive applications.  Non-programmers can design application
screens in a standard drawing-tool mode, connect them to real-time data
sources and animate screen objects to visualize changing data values.  SL-GMS
allows the design of custom "GISMOs" to input values or control the
application and supports MOTIF, OPEN LOOK and other X toolkit widgets.

SL-GMS is used extensively to provide real-time graphics for applications in
the fields of manufacturing, process control, network management, avionics and
financial tracking.

Host/Target:Validated Verdix and DEC compilers support SL-GMS for the
            following machines as both host and target:


      DEC-DECstation/ULTRIX 4.0DEC-VAXstation/ULTRIX 4.0
      DEC-VAXstation/VMS 5.4  DEC-VAXstation/VMS 5.5

      IBM-RS6000/AIX

      HP-9000/300/UNIX        HP-9000/400/UNIX
      HP-9000/800/UNIX        HP-9000/700/UNIX

      PC-386/IX UNIX          PC-386/SCO UNIX
      PC-386/Lynx             PC-386/0S2
      PC-386/System 5.4

      SGI-4D/IRIX 3.3

      Sun-3/SunOS 4.1         SunSPARC/SunOS 4.1

      88 Open/BCS Compliant

For more information, contact: Mike Meagher, SL Corporation, 240 Tamal Vista
                        Boulevard, Corte Madera, CA  94926, USA Phone: (415)
                        927-1724; Fax: (415) 927-2931


Sunrise Software International                         (Updated:  May 1992)

Sunrise Software International's product, ezx, is a rapid application
development tool that automates the creation of graphical user interfaces for
OSF/MOTIF and generates C, UIL, or Ada.  ezx provides WYSIWYG screen layout;
color, font and pixmap editors; presentation tools and dialog management.  A
prototype can be developed in hours and using a script language similar to
Hypertalk, demonstrated to end-users before the first line of code is written.
Then portable C, UIL or Ada can be generated automatically.  Ada bindings are
provided.  The total code required to develop a GUI is reduced by
approximately 75%.   The appearance and behavior of the GUI is defined in an X
resource file which the application loads at run time.  This provides explicit
separation between the GUI and the computational core of the application. Thus
the GUI can be revised without recompiling (and retesting) the application.

ezx provides cost savings throughout the software development cycle, from
requirements analysis through design, code, test and maintenance.


Host/Target:DEC RISC under ULTRIX, DEC VAX under VMS, IBM 386 under UNIX, IBM
            RS 6000 under AIX, SGI under, SUN SPARC under UNIX

For more information, contact:Frederick Sells, Sunrise Software International,
                        170 Enterprise Center, Middletown, RI  02840, USA;
                        Phone:  401-847-7868

Systems Engineering Research Corporation (SERC)     (Updated:  November 1992)

-----------------------------------------------------------------------------
Subject: 162)  Is there an Ada binding for Motif? (Part 2 of 2)

[Last modified: Apr 94 ]

Answer: (This answer hasn't changed since the date given, but I needed to
break it into 2 parts.)

SERC's Ada/MOTIF is a complete binding to X Window and OSF/Motif for the Ada
programming language that was based in part upon the SAIC/Unisys (STARS)
public domain bindings.  That work was leveraged as a starting point for this
development; many of the bug fixes and additional capabilities beyond the
public domain releases in Ada/MOTIF have been incorporated.  Most noteworthy
are the capabilities included in Ada/Motif for Ada tasking, callback
registration, memory leak detection/prevention and capabilities for developing
customized widgets.  Paramax/STARS considers Ada/Motif to be the commercial
version of their STARS bindings, according to SERC.

Ada/MOTIF is supported by the ALSYS, VERDIX, SUNAda, IBM Ada, and SGI Ada
compilers.


Host/Target:SUN 4, HP 300/400, HP 700, IBM RS 6000, SGI, 386
            SUN OS 4.1.1, SOLARIS 2.0 (coming), HPUX 8.0, SGI 3.2 & 4.0, IBM
            ATX 3.2, SCO 3.2

For more information, contact:

        Theo Kusiolek or Scott Cleveland, Systems
        Engineering Research Corporation (SERC), 2555
        Charleston Road, Mountain View, CA  94043, USA;
        Phone:  800-ADA-SERC or 415/962-9092; Fax:  415/962-0330;
        E-mail:  Well!sercmail@apple.com.


TeleSoft                                            (Updated:  November 1992)

TeleSoft's TeleUSE/Ada automates the creation of OSF/Motif graphical user
interfaces for Ada applications.  It includes a special version of the TeleUse
User Interface Management System -- which generates Ada source code -- and Ada
bindings to the TeleUSE run-time routines.

TeleUse/Ada tools allow a GUI to be prototyped and designed using a WYSIWYG
editor and a PDL, and also includes tools for debugging, generating production
code and maintaining the GUI.  TeleUse/Ada can save the developer up to 90
percent of the time required to hand code X Window System GUIs.

Host/Target:SPARC under UNIX, Sun-4 under UNIX


TeleSoft's TeleWindows is a set of Ada bindings to the X Window System and
OSF/Motif.  This includes Xlib, XT, X extensions Library, XT+, X miscellaneous
utilities, Motif widget set, XM, MWM, Motif resource manager.  It supports X-
11 R4 and is not based on the public domain version.  It closely follows the C
Xlib syntax and allows Ada applications to co-exist with C applications.

Host/Target:IBM System/370 under VM/CMS

For more information, contact:Karen Johnson, TeleSoft, 5959 Cornerstone Court
                        West, San Diego, CA  92121-9891, USA; Phone:  (619)
                        457-2700

Verdix                                              (Updated:  May 1992)

The Verdix Ada Development System (VADS), is a complete Ada Compiler System
offering a fully validated Ada compiler with chapter 13 support.  Verdix
supplies VADSself and VADScross.   VADSself provides a complete toolset for
self-targeted applications.  It easily interfaces to databases, windowing
systems and program management tools.  VADScross provides real-time support
for host-to-target system development.  VADScross produces small and fast
object code.  VADS is hosted on the largest number of platforms and targets
the greatest number of microprocessors.

Host/Target:88000 BCS under UNIX, DEC VAX under VMS / ULTRIX / UNIX,
            DECStation (RISC) under UNIX, DECSystem (RISC) under UNIX, HP 9000
            Series 300 under HP-UX  (UNIX), IBM PS/2 under AIX  (UNIX), IBM
            RISC System/6000 under AIX, SCO Systems V/386 (ABI) under UNIX,
            Sun SPARC systems under UNIX, Sun-3 systems under UNIX

Verdix AXI provides an Ada binding to the full Motif, Xt, and Xlib libraries.
The product works with user-supplied Motif 1.1 and X11R4 libraries regardless
of source.

Host/Target:DEC RISC under Ultrix, IBM RS6000 under AIX, MIPS under MIPSos,
            Sun-4 under SunOS, Sys V386 under ISC UNIX, Sys V386 under SCO
            UNIX

For more information, contact:Tim Ruhe, Verdix Corporation, 205 Van Buren,
                        Herndon, VA  22070, USA; Phone:  (703) 318-5800

Answer: Integrated Computer Solutions, Inc. (ICS) supplies Ada bindings to
Motif for a number of platforms and Ada compilers.  ICS also provides Builder
Xcessory, a Motif interface builder, which outputs Ada code usable with the
Ada bindings.  The product family is known collectively as the Ada Xcessories.

Integrated Computer Solutions, Inc. (ICS) 201 Broadway, Cambridge, MA  02139
USA info@ics.com   617/621-0060

-----------------------------------------------------------------------------
Subject: 163)  Is there a Poplog binding for Motif?

[Last modified: May 93]

Answer:
 A integrated programming environment consisting of the programming
    languages Pop-11, Prolog, Standard ML, and Lisp which are compiled
    to machine code via a common virtual machine. Pop-11 provides a rich
    interface to the X Toolkit which can be accessed from all other
    Poplog languages. The OLIT, Motif, and Athena widget sets are
    supported, in addition to the custom Poplog (Xpw) widget set. XVed
    provides a sophisticated, customisable multi-window editor. Under
    OPEN LOOK and Motif the Poplog User Interface (PUI) provides a
    graphical interface to the Poplog system. High-level Pop-11
    libraries allow graph drawing, turtle graphics, and the simple
    creation of basic button/menu based interfaces.

Contact:

    UK EDUCATION SITES:
        Poplog Sales. School of Cognitive and Computing Sciences.
        Brighton. BN1 9QN. England.
        Phone: +44 (0)273 678188
        Email: popsales@cogs.susx.ac.uk
    USA AND CANADIAN EDUCATION SITES:
        Computable Functions Inc. 35 South Orchard Drive. Amherst.
        MA 01002. USA.
        Phone: (413) 253-7637
    ALL OTHER SALES:
        Integral Solutions Ltd. Unit 3, Campbell Court. Bramley.
        Basingstoke. Hampshire. RG26 5EG. England.
        Phone:  +44 (0)256 882028
        Fax:    +44 (0)256 882182
        Email:  isl@integ.uucp


-----------------------------------------------------------------------------
Subject: 164)  TOPIC: SPECIFIC PLATFORMS

-----------------------------------------------------------------------------
Subject: 165)  Is it easy to build Motif for a Sun?

Answer: See next question for Solaris 2.  No pattern has emerged to problems
about compiling Motif on the Sun (although people seem to have a lot of
different minor problems), and many reports are that it is straightforward.
Read the Motif install instructions (which often have specific reference to
Sun installation), light the blue touch paper and just standback. [My
experience was that I had to add -D_NO_PROTO for 1.1 on a Sparc OS 4.1, and
that was all.  Others have added STRINGS_ALIGNED and NO_REGEXP].


-----------------------------------------------------------------------------
Subject: 166)  How do I build Motif 1.2.2 on Solaris 2.1 with Sun C?

[Last modified: Oct 94]

Prepared by Ric Steinberger.  ric@updike.sri.com  4/09/93

What follows is a description of the steps I used to build Motif 1.2.2 on a
SUN IPX running Solaris 2.1.  Sun's C compiler (2.0.1) was used.  Many thanks
go to Kaleb Keithley (kaleb@devvax.jpl.nasa.gov) for several useful
suggestions.  Other people, including OSF staff, especially David Brooks
(dbrooks@osf.org), helped as well.  My thanks to you all.

1. Build X11R5 from the mit distribution.  You need to retrieve the sources
   from ftp.x.org (in pub/R5) and patches 1 - 22 (or fixes 1-26)
   pub/R5/fixes).  There are several other sites that contain the X11R5
   sources.  After installing patch 19, apply PEXlib.tar.Z, also available
   from ftp.x.org in pub/R5/fixes.  You can apply also
   R5.Xsun.multi-screen and R5.SunOS5.patch.  There are .README files
   that explain how to patch.  Be SURE to read
   R5.SunOS5.patch.README for details on how to BUILD X11.  You probably
   want to use the ProjectRoot feature in the site.def file in the
   mit/config directory.  You will NEED to edit that file to do that.

2. Obtain the Motif 1.2.2 distribution from OSF (617-621-7300).  You may
   need to first install the 1.2 tape, then the 1.2.1 and finally the
   1.2.2 tape.  You might want to do a "chmod -R u+w ." after unloading
   each tape.

3. In the config directory, there are several changes.  Some of the changes
   are based on R5.SunOS5.patch files.  A complete set of config files
   relevant to Solaris have been placed in the anon-ftp account of
   updike.sri.com in pub/motif/solaris21-motif122-config.tar.Z.  They are
   also available from OSF on their mail response server (available to
   support contract holders) and they will send them directly to full
   support contract holders.  Decompress and untar this file in your Motif
   config subdirectory.  Copy site.def.sample to site.def, then edit
   site.def.  You will probably want to uncomment the ProjectRoot section
   and use the same value used in your X11R5 build.  Also, you will probably
   want to use /usr/ucb/install in you installed the UCB compatibility
   suite.  Otherwise you might want to use the install supplied at the end
   of this memo.  [I used the UCB version and can't swear that this works.
   Bit it should.  Put it someplace like /usr/local/bin and chmod +x it.]

   There are two patches to consider.  One fixes a cursor problem
   in ./lib/Xm/TextF.c.  The other removes a Berkeleyism.  These
   patches should probably be consider unofficial at present.
   Failure to deal with the Berkeleyism (bzero) means you will need to
   link with -lucb -lelf.  This will probably work, but why bother?
   Furthermore, if you move the Motif binaries to a machine without
   the ucb compatability suite, you won't have the sharable libs you need.

[The actual patches have been censored because they contain OSF source code]

   Patch 1: In TextF.c there are several places _XmTextFieldDrawInsertionPoint
is called. These should be moved two or three lines further down *after* the
"if (!XtIsRealized(tf)) return True;" statement.


   patch 2: The call to bzero in lib/Xm/Visual.c should be replaced by the
equivalent call to memset


    Both these patches can be applied in the ./lib/Xm directory.
    If you don't have the patch program (how did you build X11?),
    you can get it in the vendor/cygnus directory of ftp.uu.net,
    or you can build it from source.  Be sure to get the latest
    version (2.0.12.u8).

4) Use the README-1.2.1 file as a guideline for building motif.  I followed
   directions in the section called, "Using X11R5 Installed Libraries
   and Header Files."  If you make a mistake after your first build
   attempt, copy Makefile.ini to Makefile before retrying.  You may
   need to do this in the config subdirectory too, depending on what
   went wrong.

5) After make Makefiles, do make includes, make depend, then make (or
   as OSF recommends, make -k).  This gets as far as motifshell in the
   demos, which fails to build because O_RDONLY and L_XTND are
   not defined.  O_RDONLY is in fcntl.h (actually <sys/fcntl.h>, but
   fcntl.h includes this.)  L_XTND can be replaced by SEEK_END.
   SEEK_END is in stdio.h.  These two fixes will allow motifshell to build.
   Note: many MANY compiler warning messages will be generated during
   the build process.

6) You can go to the demos/xmsamplers directory and do a make there.
   Other demos may build, or not depending on whatever. . . .

7) make install will do the install.  [It will fail at motifshell
   if you don't fix it, as mentioned above.]  You can do a make install
   in demos/xmsamplers if you want these.

8) If running on a SUN (as opposed to an X term), you will (probably) need
   to start openwin with something like:

        openwin -server /usr/X11R5/bin/Xsun


   [You might want to use an alias for this.]
   This fixes an annoying problem: The mouse keys stop working after you
   click on an icon to get the icon menu (on SUNs only, not X terms).
   The ALT keys still work, if you get stuck.  I don't know whether this
   is a bug in SUN's server or whether it is Motif related.

   Here is a copy of my .xinitrc:  It's not elegant.  Sun's default
   openwin startup file is in: /usr/openwin/lib/Xinitrc.  You can
   copy this to ~/.xinitrc and customize as desired.  Obviously, the
   default behavior is to start the OpenLook environment (boo!).


#!/bin/sh
#
# .xinitrc - OpenWindows startup script.
#
if [ -f $HOME/.Xdefaults ]; then
    xrdb $HOME/.Xdefaults              # Load Users X11 resource database
fi
if [ -f $HOME/.Xdefaults.sun ]; then
    xrdb -merge $HOME/.Xdefaults.sun
fi
DISPLAY=`hostname`:0.0
export DISPLAY
xhost + > /dev/null
#xterm -sb -sl 512 -T `hostname` -ls -n `hostname` &
xterm -sb -sl 512 -T `hostname` -n `hostname` &
mwm &
xclock -geometry +1010+0 &
xload -geometry +710+5 -fg red &
xsetroot -solid salmon &
xterm -sb -sl 100 -T CONSOLE_DO_NOT_LOGOUT -C -n console -iconic
#wait

Here's .Xdefaults.sun, which gives me a more readable font for use with
motif on Sun monitors:

!Some additional .Xdefaults values specifically for SUN
!
! After loading .Xdefaults, xrdb -merge .Xdefaults.sun
!
Mwm*fontList:           8x16
!Mwm*fontList:          vtbold
!Change as desired.


     You will probably want to maintain LD_LIBRARY_PATH to something like:
/opt/SUNWspro/lib:/usr/ccs/lib:/usr/ucblib:/usr/X11R5/lib:/usr/lib:
/usr/openwin/lib.  If you use emacs, you will need to leave /usr/openwin/lib
there.  [This is because you probably, like me, used the distributed version
of s-sol2.h, which explicitly refers to windowing libraries as being in the
/usr/openwin locations.  Yes, I know that emacs/Solaris ought to allow
LibXt.so.N.M to be "picked up" from elsewhere, like /usr/X11R5/lib, but the
one emacs links with is LibXt.so.4.something, and the mit one is
LibXt.so.5.something.  So it seems to want the .4 one.  Any comments?  I'd
prefer not to rebuild emacs based on the X11R5 libs because I occassionally
need to move the emacs binaries to machines without the mit files.]

-----------------------------------------------------------------------------
Subject: 167)  What compile errors/warnings might I get in both Sun 3 and Sun
4?

Answer:


make: Warning: Too many rules defined for target
make: Warning: Too many rules defined for target
"callbacks.c", line 1530: warning: illegal combination of pointer
and integer, op =
"callbacks.c", line 1531: warning: illegal combination of pointer
and integer, op =
"callbacks.c", line 1532: warning: illegal combination of pointer
and integer, op =
"utils.c", line 73: warning: illegal combination of pointer and integer, op =
"utils.c", line 74: warning: illegal combination of pointer and integer, op =
"utils.c", line 122: warning: illegal combination of pointer and integer, op =
"utils.c", line 123: warning: illegal combination of pointer and integer, op =
"utils.c", line 191: warning: illegal combination of pointer and integer, op =
"utils.c", line 194: warning: illegal combination of pointer and integer, op =
"utils.c", line 195: warning: illegal combination of pointer and integer, op =
"utils.c", line 196: warning: illegal combination of pointer and integer, op =
"utils.c", line 316: warning: illegal combination of pointer and integer, op =
"utils.c", line 334: warning: illegal combination of pointer and integer, op =
"utils.c", line 338: warning: illegal combination of pointer and integer, op =
"utils.c", line 341: warning: illegal combination of pointer and integer, op =
"xmdialogs.c", line 838: warning: illegal combination of pointer
and integer, op =
"xmeditor.c", line 1152: warning: illegal combination of pointer
and integer, op =

These warning messages can be ignored. OSF is aware of these warnings.


-----------------------------------------------------------------------------
Subject: 168)  On a Sun 3, what are the mwm startup error messages about?  I
get

mwm: Invalid accelerator specification on line 7 of
     specification string
mwm: Invalid accelerator specification on line 31 of
      configuration file


Answer: This is because some Sun keyboards do not have an F10 key and some sun
workstations which have an F10 key do not have X-servers which recognize it.
The F10 key is used by mwm.  If the machine does have an F10 key, the user
should use xmodmap to tell 
# Feedback

## Project

An app that tries to improve on Tinder.  

## Report

- There are no instructions on how to run the code. 

## Code

1. If I run `Matlabproject.m`, I get the following error message:
```matlab
Error using readtable (line 216)
Unable to open file
'/Users/joshgilbert/Documents/1000names.xlsx' as a
workbook. Check that the file exists, read access
is available, and the file is a valid spreadsheet
file.

Error in Matlabproject (line 99)
A =
readtable('/Users/joshgilbert/Documents/1000names.xlsx'); 
```
which is due to the use of an absolute path instead of a relative path for the Excel file. 

2. After fixing this, the code ends after line 100. It seems the code for the two GUIs has been included in this script, however MATLAB does not run the GUIs. 

3. This is actually a pretty basic problem that could have been solved earlier by interacting with me on Github. Instead, this group decided to just upload their work on Github a few hours before the deadline. 

4. To make it work, I have created a file for the individual and the prefprofile figs by copy-pasting the code, but when running it I get the following error message:
```matlab
Error: File: Individualprofile.m Line: 507 Column: 5
The function "homosexualnobutton_Callback" was closed with an 'end', but at least one
other function definition was not. To avoid confusion when using nested functions, it
is illegal to use both conventions in the same file.
```
This problem comes from the fact that the initial function is not closed with an end, while all the others are. So I added an end in line 45 of the newly created ```Individualprofile.m ```. 

5. After this, when I run it, I get the following error message:
```matlab
Error: File: Individualprofile.m Line: 141 Column: 1
This statement is not inside any function.
 (It follows the END that terminates the definition of the function
 "agepopup_Callback".)
```
The ```end``` was just before line 141, so this also needs fixing. 

6. At this point, I get the following error:
```matlab
Error: File: Individualprofile.m Line: 188 Column: 1
This statement is not inside any function.
 (It follows the END that terminates the definition of the function
 "locationlistbox_Callback".)
```
So it seems that this issue of putting commands outside functions is pretty widespread. I fix it everywhere to make sure the code runs.

7. It now runs and I can see the GUI, however when I set the Homosexual variable to any value, I get the following error:
```matlab
Undefined function or variable 'h'.

Error in Individualprofile>homosexualnobutton_Callback (line 494)
h' == get(handles.homosexualnobutton,'String')

Error in gui_mainfcn (line 95)
        feval(varargin{:});

Error in Individualprofile (line 42)
    gui_mainfcn(gui_State, varargin{:});

Error in
matlab.graphics.internal.figfile.FigFile/read>@(hObject,eventdata)Individualprofile('homosexualnobutton_Callback',hObject,eventdata,guidata(hObject)) 
Error while evaluating UIControl Callback.
```
Instead of an assignment to h, you are testing a logical expression without defining h. 


8. I keep receiving errors, now related to the location:
```matlab
Undefined function or variable 'North'.

Error in Individualprofile>locationlistbox_Callback (line 170)
if locationlistboxvalue == North England

Error in gui_mainfcn (line 95)
        feval(varargin{:});

Error in Individualprofile (line 42)
    gui_mainfcn(gui_State, varargin{:});

Error in
matlab.graphics.internal.figfile.FigFile/read>@(hObject,eventdata)Individualprofile('locationlistbox_Callback',hObject,eventdata,guidata(hObject)) 
Error while evaluating UIControl Callback.
```
This is clearly due to not using ```strcmp``` for the comparison in line 170, and also to ```North England``` not being a string. Again, a pretty easy problem to solve by contacting me. 

I decided to stop here. Unfortunately this project didn't work out. Most of the problems were actually pretty basic, and could have been solved by contacting me on time. The code does not run. The code is full of basic mistakes. However, students put effort in learning new things, which has to be taken into account. 


## New things learned

1. GUI




## MARK: 50
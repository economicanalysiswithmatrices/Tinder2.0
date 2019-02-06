function varargout = Individualprofile(varargin)
% INDIVIDUALPROFILE MATLAB code for Individualprofile.fig
%      INDIVIDUALPROFILE, by itself, creates a new INDIVIDUALPROFILE or raises the existing
%      singleton*.
%
%      H = INDIVIDUALPROFILE returns the handle to a new INDIVIDUALPROFILE or the handle to
%      the existing singleton*.
%
%      INDIVIDUALPROFILE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDIVIDUALPROFILE.M with the given input arguments.
%
%      INDIVIDUALPROFILE('Property','Value',...) creates a new INDIVIDUALPROFILE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Individualprofile_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Individualprofile_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Individualprofile

% Last Modified by GUIDE v2.5 14-Jan-2019 09:08:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Individualprofile_OpeningFcn, ...
    'gui_OutputFcn',  @Individualprofile_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
end

% --- Executes just before Individualprofile is made visible.
function Individualprofile_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Individualprofile (see VARARGIN)

% Choose default command line output for Individualprofile
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Individualprofile wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = Individualprofile_OutputFcn(~, ~, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end
% --- Executes on button press in malebutton.
function malebutton_Callback(hObject, eventdata, handles)
% hObject    handle to malebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of malebutton
% We need to identify and receive the male button
m = get(handles.malebutton,'String')
% This sets the program so that pressing the male button means extraction of
% all males within the dataset.
% The if function evaluates the expression and executes it when it is true.
if set(handles.malebutton,'String',m)
    GenderMatch = find(Gender==1)
end
end


% --- Executes on button press in femalebutton.
function femalebutton_Callback(hObject, eventdata, handles)
% hObject    handle to femalebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of femalebutton
% We need to identify and receive the female button
f = get(handles.femalebutton,'String')
% This sets the program so that pressing the female button means extraction of
% all females within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.femalebutton,'String',f)
    Gendermatch = find(Gender==0)
end
end

% --- Executes on selection change in agepopup.
function agepopup_Callback(hObject, eventdata, handles)
% hObject    handle to agepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns agepopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from agepopup
% We need to identify and receive the possible age options available.
agepopstring = get(handles.agepopup,'String');
% This program identfies a value within the age options that has been
% selected from the menu.
agepopvalue = get(handles.agepopup,'Value');
if agepopvalue == 18-25
    agematch=find(18<=age & age<=25)
else if agepopvalue == 26-35
        agematch=find(26>=age & age<=35)
    else if agepopvalue == 36-45
            agematch = find(36<=age & age<=45)
        else if agepopvalue == 46-55
                agematch= find(46<=age & age<=55)
            else if agepopvalue == 56-65
                    agematch= find(56<=age & age<=65)
                end
            end
        end
    end
end


% This evaluates the expression and executes an option chosen from the string of options of ages available.
age = agepopstring{agepopvalue};
end

% --- Executes during object creation, after setting all properties.
function agepopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to agepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in locationlistbox.
function locationlistbox_Callback(hObject, eventdata, handles)
% hObject    handle to locationlistbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns locationlistbox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from locationlistbox
% We need to identify and receive the possible location options available.
locationlistboxstring = get(handles.locationlistbox,'String');
% This program identfies a value within the location options that has been
% selected from the menu.
locationlistboxvalue = get(handles.locationlistbox,'Value');
if locationlistboxvalue == North England
    locationmatch== find (location==2)
else if locationlistboxvalue == South England
        locationmatch = find(location==1)
    else if locationlistboxvalue == The Midlands
            locationmatch = find(location==3)
        else if locationlistboxvalue == Wales
                locationmatch= find(location==4)
            else if locationlistboxvalue == Scotland
                    locationmatch= find(location==5);
                end
            end
        end
    end
end


% This evaluates the expression and executes an option chosen from the string of options of ages available.
location= locationlistboxstring{locationlistboxvalue};
end

% --- Executes during object creation, after setting all properties.
function locationlistbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to locationlistbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



% --- Executes on selection change in heightpopup.
function heightpopup_Callback(hObject, eventdata, handles)
% hObject    handle to heightpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns heightpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from heightpopup
% We need to identify and receive the possible height options available.
heightpopstring = get(handles.heightpopup,'String');
% This program identfies a value within the height options that has been
% selected from the menu.
heightpopvalue = get(handles.heightpopup,'Value');
if heightpopvalue == 120-130
    heightmatch =find(120<=height & height<=130)
else if heightpopvalue == 131-140
        heightmatch = find(131<=height & height<=140)
    else if heightpopvalue == 141-150
            heightmatch = find(141<=height & height<=150)
        else if heightpopvalue == 151-160
                heightmatch = find(151<=height & height<=160)
            else if heightpopvalue == 161-170
                    heightmatch = find(161<=height & height<=170)
                else if heightpopvalue == 171-180
                        heightmatch = find(171<=height & height<=180)
                    end
                end
            end
        end
    end
end




% This evaluates the expression and executes an option chosen from the string of options of heights available.
height= heightpopstring{heightpopvalue};
end

% --- Executes during object creation, after setting all properties.
function heightpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to heightpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



% --- Executes on button press in whitebutton.
function whitebutton_Callback(hObject, eventdata, handles)
% hObject    handle to whitebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of whitebutton
% We need to identify and receive the white race button
w = get(handles.whitebutton,'String')
% This sets the program so that pressing the white button means extraction of
% all white people within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.whitebutton,'String',w)
    ethnicitymatch = find(ethnicity==1)
end
end
% --- Executes on button press in blackbutton.
function blackbutton_Callback(hObject, eventdata, handles)
% hObject    handle to blackbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of blackbutton
% We need to identify and receive the black button
b = get(handles.blackbutton,'String')
% This sets the program so that pressing the black race button means extraction of
% all black people within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.blackbutton,'String',b)
    ethnicitymatch = find(ethnicity==2)
end
end

% --- Executes on button press in asianbutton.
function asianbutton_Callback(hObject, eventdata, handles)
% hObject    handle to asianbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of asianbutton
% We need to identify and receive the asian button
as = get(handles.asianbutton,'String')
% This sets the program so that pressing the asian race button means extraction of
% all asian people within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.asianbutton,'String',as)
    ethnicitymatch=find(ethnicity==3)
end
end

% --- Executes on selection change in haircolourpopup.
function haircolourpopup_Callback(hObject, eventdata, handles)
% hObject    handle to haircolourpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns haircolourpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from haircolourpopup
% We need to identify and receive the possible hair colour options available.
haircolourpopstring = get(handles.haircolourpopup,'String');
% This program identfies a value within the hair colour options that has been
% selected from the menu.
haircolourpopvalue = get(handles.haircolourpopup,'Value');
if haircolourpopvalue == Blonde,
    hairmatch =find(haircolour==3)
else if haircolourpopvalue == Brunette,
        hairmatch = find(haircolour==1)
    else if haircolourpopvalue == Black,
            hairmatch= find(haircolour==2)
        else if haircolourpopvalue == Red,
                hairmatch= find(haircolour==4);
            end
        end
    end
end


% This evaluates the expression and executes an option chosen from the string of options of hair colours available.
haircolour = haircolourpopstring{haircolourpopvalue};
end

% --- Executes during object creation, after setting all properties.
function haircolourpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to haircolourpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


% --- Executes on button press in parentyesbutton.
function parentyesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to parentyesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parentyesbutton
% We need to identify and receive the parent yes button
p = get(handles.parentyesbutton,'String')
% This sets the program so that pressing the parent yes button means extraction of
% all people with children within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.parentyesbutton,'String',p)
    parentmatch= find(Parent==1)
end
end

% --- Executes on button press in parentnobutton.
function parentnobutton_Callback(hObject, eventdata, handles)
% hObject    handle to parentnobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parentnobutton
% We need to identify and receive the parent no button
p' == get(handles.parentnobutton,'String')
% This sets the program so that pressing the parent no button means extraction of
% all people without children within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.parentnobutton,'String',p')
    parentmatch= find(Parent==0)
end
end

% --- Executes on button press in smokeryesbutton.
function smokeryesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to smokeryesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of smokeryesbutton
% We need to identify and receive the smoker yes button
s = get(handles.smokeryesbutton,'String')
% This sets the program so that pressing the smoker yes button means extraction of
% all people who do smoke within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.smokeryesbutton,'String',s)
    smokematch= find(Smoke==1)
end
end
% --- Executes on button press in smokernobutton.
function smokernobutton_Callback(hObject, eventdata, handles)
% hObject    handle to smokernobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of smokernobutton
% We need to identify and receive the smoker no button
s' == get(handles.smokernobutton,'String')
% This sets the program so that pressing the smoker no button means extraction of
% all people who do not smoke within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.smokernobutton,'String',s')
    smokematch = find(Smoke==0)
end
end

% --- Executes on selection change in incomepopup.
function incomepopup_Callback(hObject, eventdata, handles)
% hObject    handle to incomepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns incomepopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from incomepopup
% We need to identify and receive the possible income options available.
incomepopstring = get(handles.incomepopup,'String');
% This program identfies a value within the income options that has been
% selected from the menu.
incomepopvalue = get(handles.incomepopup,'Value');
if incomepopvalue == 20-39
    incomematch = find(19<=income & income<=39)
else if incomepopvalue == 40-60,
        incomematch = find(40<=income & income<=60)
    else if incomepopvalue == 61-81,
            incomematch =find(61<=income & income<=81)
        else if incomepopvalue == 82-102,
                incomematch = find(82<=income & income<=102)
            else if incomepopvalue == 103-120,
                    incomematch = find(103<=income & income<=120)
                end
            end
        end
    end
end

% This evaluates the expression and executes an option chosen from the string of options of incomes available.
income = incomepopstring{incomepopvalue};
end

% --- Executes during object creation, after setting all properties.
function incomepopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incomepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


% --- Executes on button press in homosexualyesbutton.
function homosexualyesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to homosexualyesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of homosexualyesbutton
% We need to identify and receive the homosexual yes button
h = get(handles.homosexualyesbutton,'String')
% This sets the program so that pressing the homosexual yes button means extraction of
% all homosexual males and females within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.homosexualyesbutton,'String',h)
    homomatch1 = find(Homo==1 & Gender==1 | Homo==1 & Gender==0)
end
end

% --- Executes on button press in homosexualnobutton.
function homosexualnobutton_Callback(hObject, eventdata, handles)
% hObject    handle to homosexualnobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of homosexualnobutton
% We need to identify and receive the homosexual no button
h' = get(handles.homosexualnobutton,'String')
% This sets the program so that pressing the homosexual no button means extraction of
% all males and females within the dataset that are not homosexual.
% The if function evaluates the expression and executes it when it is true.
if set(handles.homosexualnobutton,'String',h')
    homomatch1 = find(Homo==0 & Gender==1| Homo==0 & Gender==0)
end
end
% --- Executes on button press in nextbutton.
function nextbutton_Callback(hObject, eventdata, handles)
% hObject    handle to nextbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiopen('path to existing file')
end
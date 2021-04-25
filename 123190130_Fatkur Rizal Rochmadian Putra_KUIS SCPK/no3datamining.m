function varargout = no3datamining(varargin)
% NO3DATAMINING MATLAB code for no3datamining.fig
%      NO3DATAMINING, by itself, creates a new NO3DATAMINING or raises the existing
%      singleton*.
%
%      H = NO3DATAMINING returns the handle to a new NO3DATAMINING or the handle to
%      the existing singleton*.
%
%      NO3DATAMINING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NO3DATAMINING.M with the given input arguments.
%
%      NO3DATAMINING('Property','Value',...) creates a new NO3DATAMINING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before no3datamining_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to no3datamining_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help no3datamining

% Last Modified by GUIDE v2.5 25-Apr-2021 22:27:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @no3datamining_OpeningFcn, ...
                   'gui_OutputFcn',  @no3datamining_OutputFcn, ...
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


% --- Executes just before no3datamining is made visible.
function no3datamining_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to no3datamining (see VARARGIN)

% Choose default command line output for no3datamining
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes no3datamining wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = no3datamining_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts=detectImportOptions('glass.csv');
opts.SelectedVariableNames =(1:9);
data = readmatrix('glass.csv',opts);
set(handles.uitable1,'data',data);


function ri_Callback(hObject, eventdata, handles)
% hObject    handle to ri (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ri as text
%        str2double(get(hObject,'String')) returns contents of ri as a double


% --- Executes during object creation, after setting all properties.
function ri_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ri (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function si_Callback(hObject, eventdata, handles)
% hObject    handle to si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of si as text
%        str2double(get(hObject,'String')) returns contents of si as a double


% --- Executes during object creation, after setting all properties.
function si_CreateFcn(hObject, eventdata, handles)
% hObject    handle to si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function na_Callback(hObject, eventdata, handles)
% hObject    handle to na (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of na as text
%        str2double(get(hObject,'String')) returns contents of na as a double


% --- Executes during object creation, after setting all properties.
function na_CreateFcn(hObject, eventdata, handles)
% hObject    handle to na (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mg_Callback(hObject, eventdata, handles)
% hObject    handle to mg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mg as text
%        str2double(get(hObject,'String')) returns contents of mg as a double


% --- Executes during object creation, after setting all properties.
function mg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function al_Callback(hObject, eventdata, handles)
% hObject    handle to al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of al as text
%        str2double(get(hObject,'String')) returns contents of al as a double


% --- Executes during object creation, after setting all properties.
function al_CreateFcn(hObject, eventdata, handles)
% hObject    handle to al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fe_Callback(hObject, eventdata, handles)
% hObject    handle to fe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fe as text
%        str2double(get(hObject,'String')) returns contents of fe as a double


% --- Executes during object creation, after setting all properties.
function fe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ba_Callback(hObject, eventdata, handles)
% hObject    handle to ba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ba as text
%        str2double(get(hObject,'String')) returns contents of ba as a double


% --- Executes during object creation, after setting all properties.
function ba_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ca_Callback(hObject, eventdata, handles)
% hObject    handle to ca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ca as text
%        str2double(get(hObject,'String')) returns contents of ca as a double


% --- Executes during object creation, after setting all properties.
function ca_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k2_Callback(hObject, eventdata, handles)
% hObject    handle to k2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k2 as text
%        str2double(get(hObject,'String')) returns contents of k2 as a double


% --- Executes during object creation, after setting all properties.
function k2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ri=str2double(get(handles.ri,'String'));
na=str2double(get(handles.na,'String'));
mg=str2double(get(handles.mg,'String'));
al=str2double(get(handles.al,'String'));
si=str2double(get(handles.si,'String'));
k=str2double(get(handles.k2,'String'));
ca=str2double(get(handles.ca,'String'));
ba=str2double(get(handles.ba,'String'));
fe=str2double(get(handles.fe,'String'));
k2=str2double(get(handles.k2,'String'));
sample = [ri na mg al si k ca ba fe];
opts=detectImportOptions('glass.csv');
opts.SelectedVariableNames =(1:9);
training = readmatrix('glass.csv',opts);

opts=detectImportOptions('glass.csv');
opts.SelectedVariableNames =(10);
group=readmatrix('glass.csv',opts);
class = fitcknn(training,group,'NumNeighbors',k);
klasifikasi = predict(class,sample);

set(handles.hasil,'String',klasifikasi);


function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
set(handles.ri, 'String', '');
set(handles.na, 'String', '');
set(handles.mg, 'String', '');
set(handles.al, 'String', '');
set(handles.si, 'String', '');
set(handles.k, 'String', '');
set(handles.ca, 'String', '');
set(handles.ba, 'String', '');
set(handles.fe, 'String', '');
set(handles.k2, 'String', '');
set(handles.hasil, 'String', '');
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

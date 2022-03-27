function varargout = mustafa_taha_k(varargin)
% MUSTAFA_TAHA_K MATLAB code for mustafa_taha_k.fig
%      MUSTAFA_TAHA_K, by itself, creates a new MUSTAFA_TAHA_K or raises the existing
%      singleton*.
%
%      H = MUSTAFA_TAHA_K returns the handle to a new MUSTAFA_TAHA_K or the handle to
%      the existing singleton*.
%
%      MUSTAFA_TAHA_K('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MUSTAFA_TAHA_K.M with the given input arguments.
%
%      MUSTAFA_TAHA_K('Property','Value',...) creates a new MUSTAFA_TAHA_K or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mustafa_taha_k_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mustafa_taha_k_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mustafa_taha_k

% Last Modified by GUIDE v2.5 20-Mar-2022 20:12:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mustafa_taha_k_OpeningFcn, ...
                   'gui_OutputFcn',  @mustafa_taha_k_OutputFcn, ...
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

function pop_enable(handles)
set (handles.ohm_pop,'enable', 'off')
set (handles.amper_pop,'enable', 'off')

% --- Executes just before mustafa_taha_k is made visible.
function mustafa_taha_k_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mustafa_taha_k (see VARARGIN)

% Choose default command line output for mustafa_taha_k
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mustafa_taha_k wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = mustafa_taha_k_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function resistor_edit_Callback(hObject, eventdata, handles)
% hObject    handle to resistor_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resistor_edit as text
%        str2double(get(hObject,'String')) returns contents of resistor_edit as a double


% --- Executes during object creation, after setting all properties.
function resistor_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resistor_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function current_edit_Callback(hObject, eventdata, handles)
% hObject    handle to current_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of current_edit as text
%        str2double(get(hObject,'String')) returns contents of current_edit as a double


% --- Executes during object creation, after setting all properties.
function current_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to current_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function voltage_edit_Callback(hObject, eventdata, handles)
% hObject    handle to voltage_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of voltage_edit as text
%        str2double(get(hObject,'String')) returns contents of voltage_edit as a double


% --- Executes during object creation, after setting all properties.
function voltage_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to voltage_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate_voltage.
function calculate_voltage_Callback(hObject, eventdata, handles)
% hObject    handle to calculate_voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

resistor=str2double(get(handles.resistor_edit, 'string'));
current = str2double (get(handles.current_edit, 'string'));
voltage=resistor*current;
set (handles.voltage_edit, 'string', voltage);

% --- Executes on selection change in ohm_pop.
function ohm_pop_Callback(hObject, eventdata, handles)
% hObject    handle to ohm_pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ohm_pop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ohm_pop

pop_enable(handles)
set (handles.ohm_pop,'enable', 'on')
set (handles.amper_pop,'enable', 'on')

x=str2double(get(handles.resistor_edit,'string'));

h = get(hObject,'value');
switch h
    case 1
        set (handles.resistor_edit,'visible','off')
    case 2
        y = x*1;
    case 3
        y = x*10^3;
    case 4
        y = x*10^6;
end
if h~=1
    set (handles.resistor_edit,'visible','on','string',y)
end


% --- Executes during object creation, after setting all properties.
function ohm_pop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ohm_pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in amper_pop.
function amper_pop_Callback(hObject, eventdata, handles)
% hObject    handle to amper_pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns amper_pop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from amper_pop

pop_enable(handles)
set (handles.ohm_pop,'enable', 'on')
set (handles.amper_pop,'enable', 'on')

x=str2double(get(handles.current_edit,'string'));

h = get(hObject,'value');
switch h
    case 1
        set (handles.current_edit,'visible','off')
    case 2
        y = x*10^0;
    case 3
        y = x*10^-3;
    case 4
        y = x*10^-6;
end
if  h~=1
    set (handles.current_edit,'visible','on','string',y)    
end

% --- Executes during object creation, after setting all properties.
function amper_pop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amper_pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

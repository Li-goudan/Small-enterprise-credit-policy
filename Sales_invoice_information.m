%% ������ӱ���е�����
% ���ڴ����µ��ӱ�������ݵĽű�:
%
%    ������: E:\ThinkPad\������ģ�\����1��123�����Ŵ���¼��ҵ���������.xlsx
%    ������: ���Ʊ��Ϣ
%
% �� MATLAB �� 2020-09-11 09:12:04 �Զ�����

%% ���õ���ѡ��
opts = spreadsheetImportOptions("NumVariables", 8);

% ָ��������ͷ�Χ
opts.Sheet = "���Ʊ��Ϣ";
opts.DataRange = "A2:H210948";

% ָ�������ƺ�����
opts.VariableNames = ["VarName1", "VarName2", "VarName3", "VarName4", "VarName5", "VarName6", "VarName7", "VarName8"];
opts.VariableTypes = ["categorical", "double", "datetime", "categorical", "double", "double", "double", "categorical"];
opts = setvaropts(opts, [1, 4, 8], "EmptyFieldRule", "auto");

% ��������
S2 = readtable("E:\ThinkPad\������ģ�\����1��123�����Ŵ���¼��ҵ���������.xlsx", opts, "UseExcel", false);


%% �����ʱ����
clear opts
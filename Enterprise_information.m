%% ������ӱ���е�����
% ���ڴ����µ��ӱ�������ݵĽű�:
%
%    ������: E:\ThinkPad\������ģ�\����1��123�����Ŵ���¼��ҵ���������.xlsx
%    ������: ��ҵ��Ϣ
%
% �� MATLAB �� 2020-09-11 09:12:37 �Զ�����

%% ���õ���ѡ��
opts = spreadsheetImportOptions("NumVariables", 4);

% ָ��������ͷ�Χ
opts.Sheet = "��ҵ��Ϣ";
opts.DataRange = "A2:D124";

% ָ�������ƺ�����
opts.VariableNames = ["VarName1", "VarName2", "VarName3", "VarName4"];
opts.VariableTypes = ["string", "string", "categorical", "categorical"];
opts = setvaropts(opts, [1, 2], "WhitespaceRule", "preserve");
opts = setvaropts(opts, [1, 2, 3, 4], "EmptyFieldRule", "auto");

% ��������
Untitled = readtable("E:\ThinkPad\������ģ�\����1��123�����Ŵ���¼��ҵ���������.xlsx", opts, "UseExcel", false);


%% �����ʱ����
clear opts
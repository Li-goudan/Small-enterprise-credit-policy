%% 导入电子表格中的数据
% 用于从以下电子表格导入数据的脚本:
%
%    工作簿: E:\ThinkPad\建他娘的！\附件1：123家有信贷记录企业的相关数据.xlsx
%    工作表: 销项发票信息
%
% 由 MATLAB 于 2020-09-11 09:12:04 自动生成

%% 设置导入选项
opts = spreadsheetImportOptions("NumVariables", 8);

% 指定工作表和范围
opts.Sheet = "销项发票信息";
opts.DataRange = "A2:H210948";

% 指定列名称和类型
opts.VariableNames = ["VarName1", "VarName2", "VarName3", "VarName4", "VarName5", "VarName6", "VarName7", "VarName8"];
opts.VariableTypes = ["categorical", "double", "datetime", "categorical", "double", "double", "double", "categorical"];
opts = setvaropts(opts, [1, 4, 8], "EmptyFieldRule", "auto");

% 导入数据
S2 = readtable("E:\ThinkPad\建他娘的！\附件1：123家有信贷记录企业的相关数据.xlsx", opts, "UseExcel", false);


%% 清除临时变量
clear opts
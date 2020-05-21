function y = read_Zeu(name)
InPath1 = 'data\seasonal\Zeu\';
name1 = name;
source = strcat(InPath1,name1);
y = ncread(source,'Zeu_lee');
end

function classes_comparison(data, title_text, classes_num, classes_label)

% Function used for ploting binary image reprenting a specific class
% Inputs :  data is the classification map (see show_mapping.m)
%           title_text is the title of the figure to display
%           classes_num is the array of the classes' number to plot
%           classes_label is the array containing the classes' name

N = length(classes_num);
n = 1;
figure(1);clf
for i = classes_num
    subplot(N,1,n);
    imshow(data==i, 'colormap',gray);
    title("Feature n°"+string(i)+' - '+classes_label(:,i));
    n = n+1;
end
sgtitle("     "+title_text);

%imshow(normalize(ClMAP_OTVCA),'Colormap',jet(16))
%imshow(histeq(data(:,:)),colormap(parula(16)));
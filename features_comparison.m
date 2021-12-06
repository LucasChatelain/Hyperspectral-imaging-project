function features_comparison(data, title_text, features_num)

% Function used for ploting the extracted features
% Inputs :  data is the normalized features extracted
%           title_text is the title of the figure to display
%           features_num is the array of the features' number to plot

N = length(features_num);
n = 1;
figure(1); clf
for i = features_num
    subplot(N,1,n);
    imshow(histeq(data(:,:,i)));
    title("Feature n°"+string(i));
    n = n+1;
end
sgtitle(title_text);
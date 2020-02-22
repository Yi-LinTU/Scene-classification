clc;
clear;

TrainingAcc = [
0.4369 
0.6081 
0.6766 
0.7274 
0.7763 
0.8035 
0.8268 
0.8420 
0.8603 
0.8756 
0.8822 
0.8964 
0.9032 
0.9098 
0.9228 
0.9248 
0.9367 
0.9411 
0.9448 
0.9496 
0.9578 
0.9662 
0.9606 
0.9652 
0.9777 
0.9714 
0.9778 
0.9828 
0.9857 
0.9771 
0.9844 
0.9819 
0.9858 
0.9844 
0.9882 
0.9969 
0.9982 
0.9979 
0.9987 
0.9990 
0.9987 
0.9991 
0.9993 
0.9987 
0.9989 
0.9987 
0.9990 
0.9989 
0.9990 
0.9988 
0.9989 
0.9989 
0.9988 
0.9993 
0.9991 
0.9991 
0.9992 
0.9992 
0.9992 
0.9993 
0.9990 
0.9993 
0.9991 
0.9991 
0.9991 
0.9991 
0.9991 
0.9989 
0.9990 
0.9991 
0.9994 
0.9990 
0.9991 
0.9996 
0.9993 
0.9988 
0.9993 
0.9994 
0.9991 
0.9994 
]

TrainingLoss = [
1.3478 
0.9698 
0.8278 
0.7311 
0.6289 
0.5555 
0.4955 
0.4542 
0.4007 
0.3626 
0.3282 
0.3014 
0.2793 
0.2542 
0.2239 
0.2105 
0.1826 
0.1616 
0.1591 
0.1511 
0.1184 
0.0958 
0.1126 
0.1019 
0.0676 
0.0853 
0.0647 
0.0477 
0.0449 
0.0658 
0.0502 
0.0545 
0.0445 
0.0453 
0.0382 
0.0110 
0.0068 
0.0064 
0.0042 
0.0042 
0.0039 
0.0031 
0.0029 
0.0037 
0.0026 
0.0034 
0.0030 
0.0026 
0.0030 
0.0032 
0.0024 
0.0025 
0.0028 
0.0019 
0.0021 
0.0024 
0.0020 
0.0023 
0.0022 
0.0024 
0.0019 
0.0021 
0.0019 
0.0018 
0.0023 
0.0022 
0.0017 
0.0028 
0.0022 
0.0019 
0.0016 
0.0024 
0.0019 
0.0015 
0.0015 
0.0021 
0.0014 
0.0018 
0.0020 
0.0015 
]

TestingInput = [0.8433 0.8613 0.8160 0.8663 0.8667 0.8673 0.8690 0.8680];
TestingAcc = zeros(80, 1);

for i = 1:80
    if i ~= 80
        j = fix(i/10) + 1;
    else
        j = 8;
    end
    TestingAcc(i) = TestingInput(j);
end



figure,
subplot('Position', [0.08 0.1 0.35 0.55]),
title('Accuracy', 'FontSize',18);hold on;
plot(TrainingAcc, 'LineWidth', 1.2);hold on;
plot(TestingAcc, 'LineWidth', 1.2);axis([0 80 0 1]);hold on;
legend({'Training Accuracy','Testing Accuracy'},'Location','southwest');
xlabel('Epoch', 'FontSize',18);

subplot('Position', [0.58 0.1 0.35 0.55]),
title('Loss', 'FontSize',18);hold on;
plot(TrainingLoss, 'LineWidth', 1.2);hold on;
axis([0 80 0 1.4]);hold on;
legend({'Training Loss'},'Location','southwest');
xlabel('Epoch', 'FontSize',18);

axes( 'Position', [0, 0.9, 1, 5] ) ;
set( gca, 'Color', 'None', 'XColor', 'None', 'YColor', 'None' ) ;
text( 0.5, 0, 'Second set of parameters', 'FontSize', 28', 'FontWeight', 'Bold', ...
      'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Bottom' ) ;
  
axes( 'Position', [0, 0.8, 1, 5] ) ;
set( gca, 'Color', 'None', 'XColor', 'None', 'YColor', 'None' ) ;
text( 0.5, 0, 'seed = 0, epoch = 80, batch size = 32,', 'FontSize', 20', ...
      'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Bottom' ) ;
  
axes( 'Position', [0, 0.75, 1, 5] ) ;
set( gca, 'Color', 'None', 'XColor', 'None', 'YColor', 'None' ) ;
text( 0.5, 0, 'SGD optimizer, LR = initial 0.01 and drop every 35 epoch', 'FontSize', 20', ...
      'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Bottom' ) ;
  
axes( 'Position', [0, 0.7, 1, 5] ) ;
set( gca, 'Color', 'None', 'XColor', 'None', 'YColor', 'None' ) ;
text( 0.5, 0, 'Test every 10 epoch', 'FontSize', 20', ...
      'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Bottom' ) ;



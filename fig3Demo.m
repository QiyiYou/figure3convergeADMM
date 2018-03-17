
clc;
clear;
close all;
load ADMMbeta
figure
mm=500;
% line = plot(1:mm,pVec(1,1:mm),'b:',1:mm,pVec(2,1:mm),...
%     'g-.',1:mm,pVec(3,1:mm),'r-',1:mm,pVec(4,1:mm),'k-',1:mm,pVec(5,1:mm),'y-');
line = plot(1:mm,ECsumMat(1,1:mm)*B,'g-.',1:mm,ECsumMat(2,1:mm)*B,...
    'r-',1:mm,ECsumMat(3,1:mm)*B,'b.');

set(line,'MarkerSize',8,'LineWidth',2);
grid;
legend('ADMM,\beta=0.01','ADMM,\beta=1','ADMM,\beta=100');
xlabel('Iter (k)');
ylabel('System throughput (Mbps)');
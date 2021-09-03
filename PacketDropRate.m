close all;
clear;
clc;

% 
% TDMA and pollNet ���綪����
%

%
load PacketDrop.mat;
load channel_utilization.mat;
nodenum = 7 : 8 : 95;
   
figure(1);

F = plot(nodenum, tdma_packetdrop,'-^', nodenum, pollNet_packetdrop,'--s');
set(F(1),'Color',[0 0.5 1], 'MarkerFaceColor',[0 0.5 1],'LineWidth',1.5);
set(F(2),'Color', [1 0.5 0], 'MarkerFaceColor',[1 0.5 0]','LineWidth',1.5);
xlim([0 96]);
ylim([0 1]);
yticks(0 : 0.2 : 1);
xlabel('����ڵ���');
ylabel('ϵͳ������');
title('��ͬ�ڵ������µ�����ϵͳ������')
legend('TDMA','poll-Net','Location','NorthWest');
grid on;
box on;

figure(2);

%%
E = plot(nodenum,tdma_channel_utilization,'-^', nodenum, pollnet_channel_utilization,'--s');
set(E(1),'Color',[0 0.5 1], 'MarkerFaceColor',[0 0.5 1],'LineWidth',1.5);
set(E(2),'Color', [1 0.5 0], 'MarkerFaceColor',[1 0.5 0]','LineWidth',1.5);
xlim([0 96]);
ylim([0 1]);
yticks(0 : 0.2 : 1);
xlabel('����ڵ���');
ylabel('ƽ���ŵ�������');
title('��ͬ�ڵ������µ�����ƽ���ŵ�������');
legend('TDMA', 'poll-Net','Location','NorthEast');


grid on;
box on;
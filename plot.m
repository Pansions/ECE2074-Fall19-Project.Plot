clear;clc;
%format compact;
%Drawing the graph
%5*w0 = 1581.14
%Set up basic parameter;
w0 = 100*sqrt(10);
wc1 = -100+100*sqrt(11);
wc2 = wc1 + 200;

w = 0:1582;
wa1 = 0:317;
wa2 = 316:1582;

wa1(318) = 100*sqrt(10);
wa2(1) = 100*sqrt(10);

mag = (1000 * w) ./ sqrt((w.^2 - 10^5).^2 + (200*w).^2);
amp1 = (pi * 1.5) - atan(200.*wa1./(-1*wa1.^2-10^5));
amp2 = (pi * 0.5) + atan(200.*wa2./(wa2.^2-10^5));

subplot(3,1,1);
%title("Magnitude Function");
p1 = plot(w,mag,'r');
p1.LineWidth = 2;
grid on;
xticks([0.1*w0, 0.5*w0, wc1, w0, wc2, 1.5*w0, 2*w0, 3*w0, 5*w0]);
xticklabels({'0.1¦Ø0','0.5¦Ø0','¦Øc1','¦Ø0','¦Øc2','1.5¦Ø0','2¦Ø0' ,'3¦Ø0' ,'5¦Ø0'});
xlabel('Frequency (0, 5¦Ø0)');
ylabel('Magnitude');

subplot(3,1,2);
%title("Amplitude Function 1");
p2 = plot(wa1, amp1,'k');
p2.LineWidth = 2;
grid on;
xticks([0.1*w0, 0.5*w0, wc1, w0]);
xticklabels({'0.1¦Ø0','0.5¦Ø0','¦Øc1','¦Ø0'});
xlabel('Frequency (0, ¦Ø0)');
ylabel('Amplitude');

subplot(3,1,3);
%title("Amplitude Function 2");
p3 = plot(wa2, amp2,'k');
p3.LineWidth = 2;
grid on;
xticks([w0, wc2, 1.5*w0, 2*w0, 3*w0, 5*w0]);
xticklabels({'¦Ø0','¦Øc2','1.5¦Ø0','2¦Ø0' ,'3¦Ø0' ,'5¦Ø0'});
xlabel('Frequency (¦Ø0, 5¦Ø0)');
ylabel('Amplitude');

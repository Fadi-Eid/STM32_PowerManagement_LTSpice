data = readmatrix('STM32_PM_Sim1.txt');

% Extract columns
time = data(:,1);
V_pb_3v3 = data(:,2);
V_reset_logic = data(:,3);
V_stm32_3v3 = data(:,4);
I_R16 = data(:,5);


%% Plots
h = findobj(0,'Name','STM32 Power Management');
if isempty(h)
    h=figure('Name','STM32 Power Management',...
        'NumberTitle','off');
end

subplot(4, 1, 1);
hold on
plot(time, V_pb_3v3, 'r', 'DisplayName', 'PB 3.3V');
xlabel('Time (s)');
ylabel('V(Power Board) (V)');
yline(3.6, 'k--', 'HandleVisibility', 'off');
yline(3.0, 'k--', 'HandleVisibility', 'off');
grid on;
legend;
title('');
hold off;

subplot(4, 1, 2);
hold on
plot(time, I_R16, 'b', 'DisplayName', 'Load current');
xlabel('Time (s)');
ylabel('I(A)')
yline(0.3, 'k--', 'HandleVisibility', 'off');
grid on;
legend;
title('');
hold off;

subplot(4, 1, 3);
hold on
plot(time, V_reset_logic, 'g', 'DisplayName', 'Reset command');
xlabel('Time (s)');
ylabel('V(Reset)');
grid on;
legend;
title('');
hold off;

subplot(4, 1, 4);
hold on
plot(time, V_stm32_3v3, 'm', 'DisplayName', 'STM32 Voltage');
xlabel('Time (s)');
ylabel('V(STM32)');
grid on;
legend;
title('');
hold off;

c = get(h , 'children');
linkaxes(c(cellfun('isempty', get(c, 'tag'))),'x');
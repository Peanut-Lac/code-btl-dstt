% code-btl-dstt.m
%% BÀI TẬP LỚN ĐẠI SỐ TUYẾN TÍNH
clc; clear; close all;

%% BƯỚC 1 (Mạnh): Ma trận đầu vào



format short g; % Tự động ẩn bớt các số 0 thừa (hiển thị 1 thay vì 1.0000)
% 1. Nhập cấp của ma trận
while true
    try
        n = input('Nhập cấp ma trận vuông n: ');
        if isnumeric(n) && isscalar(n) && n >= 1 && floor(n) == n
            break;
        else
            fprintf('Lỗi: Kích thước phải là số nguyên dương! Nhập lại.\n');
        end
    catch
        fprintf('Lỗi: Cú pháp không hợp lệ! Nhập lại.\n');
    end
end

% 2. Nhập từng hàng
A = zeros(n, n);
fprintf('\nNhập các phần tử từng hàng (cách nhau bằng dấu cách, ví dụ: 1 5 7):\n');

for i = 1:n
    while true
        row_str = input(sprintf('Hàng %d: ', i), 's');
        row_vec = str2num(row_str); 
        
        if numel(row_vec) == n && isrow(row_vec)
            A(i, :) = row_vec;
            break;
        else
            fprintf('  -> Lỗi: Cần nhập đúng %d số trên hàng này! Hãy nhập lại.\n', n);
        end
    end
end

fprintf('\nMa trận đầu vào A =\n');
disp(A);



%% BƯỚC 2 (Mạnh): Đưa về dạng Hessenberg (bằng phương pháp Householder)


%% BƯỚC 3 (Lạc): Phân rã QR của Hk bằng phép quay Givens


%% BƯỚC 4 (Mạnh): Thuật toán QR lặp


%% BƯỚC 5 (Lạc): Dạng Schur


%% BƯỚC 6 (Lạc): Trị riêng


%% BƯỚC 7 (Lạc): Vectơ riêng

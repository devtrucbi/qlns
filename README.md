# Website quản lý nhân sự

Website quản lý các thông tin làm việc của toàn bộ nhân viên trong công ty. Người được phân thành nhiều quyền hạn khác nhau như quản trị viên, quản lý, và nhân viên.

## Yêu cầu

Để bắt đầu, người dùng cần cài đặt các ứng dụng sau vào máy sẽ dùng để chạy web:

**XAMPP**: Được dùng để chạy Apache và MySQL cục bộ.
**MySQL**: Được tích hợp sẵn khi cài XAMPP, dùng để quản lý cơ sở dữ liệu.
**Composer**: Trình quản lý PHP.
**Node.js và npm**: Để quản lý package của JavaScript.

## Cài đặt phần mềm cần thiết

1. **Cài đặt XAMPP**:

   - Tải và cài đặt [XAMPP](https://www.apachefriends.org/index.html).
   - Đảm bảo rằng dịch vụ **Apache** và **MySQL** đang chạy từ XAMPP Control Panel.

2. **Cài đặt Composer**:

   - Tải và cài đặt [Composer](https://getcomposer.org/download/).

3. **Cài đặt Node.js và npm**:
   - Tải và cài đặt [Node.js](https://nodejs.org/), sẽ đi kèm với npm (trình quản lý gói của Node.js).

## Cài đặt

Cài đặt biến môi trường: Sao chép tệp cấu hình môi trường mẫu và tạo tệp .env mới:

    cp ./.env.example .env

Tạo cơ sở dữ liệu: Tạo một cơ sở dữ liệu có tên trùng với biến DB_DATABASE trong file .env

Cài đặt các phụ thuộc PHP: Chạy lệnh sau để cài đặt tất cả các phụ thuộc PHP cần thiết thông qua Composer:

    composer install

Cập nhật các phụ thuộc PHP: Nếu người dùng cần cập nhật các phụ thuộc, hãy chạy lệnh sau:

    composer update

Cài đặt các phụ thuộc JavaScript: Cài đặt tất cả các gói npm cần thiết:

    npm install

Xây dựng các tài nguyên frontend: Để biên dịch và xây dựng các tài nguyên (CSS, JS, v.v.) cho môi trường phát triển, chạy:

    npm run dev

Tạo khóa ứng dụng: Chạy lệnh sau để tạo khóa ứng dụng cho mã hóa:

    php artisan key:generate

Khởi động ứng dụng: Người dùng có thể khởi động máy chủ phát triển Laravel bằng lệnh sau:

    php artisan serve

Mặc định, máy chủ sẽ chạy tại http://localhost:8000.

## Tài khoản demo

Dưới đây là ba tài khoản demo với các vai trò đã được cấu hình sẵn để thử nghiệm:

Tài khoản Quản trị viên:

    Email: admin@email.com
    Mật khẩu: 123

Tài khoản Quản lý:

    Email: quanly@email.com
    Mật khẩu: 123

Tài khoản Nhân viên:

    Email: nhanvien@email.com
    Mật khẩu: 123

## Khắc phục sự cố

XAMPP không khởi động: Kiểm tra không có ứng dụng nào khác (như Skype) đang sử dụng cổng 80 hoặc 443 vì có thể gây xung đột với Apache.

Lỗi kết nối cơ sở dữ liệu: Đảm bảo MySQL đang chạy trong XAMPP và tệp .env của người dùng có cấu hình kết nối cơ sở dữ liệu đúng.

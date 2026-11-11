# BÀI LÀM – HACKATHON 02

- **Mã đề:** 10
- **Họ tên:Lê Hoàng Anh**
- **Lớp:CNTT2**
- **Link repository:** https://github.com/HoangAnh-Pros/HN-K26-CNTT2-Nhap-mon-CNTT-Hackathon02/blob/main/chuyen-nha-website/bai_lam.md
- **Hệ điều hành (Windows/macOS):Windows**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
lệnh 1 : ls -force
lệnh 2 :  move ".\checklist_chuyen_nha.txt" "docs"
lệnh 3 :  mkdir "backup"
lệnh 4 :  cp "data/hop_dong_thang_10.xlsx" "backup"
lệnh 5 :  rm *.tmp
lệnh 6 : cd "logs" | gc "request.log" | cd..
lệnh 7 : 
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text

    Directory:
    C:\Users\ADMIN\Downloads\starter-kit
    (1)\starter-kit\chuyen-nha-website


Mode                 LastWriteTime    Length
----                 -------------    ------
d-r---        11/11/2026   1:45 PM
d-r---        11/11/2026   1:39 PM
d-r---        11/11/2026   1:43 PM
d-r---        11/11/2026   1:38 PM
d-r---        11/11/2026   1:39 PM
d-r---        11/11/2026   1:30 PM
-a----         11/3/2026   7:08 AM        70
-a----         11/3/2026   7:08 AM      2410


    Directory:
    C:\Users\ADMIN\Downloads\starter-kit (1)
    \starter-kit\chuyen-nha-website\backup


Mode                 LastWriteTime    Length
----                 -------------    ------
-a----         11/3/2026   7:08 AM      6139


    Directory:
    C:\Users\ADMIN\Downloads\starter-kit
    (1)\starter-kit\chuyen-nha-website\data


Mode                 LastWriteTime    Length
----                 -------------    ------
-a----         11/3/2026   7:08 AM      6139


    Directory:
    C:\Users\ADMIN\Downloads\starter-kit
    (1)\starter-kit\chuyen-nha-website\docs


Mode                 LastWriteTime    Length
----                 -------------    ------
-a----         11/3/2026   7:08 AM       155


    Directory:
    C:\Users\ADMIN\Downloads\starter-kit
    (1)\starter-kit\chuyen-nha-website\logs


Mode                 LastWriteTime    Length
----                 -------------    ------
-a----         11/3/2026   7:08 AM       973


    Directory:
    C:\Users\ADMIN\Downloads\starter-kit
    (1)\starter-kit\chuyen-nha-website\web


Mode                 LastWriteTime    Length
----                 -------------    ------
d-r---        11/11/2026   1:30 PM
-a----         11/3/2026   7:08 AM       587
-a----         11/3/2026   7:08 AM       544
-a----         11/3/2026   7:08 AM       460


    Directory:
    C:\Users\ADMIN\Downloads\starter-kit (1)
    \starter-kit\chuyen-nha-website\web\imag
    es


Mode                 LastWriteTime    Length
----                 -------------    ------
-a----         11/3/2026   7:08 AM      3054


```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
lệnh 1 :  gc ".\logs\request.log" |Select-String "status=500"

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-10-28 08:09:39 POST /api/dat-xe
status=500
2026-10-28 08:13:50 POST /api/thanh-toan
status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
gc ".\logs\request.log" | Select-String "status=404" | Measure-Object


```

```text
Count    : 4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell

.\tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
  = = =   B A O   C A O   S U   C O   W E B S I T E   = = = 
 
 
 
 2 0 2 6 - 1 0 - 2 8   0 8 : 0 9 : 3 9   P O S T   / a p i / d a t - x e   
 
 s t a t u s = 5 0 0 
 
 2 0 2 6 - 1 0 - 2 8   0 8 : 1 3 : 5 0   P O S T   / a p i / t h a n h - t o a n   
 
 s t a t u s = 5 0 0 
 
 2 0 2 6 - 1 0 - 2 8   0 8 : 1 6 : 0 1   P O S T   
 
 / a p i / t i n h - q u a n g - d u o n g   s t a t u s = 5 0 0 
 
 2 0 2 6 - 1 0 - 2 8   0 8 : 1 8 : 1 2   P O S T   / a p i / d a t - x e   
 
 s t a t u s = 5 0 0 
 
 2 0 2 6 - 1 0 - 2 8   0 8 : 2 4 : 3 4   P O S T   / a p i / t h a n h - t o a n   
 
 s t a t u s = 5 0 0 
 
 2 0 2 6 - 1 0 - 2 8   0 8 : 4 7 : 5 1   P O S T   / a p i / t h a n h - t o a n   
 
 s t a t u s = 5 0 0 
 
 
 
 
 
 
 
 
 
 C o u n t         :   4 
 
 A v e r a g e     :   
 
 S u m             :   
 
 M a x i m u m     :   
 
 M i n i m u m     :   
 
 P r o p e r t y   :   
 
 
 
 
 
 
 
 

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [https://github.com/HoangAnh-Pros/HN-K26-CNTT2-Nhap-mon-CNTT-Hackathon02/tree/main] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
|---|---|---|---|
| 1 | network | logo-sound.png |kiểm tra lỗi, xem lại ảnh,sửa lại cho đúng  |
| 2 | cốnle |GET file:///C:/Users/ADMIN/Downloads/starter-kit%20(1)/starter-kit/chuyen-nha-website/web/images/logo.jpg net::ERR_FILE_NOT_FOUND  |kiểm tra lại đường dẫn,fix lại cho chuẩn   |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm


- **Context:**  mình đang thao tác và chỉnh sửa html mình gặp 1 vấn đề console 
- **Expected:** hiện đang được nội dung phần bảng trang web
- **Actual:** bảng không hiển thị nội dung
- **Log:** app.js:18 Uncaught ReferenceError: hienThiGoi is not defined


### Câu tìm kiếm Google

```text
site:stackoverflow.com "thông báo lỗi"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/hop_dong_thang_10.xlsx`, không cần ghi vào đây.

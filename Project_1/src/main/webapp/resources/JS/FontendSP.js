        // Xử lý sự kiện thêm vào giỏ hàng
        const addToCartButtons = document.querySelectorAll('.add-to-cart');
        const cartCount = document.querySelector('.cart-count');

        addToCartButtons.forEach(button => {
            button.addEventListener('click', () => {
                // Lấy giá trị hiện tại từ cartCount và chuyển đổi thành số
                const currentCount = parseInt(cartCount.textContent) || 0;

                cartItemCount = currentCount + 1;
                cartCount.textContent = cartItemCount;

                // Thêm logic xử lý giỏ hàng ở đây (ví dụ: lưu vào LocalStorage, gửi yêu cầu lên server,...)
            });
        });

        const filterToggle = document.querySelector('.filter-toggle');
        const filters = document.querySelector('.filters');

        // Hàm để kiểm tra kích thước cửa sổ và cập nhật trạng thái bộ lọc
        const handleResize = () => {
            if (window.innerWidth > 768) {
                // Màn hình đủ lớn, luôn hiển thị bộ lọc
                filters.style.width = '200px';
                filters.style.marginRight = '20px';
                filterToggle.textContent = '<';
                filters.style.display = 'block';
            } else {
                // Màn hình nhỏ, ẩn bộ lọc và cập nhật nút
                filters.style.width = '0';
                filters.style.marginRight = '0';
                filterToggle.textContent = '>';
                filters.style.display = 'none';
            }
        };

        filterToggle.addEventListener('click', () => {
            if (filters.style.width === '200px') {
                filters.style.width = '0';
                filters.style.marginRight = '0';
                filterToggle.textContent = '>';
                filters.style.display = 'none';
            } else {
                filters.style.width = '200px';
                filters.style.marginRight = '20px';
                filterToggle.textContent = '<';
                filters.style.display = 'block';
            }
        });

        // Thêm sự kiện resize và gọi hàm handleResize một lần khi trang tải xong
        window.addEventListener('resize', handleResize);
        handleResize();

        // Hàm định dạng số có dấu chấm
        function formatNumber(value) {
            return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
        }

        // Cập nhật giá trị hiển thị của thanh trượt "Giá từ"
        function updateMinPriceValue(value) {
            const maxPrice = document.getElementById('max-price').value;

            // Kiểm tra nếu giá trị "Giá từ" lớn hơn "Giá đến"
            if (parseInt(value) > parseInt(maxPrice)) {
                value = maxPrice; // Đặt giá trị "Giá từ" bằng với "Giá đến"
            }

            document.getElementById('min-price').value = value; // Cập nhật giá trị "Giá từ"
            document.getElementById('min-price-value').textContent = formatNumber(value); // Cập nhật hiển thị
        }

        // Cập nhật giá trị hiển thị của thanh trượt "Giá đến"
        function updateMaxPriceValue(value) {
            const minPrice = document.getElementById('min-price').value;

            // Kiểm tra nếu giá trị "Giá đến" nhỏ hơn "Giá từ"
            if (parseInt(value) < parseInt(minPrice)) {
                value = minPrice; // Đặt giá trị "Giá đến" bằng với "Giá từ"
            }

            document.getElementById('max-price').value = value; // Cập nhật giá trị "Giá đến"
            document.getElementById('max-price-value').textContent = formatNumber(value); // Cập nhật hiển thị
        }

        // Hàm loại bỏ dấu chấm trước khi gửi form
        function removeDotsBeforeSubmit() {
            let minPriceInput = document.getElementById("min-price");
            let maxPriceInput = document.getElementById("max-price");

            // Xóa dấu chấm khỏi giá trị trước khi submit
            minPriceInput.value = minPriceInput.value.replace(/\./g, '');
            maxPriceInput.value = maxPriceInput.value.replace(/\./g, '');
        }

        // Lấy tất cả các nút dropdown
        const dropdowns = document.querySelectorAll('.dropdown');

        dropdowns.forEach(dropdown => {
            const button = dropdown.querySelector('.button');
            const menu = dropdown.querySelector('.dropdown-content');

            // Thêm sự kiện khi bấm vào nút để toggle menu
            button.addEventListener('click', (event) => {
                event.stopPropagation(); // Ngăn sự kiện bấm lan ra bên ngoài
                // Đóng tất cả menu khác
                dropdowns.forEach(d => {
                    if (d !== dropdown) {
                        d.querySelector('.dropdown-content').classList.remove('show');
                    }
                });
                menu.classList.toggle('show');
            });
        });

        // Đóng menu khi người dùng bấm vào bất kỳ đâu ngoài menu
        window.addEventListener('click', () => {
            dropdowns.forEach(dropdown => {
                const menu = dropdown.querySelector('.dropdown-content');
                if (menu.classList.contains('show')) {
                    menu.classList.remove('show');
                }
            });
        });


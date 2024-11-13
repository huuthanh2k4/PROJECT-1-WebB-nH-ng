// JavaScript cho Image Carousel và Thumbnails

// Lấy tất cả các thumbnail từ DOM
const thumbnailElements = document.querySelectorAll('.thumbnail img');

// Tạo mảng images dựa trên src của các thumbnail
const images = Array.from(thumbnailElements).map(img => img.src);

// Khởi tạo chỉ số hiện tại
let currentIndex = 0;

// Lấy các phần tử cần thiết từ DOM
const mainImage = document.getElementById('main-image');
const prevButton = document.querySelector('.prev-button');
const nextButton = document.querySelector('.next-button');
const thumbnails = document.querySelectorAll('.thumbnail');

// Hàm cập nhật hình ảnh chính và thumbnail active
function updateImage(index) {
  mainImage.src = images[index];
  mainImage.alt = `Utility Jacket Image ${index + 1}`;
  // Cập nhật thumbnail active
  thumbnails.forEach(thumb => thumb.classList.remove('active'));
  thumbnails[index].classList.add('active');
}

// Thêm sự kiện cho nút Previous
prevButton.addEventListener('click', () => {
  currentIndex = (currentIndex - 1 + images.length) % images.length;
  updateImage(currentIndex);
});

// Thêm sự kiện cho nút Next
nextButton.addEventListener('click', () => {
  currentIndex = (currentIndex + 1) % images.length;
  updateImage(currentIndex);
});

// Thêm sự kiện cho các thumbnail
thumbnails.forEach(thumb => {
  thumb.addEventListener('click', () => {
    const index = parseInt(thumb.getAttribute('data-index'));
    currentIndex = index;
    updateImage(currentIndex);
  });
});

// Thêm sự kiện cho bàn phím (Optional)
document.addEventListener('keydown', (e) => {
  if (e.key === 'ArrowLeft') {
    prevButton.click();
  } else if (e.key === 'ArrowRight') {
    nextButton.click();
  }
});

// Khởi tạo carousel với hình ảnh đầu tiên
updateImage(currentIndex);

// Danh sách màu và mã màu tương ứng
const colorMap = {
  "Đen": "#000000",
  "Trắng": "#FFFFFF",
  "Xanh": "#0000FF",
  "Vàng": "#FFD700"
};

// Cập nhật giá sản phẩm theo dung lượng
const priceElement = document.getElementById("price");
const sizeButtons = document.querySelectorAll(".size-btn");

function updatePrice(button) {
  const price = button.getAttribute("data-price");

  // Cập nhật giá theo dung lượng đã chọn
  priceElement.innerText = parseInt(price).toLocaleString() + " đ";

  // Đánh dấu nút dung lượng đang chọn
  sizeButtons.forEach(btn => btn.classList.remove("active"));
  button.classList.add("active");
}

// Gán sự kiện cho các nút dung lượng
sizeButtons.forEach(button => {
  button.addEventListener("click", () => updatePrice(button));
});

// Chọn màu sắc và hiển thị màu khi được chọn
const colorButtons = document.querySelectorAll(".color-btn");

colorButtons.forEach(button => {
  const colorName = button.getAttribute("data-color");
  const colorCode = colorMap[colorName];

  // Đặt màu nền khi nút được chọn
  button.addEventListener("click", () => {
    // Loại bỏ màu nền của tất cả nút
    colorButtons.forEach(btn => {
      btn.classList.remove("active");
      btn.style.backgroundColor = ""; // Reset màu về mặc định
      btn.style.color = ""; // Reset màu chữ về mặc định
    });

    // Thêm màu nền cho nút đang chọn
    button.classList.add("active");
    button.style.backgroundColor = colorCode;
    button.style.color = colorCode === "#FFFFFF" ? "#000" : "#FFF"; // Đặt màu chữ theo nền để dễ đọc
  });
});

// Hiển thị giá mặc định khi tải trang
updatePrice(sizeButtons[0]);


// **Tối ưu hóa hàm toggleSection**
function toggleSection(id) {
  const section = document.getElementById(id);
  if (section.style.display === "none") {
    section.style.display = "block";
  } else {
    section.style.display   
 = "none";
  }
}
//giỏ hàng
const addToBagButton = document.querySelector('.add-to-bag');
const cartCountSpan = document.querySelector('.cart-count');

addToBagButton.addEventListener('click', () => {
  // Lấy giá trị hiện tại của số lượng sản phẩm trong giỏ hàng
  let cartCount = parseInt(cartCountSpan.textContent);

  // Tăng số lượng lên 1
  cartCount++;

  // Cập nhật số lượng mới vào span
  cartCountSpan.textContent = cartCount;
});

function toggleSection(id) {
  const section = document.getElementById(id);
  if (section.style.display === "none") {
    section.style.display = "block";
  } else {
    section.style.display = "none";
  }
}
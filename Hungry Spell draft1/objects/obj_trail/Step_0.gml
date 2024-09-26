image_alpha -= 0.02; // 逐帧透明度减少
if (image_alpha <= 0) {
     instance_destroy(); // 透明度为0时销毁拖尾实例
}
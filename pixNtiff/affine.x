#define affine_width 64
#define affine_height 64
static unsigned char affine_bits[] = {
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
   0x80, 0x60, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 
   0xc0, 0x20, 0x02, 0x00, 0x00, 0x40, 0x20, 0x12, 
   0xa0, 0xf8, 0x97, 0x0e, 0x8e, 0x04, 0x9b, 0x48, 
   0x20, 0x11, 0x11, 0x11, 0x69, 0x6d, 0x49, 0x11, 
   0x10, 0x11, 0x91, 0x90, 0x10, 0x09, 0x00, 0x00, 
   0x10, 0x11, 0x91, 0x90, 0x90, 0x00, 0x00, 0x00, 
   0xf8, 0x11, 0x91, 0x90, 0xcf, 0xff, 0xff, 0x3f, 
   0x08, 0x89, 0x48, 0x48, 0x00, 0x00, 0x00, 0x00, 
   0x04, 0x89, 0x48, 0x8c, 0xe8, 0xfd, 0xff, 0x07, 
   0x02, 0x8a, 0x48, 0x2a, 0xe7, 0x01, 0x00, 0x00, 
   0x02, 0x8a, 0x76, 0xd5, 0xf5, 0xfb, 0xff, 0x01, 
   0x00, 0x00, 0x00, 0x00, 0xf8, 0x03, 0x00, 0x00, 
   0x00, 0xa0, 0x68, 0x01, 0xf8, 0x03, 0x00, 0x00, 
   0x00, 0x00, 0x02, 0x00, 0xfc, 0x03, 0x00, 0x00, 
   0x00, 0x20, 0x88, 0x00, 0xfc, 0x07, 0x00, 0x00, 
   0x00, 0xc8, 0x12, 0x00, 0xfe, 0x07, 0x00, 0x00, 
   0x00, 0x00, 0x02, 0x00, 0xff, 0x07, 0x00, 0x00, 
   0x80, 0x10, 0x10, 0x00, 0xff, 0x07, 0x00, 0x00, 
   0x00, 0x92, 0x04, 0x80, 0xff, 0x0f, 0x00, 0x00, 
   0xa0, 0x00, 0x00, 0x80, 0xff, 0x0f, 0x00, 0x00, 
   0x10, 0x04, 0x02, 0xc0, 0xff, 0x0f, 0x00, 0x00, 
   0x20, 0x51, 0x00, 0xe0, 0xff, 0x0f, 0x00, 0x08, 
   0x48, 0x48, 0x01, 0xe0, 0xf3, 0x1f, 0x00, 0x00, 
   0x14, 0x02, 0x02, 0xf0, 0xf3, 0x1f, 0x00, 0x00, 
   0x00, 0x40, 0x01, 0xf0, 0xf1, 0x1f, 0x80, 0x04, 
   0x92, 0x04, 0x00, 0xf8, 0xf1, 0x1f, 0x08, 0x00, 
   0x00, 0x20, 0x04, 0xfc, 0xe0, 0x3f, 0x00, 0x00, 
   0x54, 0xa9, 0x08, 0x7c, 0xe0, 0x3f, 0x81, 0x00, 
   0x02, 0x00, 0x04, 0x7e, 0xe0, 0x3f, 0x00, 0x00, 
   0x50, 0x42, 0x51, 0x3e, 0xe0, 0x3f, 0x48, 0x00, 
   0x64, 0x09, 0x00, 0x3f, 0xe1, 0x7f, 0x02, 0x10, 
   0x02, 0x10, 0x84, 0x1f, 0xc8, 0x7f, 0x00, 0x00, 
   0x04, 0x92, 0x80, 0x0f, 0xc2, 0x7f, 0x04, 0x00, 
   0xa2, 0x80, 0xd4, 0x4f, 0xc0, 0x7f, 0x20, 0x01, 
   0xc0, 0x00, 0xc0, 0x07, 0xc2, 0xff, 0x00, 0x00, 
   0x0a, 0x10, 0xe4, 0x07, 0x90, 0xff, 0x00, 0x20, 
   0x24, 0x92, 0xf4, 0x23, 0x80, 0xff, 0x04, 0x00, 
   0x02, 0x00, 0xf0, 0xff, 0xff, 0xff, 0x10, 0x00, 
   0x44, 0x41, 0xf8, 0xff, 0xff, 0xff, 0x01, 0x00, 
   0x08, 0x04, 0xf8, 0xff, 0xff, 0xff, 0x01, 0x04, 
   0x40, 0x00, 0xfc, 0xff, 0xff, 0xff, 0x41, 0x00, 
   0x24, 0x88, 0x7e, 0x00, 0x00, 0xff, 0x09, 0x00, 
   0x00, 0x02, 0x7e, 0x20, 0x00, 0xff, 0x63, 0x00, 
   0x30, 0x16, 0x3f, 0x02, 0x04, 0xff, 0x23, 0x08, 
   0x88, 0x00, 0x3f, 0x88, 0x20, 0xfe, 0x03, 0x00, 
   0x00, 0x80, 0x1f, 0x00, 0x04, 0xfe, 0x0b, 0x60, 
   0xa0, 0xc8, 0x0f, 0x21, 0x00, 0xfe, 0x07, 0x00, 
   0x00, 0xc0, 0x0f, 0x09, 0x40, 0xfe, 0x47, 0x00, 
   0x80, 0xe0, 0x07, 0x00, 0x41, 0xfe, 0x07, 0x04, 
   0x00, 0xf4, 0x27, 0x00, 0x04, 0xfc, 0x27, 0x00, 
   0x80, 0xf0, 0x03, 0x40, 0x00, 0xfc, 0x0f, 0x00, 
   0x00, 0xf8, 0x83, 0x0c, 0x40, 0xfc, 0x8f, 0x20, 
   0x00, 0xfc, 0x83, 0x01, 0x08, 0xfe, 0x1f, 0x00, 
   0x00, 0xfe, 0x07, 0x80, 0x00, 0xff, 0x3f, 0x00, 
   0xc0, 0xff, 0x3f, 0x00, 0xf0, 0xff, 0xff, 0x08, 
   0xc0, 0xff, 0x3f, 0x00, 0xf0, 0xff, 0xff, 0x10, 
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
   0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x07, 
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
   0xfc, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x3f, 
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
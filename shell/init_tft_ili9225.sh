sudo modprobe fbtft_device name=flexfb width=176 height=220 gpios=reset:17,dc:27 speed=64000000 fps=20 verbose=1
sudo modprobe flexfb chip=ili9325 height=220 width=176 setaddrwin=1 init=-1,0x0001,0x011C,-1,0x0002,0x0100,-1,0x0003,0x1030,-1,0x0008,0x0808,-1,0x000C,0x0000,-1,0x000F,0x0A01,-1,0x0020,0x0000,-1,0x0021,0x0000,-2,50,-1,0x0010,0x0A00,-1,0x0011,0x1038,-2,50,-1,0x0012,0x1121,-1,0x0013,0x004E,-1,0x0014,0x676F,-1,0x0030,0x0000,-1,0x0031,0x00DB,-1,0x0032,0x0000,-1,0x0033,0x0000,-1,0x0034,0x00DB,-1,0x0035,0x0000,-1,0x0036,0x00AF,-1,0x0037,0x0000,-1,0x0038,0x00DB,-1,0x0039,0x0000,-1,0x0050,0x0000,-1,0x0051,0x060A,-1,0x0052,0x0D0A,-1,0x0053,0x0303,-1,0x0054,0x0A0D,-1,0x0055,0x0A06,-1,0x0056,0x0000,-1,0x0057,0x0303,-1,0x0058,0x0000,-1,0x0059,0x0000,-2,50,-1,0x0007,0x1017,-2,50,-3
fbi -d /dev/fb1 -T 1 -noverbose -a /home/pi/IMG_6807.jpg
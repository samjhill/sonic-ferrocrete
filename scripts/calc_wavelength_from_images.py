import sys, cv2, numpy as np

# Usage: python calc_wavelength_from_images.py path/to/photo.jpg px_per_mm

# Click two peaks in the same band; script prints distance in mm.

img = cv2.imread(sys.argv[1])

scale = float(sys.argv[2])  # pixels per mm

disp = img.copy()

pts = []

def click(ev,x,y,flags,param):

    if ev==cv2.EVENT_LBUTTONDOWN:

        pts.append((x,y))

        cv2.circle(disp,(x,y),4,(0,0,255),-1)

        cv2.imshow("measure", disp)

        if len(pts)==2:

            d = np.hypot(pts[0][0]-pts[1][0], pts[0][1]-pts[1][1]) / scale

            print(f"Wavelength ~ {d:.2f} mm")

            pts.clear()

cv2.imshow("measure", disp)

cv2.setMouseCallback("measure", click)

cv2.waitKey(0)

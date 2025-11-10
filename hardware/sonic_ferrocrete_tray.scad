// Sonic-Ferrocrete Bench Tray + Magnet Sled (Parametric)

// Units: mm

// Usage: tweak "User Parameters", F6 (Render), then export STL.

tray_len = 120;  // inner X (liquid)
tray_wid = 120;  // inner Y
wall_h   = 12;
wall_t   = 4;
floor_t  = 4;
corner_r = 4;

lip_t = 2; lip_h = 2; add_lip = true;

// Feet

feet_d = 10; feet_h = 5; feet_inset = 8;

// Transducer bolt circle (set mount_enable=false if epoxying puck)

mount_enable=true; mount_holes=4; mount_bc_diam=30; mount_hole_d=3.2;

mount_center_offset=[0,0];

// Under-tray magnet rails

rails_enable=true; rail_w=12; rail_h=3; rail_gap=30; rail_inset_y=12;

// Magnet sled (printed separately)

sled_len = tray_len + 2*wall_t + 20;

sled_wid = rail_gap + 2*rail_w - 0.6;

sled_h = rail_h + 2; sled_handle_h=20;

mag_slot_len = tray_len; mag_slot_wid=18; mag_slot_d=4;

// Draft for inner walls

draft_deg=2;

module filleted_box_xy(size=[20,20,10], r=2){

  translate([r,r,0])

  minkowski(){ cube([size[0]-2*r,size[1]-2*r,size[2]-0.001]);

               cylinder(r=r,h=0.001,$fn=32); }

}

module drafted_tray(inner=[100,100], wall=4,h=12,floor=4,r=3,draft_deg=2){

  outer=[inner[0]+2*wall, inner[1]+2*wall, floor+h];

  difference(){

    filleted_box_xy(outer,r=r);

    translate([wall,wall,floor])

    linear_extrude(height=h+0.1,

      scale=1 + 2*wall * tan(draft_deg/180*3.14159) / inner[0])

    offset(r=-r) square([inner[0],inner[1]]);

    if(mount_enable)

      for(i=[0:mount_holes-1]){

        angle=360/mount_holes*i;

        x=mount_center_offset[0]+(mount_bc_diam/2)*cos(angle);

        y=mount_center_offset[1]+(mount_bc_diam/2)*sin(angle);

        translate([outer[0]/2+x, outer[1]/2+y, 0])

          cylinder(d=mount_hole_d,h=floor+1,$fn=24);

      }

    if(rails_enable){

      outerX=outer[0]; outerY=outer[1];

      rail_total_w=2*rail_w+rail_gap;

      rail_start=rail_inset_y; rail_end=outerY-rail_inset_y;

      translate([(outerX-rail_total_w)/2, rail_start, 0])

        cube([rail_w, rail_end-rail_start, rail_h]);

      translate([(outerX-rail_total_w)/2+rail_w+rail_gap, rail_start, 0])

        cube([rail_w, rail_end-rail_start, rail_h]);

    }

  }

}

module add_lip(outer=[120,120,18],wall=4,lip_t=2,lip_h=2,r=3){

  translate([0,0,outer[2]-lip_h])

  difference(){

    filleted_box_xy([outer[0]+2*lip_t, outer[1]+2*lip_t, lip_h], r=r);

    translate([lip_t,lip_t,-0.1])

      filleted_box_xy([outer[0],outer[1],lip_h+0.2], r=max(r-0.8,0.5));

  }

}

module feet_posts(outer=[120,120,18],d=10,h=5,inset=8){

  for(sx=[inset, outer[0]-inset])

  for(sy=[inset, outer[1]-inset])

    translate([sx,sy,0]) cylinder(d=d,h=h,$fn=30);

}

module tray_assembly(){

  outer=[tray_len+2*wall_t, tray_wid+2*wall_t, floor_t+wall_h];

  drafted_tray([tray_len,tray_wid], wall_t, wall_h, floor_t, corner_r, draft_deg);

  feet_posts(outer,feet_d,feet_h,feet_inset);

  if(add_lip) add_lip(outer,wall_t,lip_t,lip_h,corner_r);

}

module magnet_sled(){

  outer=[tray_len+2*wall_t, tray_wid+2*wall_t, floor_t+wall_h];

  sledX=sled_len; sledY=rail_gap+2*rail_w-0.6;

  difference(){

    translate([(outer[0]-sledX)/2,(outer[1]-sledY)/2,-sled_h])

      cube([sledX,sledY,sled_h]);

    translate([(outer[0]-mag_slot_len)/2,(outer[1]-mag_slot_wid)/2,-sled_h-0.1])

      cube([mag_slot_len,mag_slot_wid,mag_slot_d]);

  }

  translate([outer[0]/2-30,(outer[1]-sledY)/2 + sledY/2 - 2,-sled_h])

    cube([60,4,sled_handle_h]);

}

$fn=64;

// Uncomment to export:

// tray_assembly();

// magnet_sled();

// Preview:

translate([0,0,0]) tray_assembly();

translate([0, tray_wid + 2*wall_t + 20, 0]) magnet_sled();


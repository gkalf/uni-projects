#include "sobel.h"
#include <stdio.h>
#define height 1024
#define width 1024

int Gx[3][3]={{-1,0,1},{-2,0,2},{-1,0,1}};
int Gy[3][3]={{1,2,1},{0,0,0},{-1,-2,-1}};

void sobel_filter(data_in input_image, data_out output_image){
	int i,j;
	int rowOffset, colOffset;
	unsigned int p, result;
	
	for (i=0; i<height; i++){
		for(j=0; j<width; j++){
			x_dir = 0;
			y_dir = 0;
			if((i>0 && (i<(height -1)) && (j>0) && (j<(width-1)))){
				for(rowOffset=-1; rowOffset<=1; rowOffset++){
					for(colOffset=-1; colOffset<=1; colOffset++){
						x_dir+= input_image[i+rowOffset][j+colOffset]*Gx[1+rowOffset][1+colOffset];
						y_dir+= input_image[i+rowOffset][j+colOffset]*Gy[1+rowOffset][1+colOffset];
					}
				}
			}
			p = x_dir*xdir + y_dir*y_dir;
			result = (int)sqrt((double)p);
			if(res > 255)
				output_image[i*height+j]=255;
			else
				output_image[i*height+j]=res;
		}
	}
	
}
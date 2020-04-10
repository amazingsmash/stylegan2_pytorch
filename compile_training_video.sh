if [ -z "$1" ] 
then 
	echo "No image folder supplied." 
	exit
fi

if [ -z "$2" ] 
then 
	echo "No output vide name supplied." 
	exit
fi

img_path=$1
video_name=$2 

echo "Compiling images in $img_path into video $video_name.mp4"
echo "---------------------"
echo ""

ffmpeg 	-framerate 1 \
		-start_number 0 \
		-i $img_path/%d.jpg \
		-r 100 \
		-filter:v tblend \
		$video_name.mp4
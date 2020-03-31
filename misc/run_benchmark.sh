
#Dev Mode
if [[ $TEST_LOOP = "y" ]]
then
	echo "####################################"
	echo "      DEV/TEST MODE.....       	  "
	echo "####################################"
    echo "Starting a infinite while loop to debug in console terminal\n"
    while :
	do
		echo "Press [CTRL+C] to stop.."
		sleep 1
	done
fi

echo $PWD
cd tf_cnn_benchmarks_v1.13/
ls
python3 tf_cnn_benchmarks.py --eval --device=cpu --data_format=NHWC --batch_size=1   --model=vgg16 --variable_update=replicated   --nodistortions   --num_batches=4   --num_intra_threads=0   --num_inter_threads=0   --use_tf_layers=false   --data_dir=../validation_images_30_subset/   --data_name=imagenet   --train_dir=CHECKPOINTS/vgg16nhwc


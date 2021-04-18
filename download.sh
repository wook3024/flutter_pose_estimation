POSE_ESTIMATION_URL="https://github.com/BetaPundit/Yoga-Guru/raw/master/assets/models/posenet_mv1_075_float_from_checkpoints.tflite"
POSE_ESTIMATION_MODEL="posenet_mobilenet_float_075_1_default_1.tflite"

wget -O "${POSE_ESTIMATION_MODEL}" "${POSE_ESTIMATION_URL}"
mkdir -p assets
mv "${POSE_ESTIMATION_MODEL}" "assets/${POSE_ESTIMATION_MODEL}"

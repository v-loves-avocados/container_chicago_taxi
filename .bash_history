cloudshell_open --repo_url "https://source.developers.google.com/p/acn-pv-dom-poc/r/causal" --page "editor" --open_in_editor "./"
ls
$ wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O FILENAME
drive pull
ls
cd cloudshell_open/
ls
cd .
cd ..
ls
cd ..
ls
cd jia_p_li
ls
cloudshell_open --repo_url "https://source.developers.google.com/p/acn-pv-dom-poc/r/causal" --page "editor" --open_in_editor "./" --git_branch "master"
docker run busybox date
gcloud auth configure-docker
gcloud container images list   --repository="gcr.io/deeplearning-platform-release"
mkdir model-training-code
ls
cd model_train_coe
cd model_train_code
cd model-training-code/
ls
cd .
ls
pwd
cd ..
ls
pwd
git init
git clone https://github.com/v-loves-avocados/chicago-taxi.git
ls
cd chicago-taxi
ls
cd ..
ls
nano Dockerfile
cat Dockerfile
export PROJECT_ID=$(gcloud config list project --format "value(core.project)")
echo $PROJECT_ID
export IMAGE_REPO_NAME=pytorch_custom_container
export IMAGE_REPO_NAME=tf_custom_container
export IMAGE_TAG=$(date +%Y%m%d_%H%M%S)
export IMAGE_URI=gcr.io/$PROJECT_ID/$IMAGE_REPO_NAME:$IMAGE_TAG
echo $IMAGE_URI
docker build -f Dockerfile -t $IMAGE_URI ./
docker push $IMAGE_URI
echo $IMAGE_URI
nano 
nano pod.yaml
kubectl apply -f ./pod.yaml
ls
kubectl apply -f pod.yaml
docker run $IMAGE_URI --epochs 1
nano Dockerfile
ls
echo $IMAGE_URI
ls
nano entrypoint.sh
nano ./entrypoint.sh
docker run $IMAGE_URI --epochs 1
ls
nano Dockerfile
cat Dockerfile 
docker build -f Dockerfile -t $IMAGE_URI ./
nano Dockerfile
cat Dockerfile 
nano Dockerfile 
Y
docker build -f Dockerfile -t $IMAGE_URI ./
docker run $IMAGE_URI --epochs 1
nano Dockerfile 
docker build -f Dockerfile -t $IMAGE_URI ./
docker run $IMAGE_URI --epochs 1
ls
cd chicago-taxi/
ls
python train_data_prep.py 
nano train_data_prep.py
python train_data_prep.py 
python train_data_prep.py
nano train_data_prep.py
docker run $IMAGE_URI --epochs 1
ls
cd trainer
ls
nano task.py
docker run $IMAGE_URI --epochs 1
ls
cat task.py
docker build -f Dockerfile -t $IMAGE_URI ./
cd ..
ls
cd ..
ls
docker build -f Dockerfile -t $IMAGE_URI ./
docker run $IMAGE_URI --epochs 1
nano task.py
cat task.py
ls
cd chicago-taxi/
ls
cd train
cd trainer
ls
nano task.py
cat task.py
cd ..
ls
cd .
ls
cd ..
ls
docker build -f Dockerfile -t $IMAGE_URI ./
docker run $IMAGE_URI --epochs 1
docker push $IMAGE_URI
export GCR_PROJ_ID=[YOUR-PROJECT-ID-FOR-GCR]
export GCR_PROJ_ID=hackathon1-183523
export CMLE_PROJ_NUM=12345
export SVC_ACCT=service-$CMLE_PROJ_NUM@cloud-ml.google.com.iam.gserviceaccount.com
gcloud projects add-iam-policy-binding $GCR_PROJ_ID     --member serviceAccount:$SVC_ACCOUNT --role roles/ml.serviceAgent
export CMLE_PROJ_NUM=export BUCKET_NAME=custom_containers
export MODEL_DIR=example_model_$(date +%Y%m%d_%H%M%S)
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR   --epochs=10
export BUCKET_NAME=custom_containers
export MODEL_DIR=example_model_$(date +%Y%m%d_%H%M%S)
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR   --epochs=10
export BUCKET_NAME=custom_containers
export MODEL_DIR=example_model_$(date +%Y%m%d_%H%M%S)
echo $BUCKET_NAME
echo MODEL_DIR
echo $JOB_NAME
export JOB_NAME=test_chicago_taxi_container
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR   --epochs=10
export REGION=export REGION=us-central1
export REGION=us-central1
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR   --epochs=10
gcloud ai-platform jobs describe test_chicago_taxi_container
ls
nano Dockerfile 
cat Dockerfile 
nano Dockerfile 
cat Dockerfile 
docker build -f Dockerfile -t $IMAGE_URI ./
echo $IMAGE_URI
export PROJECT_ID=$(gcloud config list project --format "value(core.project)")
echo $PROJECT_ID
export IMAGE_REPO_NAME=tf_custom_container
export IMAGE_TAG=w_hypertune
export IMAGE_URI=gcr.io/$PROJECT_ID/$IMAGE_REPO_NAME:$IMAGE_TAG
echo $IMAGE_URI
docker build -f Dockerfile -t $IMAGE_URI ./
docker run $IMAGE_URI --epochs 1
docker run $IMAGE_URI --epochs 2
docker push $IMAGE_URI
export MODEL_DIR=container_hyper_chicago_taxi
export REGION=us-central1
export JOB_NAME=container_hyper_job_$(date +%Y%m%d_%H%M%S)
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR   --epochs=10
gcloud ai-platform jobs describe $JOB_NAME
gcloud ai-platform jobs stream-logs $JOB_NAME
ls
cd ..
ls
cd jia_p_li/
ls
cd chicago-taxi/
ls
cat config.yaml
ls
COPY trainer/mnist.py /root/trainer/mnist.py
cd ..
ls
COPY chicago-taxi/config.yaml /
COPY chicago-taxi/config.yaml /root
cp chicago-taxi/config.yaml /root
cp chicago-taxi/config.yaml /
mv chicago-taxi/config.yaml /
mv chicago-taxi/config.yaml 
mv chicago-taxi/config.yaml ./
ls
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5   --model-dir="gs://$BUCKET_NAME/$MODEL_DIR"
echo $JOB_NAME
export JOB_NAME=container_hyper_job_$(date +%Y%m%d_%H%M%S)
echo $JOB_NAME
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5   --model-dir="gs://$BUCKET_NAME/$MODEL_DIR"
gcloud ai-platform jobs describe $JOB_NAME
gcloud ai-platform jobs stream-logs $JOB_NAME
ls
cd chicago-taxi/
ls
cd trainer/
ls
cat task.py 
nano task.py 
export JOB_NAME=container_hyper_job_$(date +%Y%m%d_%H%M%S)
cd ..
ls
cd ..
ls
export JOB_NAME=container_hyper_job_$(date +%Y%m%d_%H%M%S)
echo $JOB_NAME
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=1   --model-dir="gs://$BUCKET_NAME/$MODEL_DIR"
gcloud ai-platform jobs describe $JOB_NAME
gcloud ai-platform jobs stream-logs $JOB_NAME
ls
docker build -f Dockerfile -t $IMAGE_URI ./
docker push $IMAGE_URI
export JOB_NAME=container_hyper_job_$(date +%Y%m%d_%H%M%S)
echo $JOB_NAME
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=1   --model-dir="gs://$BUCKET_NAME/$MODEL_DIR"
gcloud ai-platform jobs stream-logs $JOB_NAME
ls
cat Dockerfile
ls
cd chicago-taxi/
ls
cd trainer
ls
cat task.py
ls
cd ..
ls
cd ..
ls
docker build -f Dockerfile -t $IMAGE_URI ./
echo $IMAGE_URI
docker run $IMAGE_URI --epochs 1
docker push $IMAGE_URI
docker build -f Dockerfile -t $IMAGE_URI ./
docker push $IMAGE_URI
echo 
echo $MODEL_DIR
echo $JOB_NAME
export JOB_NAME=container_hyper_job_$(date +%Y%m%d_%H%M%S)
echo $JOB_NAME
echo $MODEL_DIR
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR \
echo $BUCKET_NAME
export BUCKET_NAME=container_hyper_chicago_taxi
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR   --epochs=1
echo $BUCKET_NAME
ls
cat config.yaml
ls
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5 \
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5   --model-dir="gs://$BUCKET_NAME/$MODEL_DIR"
export JOB_NAME=container_hyper_job_$(date +%Y%m%d_%H%M%S)
echo $JOB_NAME
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5   --model-dir="gs://$BUCKET_NAME/$MODEL_DIR"
ls
cat config.yaml 
ls
cat pod.yaml 
cat Dockerfile 
ls
cd chicago-taxi/
ls
cd trainer
ls
cat task.py 
cat Dockerfile 
ls
cd ..
cd..
ls
cd ..
ls
cat Dockerfile 
cat Dockerfile gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5 
cat Dockerfile gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5 
ls
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5 
export JOB_NAME=container_hyper_job_$(date +%Y%m%d_%H%M%S)
echo $JOB_NAME
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5 
echo $JOB_NAME
export JOB_NAME=container_hyper_job_$(date +%Y%m%d_%H%M%S)
echo $JOB_NAME
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --epochs=5 
ls
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --epochs=5 
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml
ls
echo $JOB_NAME
ls
cd chicago-taxi/
ls
cd trainer/
ls
cd ta
nano task.py
nano model.py
nano  
nano model.py 
docker build -f Dockerfile -t $IMAGE_URI ./
nano model.pexport PROJECT_ID=$(gcloud config list project --format "value(core.project)")
export PROJECT_ID=$(gcloud config list project --format "value(core.project)")
export IMAGE_REPO_NAME=tf_customer_container
export IMAGE_TAG=chicago_2
export IMAGE_URI=gcr.io/$PROJECT_ID/$IMAGE_REPO_NAME:$IMAGE_TAG
docker build -f Dockerfile -t $IMAGE_URI ./
ls
cd ..
ls
docker build -f Dockerfile -t $IMAGE_URI ./
docker push $IMAGE_URI
export JOB_NAME=custom_container_job_$(date +%Y%m%d_%H%M%S)
export JOB_NAME=_container_hyper_job_$(date +%Y%m%d_%H%M%S)
echo $JOB_NAME
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR \
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5 
export REGION=us-central1
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI   --config config.yaml   --   --epochs=5 
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI 
export JOB_NAME=_container_hyper_job_$(date +%Y%m%d_%H%M%S)
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI 
ls
cd chicago-taxi/
ls
cd trainer
ls
nano model.py
export JOB_NAME=_container_hyper_job_$(date +%Y%m%d_%H%M%S)
gcloud ai-platform jobs submit training $JOB_NAME   --scale-tier BASIC   --region $REGION   --master-image-uri $IMAGE_URI 
ls
nano task.py 
export JOB_NAME=_container_hyper_job_$(date +%Y%m%d_%H%M%S)
docker build -f Dockerfile -t $IMAGE_URI ./
cd ..
ls
docker build -f Dockerfile -t $IMAGE_URI ./
docker run $IMAGE_URI --epochs 1
docker run $IMAGE_URI --epochs 2
ls
rm pod.yaml
docker push $IMAGE_URI
echo $JOB_NAME
export JOB_NAME=_container_hyper_job_$(date +%Y%m%d_%H%M%S)
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR   --epochs=10
echo $MODEL_DIR
export MODEL_DIR=container_hyper_chicago_taxi
echo $MODEL_DIR
export JOB_NAME=_container_hyper_job_$(date +%Y%m%d_%H%M%S)
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$BUCKET_NAME/$MODEL_DIR   --epochs=10
export MODEL_DIR=container_hyper_chicago_taxi
export JOB_NAME=_container_hyper_job_$(date +%Y%m%d_%H%M%S)
gcloud ai-platform jobs submit training $JOB_NAME   --region $REGION   --master-image-uri $IMAGE_URI   --   --model-dir=gs://$MODEL_DIR   --epochs=10
gcloud ai-platform jobs submit training $JOB_NAME  --region=$REGION   --master-image-uri=$IMAGE_URI --model-dir=gs://$MODEL_DIR   --epochs=10
export JOB_NAME=_container_hyper_job_$(date +%Y%m%d_%H%M%S)
gcloud ai-platform jobs submit training $JOB_NAME  --region=$REGION   --master-image-uri=$IMAGE_URI --model-dir=gs://$MODEL_DIR   --epochs=10
gcloud ai-platform jobs submit training $JOB_NAME  --region=$REGION   --master-image-uri=$IMAGE_URI --job-dir=gs://$MODEL_DIR   --epochs=10
gcloud ai-platform jobs submit training $JOB_NAME  --region=$REGION   --master-image-uri=$IMAGE_URI --job-dir=gs://$MODEL_DIR
echo $IMAGE_URI
gcloud ai-platform jobs submit training $JOB_NAME  --region=$REGION   --master-image-uri=$IMAGE_URI --job-dir=gs://$MODEL_DIR
ls
cd chicago-taxi/
ls
cd trainer
ls
nano task.py
docker run $IMAGE_URI --epochs 1
ls
cd ..
cd..
ls
cd ..
ls
cd model-training-code/
ls
cd ..
ls
cd chicago-taxi/
ls
cd ..
ls
docker run $IMAGE_URI --epochs 1
echo $JOB_NAME
export JOB_NAME=container_hyper_job_20200522_134709
gcloud ai-platform jobs submit training $JOB_NAME  --region=$REGION   --master-image-uri=$IMAGE_URI --job-dir=gs://$MODEL_DIR
echo $MODEL_DIR
ls
cd chicago-taxi/
ls
cd trainer
ls
nano task.py
ls
cd ..
ls
cd ..
ls
git init
git remote 
git remote -v
git remote show origin
git remote -v
git remote add origin https://github.com/v-loves-avocados/container_chicago_taxi.git
ls
git remote -v
git add -a
git add --all
git commit
git config --global user.email 'vivian.usc.2009@gmail.com'
git config --global user.name 'jiapku'

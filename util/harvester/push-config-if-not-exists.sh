file=$1
url=$2
entitytype=$3

id=$(grep -oPm1 "(?<=<id>)[^<]+" $file)  # get value of <id></id>
if curl --output /dev/null --silent --fail $url/$id; then
   echo "$entitytype $id already exists. Skipping"
else
   echo POSTing $file with id $id to $url
   curl -H "Content-Type: application/xml" -d @$file $url
fi
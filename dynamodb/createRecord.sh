profile=kzk-serverless
region=ap-northeast-1
table_name=question_table

aws dynamodb put-item --table-name ${table_name} --item '{"question_id": {"S": "001"}, "text": {"S": "講義を聴くより教科書を読む方を好む"}}' --profile ${profile} --region ${region}
aws dynamodb put-item --table-name ${table_name} --item '{"question_id": {"S": "002"}, "text": {"S": "フラッシュカードを使うと覚えやすい"}}' --profile ${profile} --region ${region}
aws dynamodb put-item --table-name ${table_name} --item '{"question_id": {"S": "003"}, "text": {"S": "クロスワードパズルが好きだ"}}' --profile ${profile} --region ${region}

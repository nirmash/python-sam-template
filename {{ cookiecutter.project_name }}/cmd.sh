aws s3 mb s3://"bucket-{{ cookiecutter.project_name }}" --region --region "{{ cookiecutter.aws_region }}" && \
sam build && sam deploy --stack-name "{{ cookiecutter.project_name }}" --parameter-overrides "ParameterKey=project_name,ParameterValue={{ cookiecutter.project_name }},ParameterKey=aws_region,ParameterValue={{ cookiecutter.aws_region }},ParameterKey=function_name,ParameterValue={{ cookiecutter.function_name }}" --s3-bucket "bucket-{{ cookiecutter.project_name }}" --s3-prefix "{{ cookiecutter.project_name }}" --region "{{ cookiecutter.aws_region }}" --capabilities "CAPABILITY_IAM" --no-confirm-changeset

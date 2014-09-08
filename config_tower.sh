# create tower organization
tower-cli organization create --name "MyOrg"
# add AWS credentials
tower-cli credential create --kind aws --username foo --password bar --user admin --name "AWS Credentials"
# add SSH credentials
tower-cli credential create --kind ssh --username ubuntu --user admin --private-key ~/.ssh/ansible_tower_demo --name "EC2 key"
# create inventory
tower-cli inventory create --name "My Inventory" --organization MyOrg
# create inventory group
tower-cli group create --name EC2 --source ec2 --inventory "My Inventory" --credential "AWS Credentials"
# sync inventory group
tower-cli group sync --name EC2
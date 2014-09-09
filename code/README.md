# Example Playbooks for Spinning Up Tower

Ah, you found me.  Here you will find some playbooks for spinning up a Tower instance in EC2 (without using the Tower AMI).  It could be useful for setting up a test instance in EC2.

Modify the inventory varaibles to fit your environment's needs. Then run:

	./run_me.sh


What does it do?

1. Grabs the Tower version specified in group_vars/all
2. Provisions a Tower instance with settings specified in group_vars/all
3. Populates a tower_cli.cfg.
4. Runs the Tower playbook against the server provisioned in #2.

If you want to go a step further, and actually configure Tower:

1. Install tower-cli
2. Custmoize config_tower.sh for your environment
3. run ```./config_tower.sh```
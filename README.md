# home-nas

ansible repository to keep track and deploy a nas at home.


## The goal

The main goal is to keep an iac (infrastructure as code) to be able to update and deploy as many time I need.

I develop this project also for learning purpose.


## How to use it

Build the project:
```bash
docker-compose build --force-rm
```

Run it as an Ansible program:

`docker-compose run ansible COMMAND [OPTIONS...]`

```bash
docker-compose run --rm ansible ansible --version
```
# Dockerized rails app template

## Quick spin up

Execute the setup script:
```
./setup.sh
```

The rails app will be created using the following options:
```
--database postgresql --css tailwind --skip-test --force
```
If you want different options you can change in the setup.sh script.

## Usage

In the docker folder you can find shortcut scripts to execute most used commands like rails, bundle,
rspec, for example you can run database migration with:
```
./docker/rails db:migrate
```

To gracefully shutdown all services use:
```
./docker/down
```

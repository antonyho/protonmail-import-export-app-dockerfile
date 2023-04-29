# protonmail-import-export-app-dockerfile
Dockerfile for ProtonMail Import-Export App

This docker container aims for the purpose of running the CLI tool interactively. This saves a lot of effort rather than curating the Docker image to launch the GUI.

My objective to make this Docker image is for exporting mails from ProtonMail account. Instead of having to install their tool, I would rather to have a Docker iamge for it. You may find it unuseful if this is not your purpose. But you may use this as your blueprint to make your own Docker image.


## Building Docker image

The project comes with the shell script for building the docker image.

`./build.sh`

## Starting Docker container

The project comes with the shell script to start the docker container into CLI mode.

`./launch-cli.sh`

## To start using the CLI tool

### Log into your account

Use `login` command to log into your ProtonMail account.

Enter your account credential.

### Export your mailbox

Use `export` command to start exporting. For example, `export mbox`.

It will ask your for the output directory. Use the mounted path `/export`

For the output format, it's better to export to MBOX if you are going to import it to ProtonMail account again.

Once it's finished. You should see some .mbox file(s) in the export directory.

### Import 

Use the `import` command to start importing the backup from local files.

Command: `import local`

It will ask you for the directory which contains the backup files. The default mount point is `/export`


Use `exit` command to quit the interactive console.

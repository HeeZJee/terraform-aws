# Provision infrastructure on AWS Cloud

## Prerequisites

To follow this tutorial you will need:

1. The [Terraform CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started) (0.14.9+) installed.
2. The [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) installed.
3. An [AWS account](https://aws.amazon.com/free/).
4. Your AWS credentials. You can [create a new Access Key on this page](https://console.aws.amazon.com/iam/home?#/security_credentials).

## Set Environment Variables

1. Copy all your environment variables from `set_env.bash.example` file `set_env.bash` file.

    ```!/bin/bash
    cp -v set_env.bash.example set_env.bash
    ```

2. Replace all AWS and Project Secrets based on your requirements in `set_env.bash` file.

3. Assign exutable permission to your `set_env.bash` file.

    ```!/bin/bash
    chmod +x ./set_env.bash
    ```

4. Run the `set_env.bash` scripts to update the environment variables.

    ```!/bin/bash
    ./set_env.bash
    
    source ./set_env.bash
    ```

## Provision Infrastructure

1. When you create a new configuration — or check out an existing configuration from version control — you need to initialize the directory with terraform init. Initializing a configuration directory downloads and installs the providers defined in the configuration, which in this case is the aws provider

    ```!/bin/bash
    terraform init
    ```

2. You can also make sure your configuration is syntactically valid and internally consistent by using

    ```!/bin/bash
    terraform validate
    ```

3. To preview the changes that Terraform plans to make to your infrastructure and store them in file.

    ```!/bin/bash
    terraform plan -out main.tf.out
    ```

4. Finally, To executes the actions proposed in a Terraform plan.

    ```!/bin/bash
    terraform apply "main.tf.out"
    ```

5. from the console output, you will recieve public ip of your EC2 instance, you can connect it via your provided ssh key or via AWS Management Console. E.g.

     ```!/bin/bash
    Outputs:

    instance_ip = "1.1.1.1"
     ```

6. To ensure that the planned operations are executed as expected, or to inspect the current state as Terraform sees it.

    ```!/bin/bash
    terraform show
    ```

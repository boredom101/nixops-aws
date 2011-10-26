let

  config =
    { deployment.targetEnv = "ec2";
      deployment.ec2.region = "us-east-1";
      deployment.ec2.instanceType = "m1.large";
      deployment.ec2.keyPair = "eelco";
      deployment.ec2.securityGroups = [ "eelco-test" ];
    };

in

{
  proxy = config;
  backend1 = config;
  backend2 = config;
}

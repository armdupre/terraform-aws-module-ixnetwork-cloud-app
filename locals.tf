locals {
	AmiName = var.AmiName
	AmiOwner = var.AmiOwner
	Eth0Name = "${local.Preamble}-eth0-${local.Region}"
	Eth0SecurityGroupId = var.Eth0SecurityGroupId
	Eth0SubnetId = var.Eth0SubnetId
	Eth1Name = "${local.Preamble}-eth1-${local.Region}"
	Eth1PrivateIpAddresses = var.Eth1PrivateIpAddresses
	Eth1SecurityGroupId = var.Eth1SecurityGroupId
	Eth1SubnetId = var.Eth1SubnetId
	Eth2Name = "${local.Preamble}-eth2-${local.Region}"
	Eth2PrivateIpAddresses = var.Eth2PrivateIpAddresses
	Eth2SecurityGroupId = var.Eth2SecurityGroupId
	Eth2SubnetId = var.Eth2SubnetId
	IamInstanceProfileName = "${local.Preamble}-iam-instance-profile-${local.Region}"
	IamPolicyName = "${local.Preamble}-iam-policy-${local.Region}"
	IamRoleName = "${local.Preamble}-iam-role-${local.Region}"
	InstanceDisableApiTermination = false
	InstanceEbsDeleteOnTermination = true
	InstanceEbsVolumeSize = "32"
	InstanceEbsVolumeType = "gp2"
	InstanceId = var.InstanceId
	InstanceInstanceInitiatedShutdownBehavior = "stop"
	InstanceMonitoring = false
	InstanceName = var.InstanceName == null ? "${local.Preamble}-instance-${local.Region}" : var.InstanceName
	InstanceType = var.InstanceType
	InterfaceSourceDestCheck = false
	Preamble = "${local.UserLoginTag}-${local.UserProjectTag}-${local.Tag}-${local.InstanceId}-${local.Version}"
	Region = data.aws_region.current.name
	SleepDelay = var.SleepDelay
	Tag = var.Tag
	UserEmailTag = var.UserEmailTag
	UserLoginTag = var.UserLoginTag
	UserProjectTag = var.UserProjectTag
	Version = var.Version
	init_cli = var.init_cli
}
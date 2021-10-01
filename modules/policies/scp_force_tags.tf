resource "aws_organizations_policy" "scp_force_tags" {
  name        = "Forcing-tag-policy"
  description = "Service Control Policie that enforces the tag implementation"
  type        = "SERVICE_CONTROL_POLICY"
  content     = <<CONTENT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "EnforceStageTagging",
      "Effect": "Deny",
      "Action": [
        "secretsmanager:CreateSecret",
        "cloudformation:CreateStack",
        "rds:CreateDBInstance",
        "dynamodb:CreateTable",
        "sqs:CreateQueue",
        "ecr:CreateRepository",
        "ecs:CreateCluster",
        "ecs:CreateService"
      ],
      "Resource": [
        "*"
      ],
      "Condition": {
        "StringNotEquals": {
          "aws:RequestTag/Stage": [
            "dev",
            "tst",
            "int",
            "prd",
            "shd",
            "cor",
            "acc"
          ]
        }
      }
    },
    {
      "Sid": "EnforceIacRepoTagging",
      "Effect": "Deny",
      "Action": [
        "secretsmanager:CreateSecret",
        "cloudformation:CreateStack",
        "rds:CreateDBInstance",
        "dynamodb:CreateTable",
        "sqs:CreateQueue",
        "ecr:CreateRepository",
        "ecs:CreateCluster",
        "ecs:CreateService"
      ],
      "Resource": [
        "*"
      ],
      "Condition": {
        "StringNotLike": {
          "aws:RequestTag/IacRepo": "https://bitbucket.org/ohpen-dev/*"
        }
      }
    },
    {
      "Sid": "EnforceClientTagging",
      "Effect": "Deny",
      "Action": [
        "secretsmanager:CreateSecret",
        "cloudformation:CreateStack",
        "rds:CreateDBInstance",
        "dynamodb:CreateTable",
        "sqs:CreateQueue",
        "ecr:CreateRepository",
        "ecs:CreateCluster",
        "ecs:CreateService"
      ],
      "Resource": [
        "*"
      ],
      "Condition": {
        "StringNotEquals": {
          "aws:RequestTag/Client": [
            "agn",
            "knb",
            "lpb",
            "rbc",
            "sns",
            "tkp",
            "nn",
            "ohp"
          ]
        }
      }
    },
    {
      "Sid": "EnforceServiceTagging",
      "Effect": "Deny",
      "Action": [
        "secretsmanager:CreateSecret",
        "cloudformation:CreateStack",
        "rds:CreateDBInstance",
        "dynamodb:CreateTable",
        "sqs:CreateQueue",
        "ecr:CreateRepository",
        "ecs:CreateCluster",
        "ecs:CreateService"
      ],
      "Resource": [
        "*"
      ],
      "Condition": {
        "Null": {
          "aws:RequestTag/Service": "true"
        }
      }
    },
    {
      "Sid": "EnforceServiceGroupTagging",
      "Effect": "Deny",
      "Action": [
        "secretsmanager:CreateSecret",
        "cloudformation:CreateStack",
        "rds:CreateDBInstance",
        "dynamodb:CreateTable",
        "sqs:CreateQueue",
        "ecr:CreateRepository",
        "ecs:CreateCluster",
        "ecs:CreateService"
      ],
      "Resource": [
        "*"
      ],
      "Condition": {
        "Null": {
          "aws:RequestTag/ServiceGroup": "true"
        }
      }
    },
    {
      "Sid": "EnforceTeamTagging",
      "Effect": "Deny",
      "Action": [
        "secretsmanager:CreateSecret",
        "cloudformation:CreateStack",
        "rds:CreateDBInstance",
        "dynamodb:CreateTable",
        "sqs:CreateQueue",
        "ecr:CreateRepository",
        "ecs:CreateCluster",
        "ecs:CreateService"
      ],
      "Resource": [
        "*"
      ],
      "Condition": {
        "Null": {
          "aws:RequestTag/Team": "true"
        }
      }
    },
    {
      "Sid": "EnforceDatadogTagging",
      "Effect": "Deny",
      "Action": [
        "secretsmanager:CreateSecret",
        "cloudformation:CreateStack",
        "rds:CreateDBInstance",
        "dynamodb:CreateTable",
        "sqs:CreateQueue",
        "ecr:CreateRepository",
        "ecs:CreateCluster",
        "ecs:CreateService"
      ],
      "Resource": [
        "*"
      ],
      "Condition": {
        "StringNotEquals": {
          "aws:RequestTag/Datadog": [
            "true",
            "false"
          ]
        }
      }
    }
  ]
}
CONTENT
}

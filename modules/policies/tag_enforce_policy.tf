resource "aws_organizations_policy" "tag_enforce_policy" {
  name        = "Test-tag-policy-dev-infra"
  description = "Tag policy for dev-infra"
  type        = "TAG_POLICY"
  content     = <<CONTENT
{
  "tags": {
    "Stage": {
      "tag_key": {
        "@@assign": "Stage"
      },
      "tag_value": {
        "@@assign": [
          "dev",
          "tst",
          "acc",
          "prd",
          "int",
          "shd",
          "cor"
        ]
      },
      "enforced_for": {
        "@@assign": [
          "s3:bucket"
        ]
      }
    },
    "IacRepo": {
      "tag_key": {
        "@@assign": "IacRepo"
      },
      "enforced_for": {
        "@@assign": []
      }
    },
    "Client": {
      "tag_key": {
        "@@assign": "Client"
      },
      "tag_value": {
        "@@assign": [
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
    },
    "Service": {
      "tag_key": {
        "@@assign": "Service"
      },
      "enforced_for": {
        "@@assign": []
      }
    },
    "ServiceGroup": {
      "tag_key": {
        "@@assign": "ServiceGroup"
      }
    },
    "Team": {
      "tag_key": {
        "@@assign": "Team"
      },
      "enforced_for": {
        "@@assign": []
      }
    },
    "Datadog": {
      "tag_key": {
        "@@assign": "Datadog"
      },
      "tag_value": {
        "@@assign": [
          "true",
          "false",
          "0",
          "1"
        ]
      },
      "enforced_for": {
        "@@assign": []
      }
    }
  }
}
CONTENT
}

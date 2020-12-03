# use old cli for now
export PATH="/usr/local/opt/awscli@1/bin:$PATH"
# config

export AWS_DEFAULT_REGION="eu-central-1"
alias with_pcs_codecommit='AWS_PROFILE=018978742626_readonly-pcs'
export VFDE_DXL_DEFAULT_ROLE=SysAdmin
source <(account_util account_alias --project dxl --role $VFDE_DXL_DEFAULT_ROLE)
source <(account_util eks_alias --project dxl)

export VFDE_COMA_DEFAULT_ROLE=SysAdmin
source <(account_util account_alias --project coma --role $VFDE_COMA_DEFAULT_ROLE )

export RESOURCE_DXL_SERVICEENABLER_DIR="dxl-serviceenabler"

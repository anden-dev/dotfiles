# use old cli for now
export PATH="/usr/local/opt/awscli@1/bin:$PATH"
# config

export AWS_DEFAULT_REGION="eu-central-1"
alias with_pcs_codecommit='AWS_PROFILE=018978742626_readonly-pcs'

#alias with_sol_mgmt='AWS_PROFILE=196433213517_mgmt_sysadmin-sol'
#alias auth_sol_mgmt='AWS_PROFILE=971374528884_mgmt_sysadmin-dxl assume_sol_mgmt_role.sh'

export VFDE_DXL_DEFAULT_ROLE=SysAdmin
export BASE_PATH=$PATH
export PATH="$HOME/project-dxl-vodafone/dxl-aws-config/bin:$PATH"
source <(account_util account_alias --project dxl --role $VFDE_DXL_DEFAULT_ROLE)
source <(account_util eks_alias --project dxl)

export VFDE_COMA_DEFAULT_ROLE=SysAdmin
source <(account_util account_alias --project coma --role $VFDE_COMA_DEFAULT_ROLE )
export PATH="$BASE_PATH"

export VFDE_SOL_DEFAULT_ROLE=SysAdmin
export PATH="$HOME/project-sol-vodafone/vfde-aws-cdk/bin:$PATH"
source <(account_util account_alias --project sol --role $VFDE_SOL_DEFAULT_ROLE )
source <(account_util eks_alias --project sol)

export RESOURCE_DXL_SERVICEENABLER_DIR="dxl-serviceenabler"

export VFDE_SOL_DEFAULT_ROLE=SysAdmin

alias auth_legacy-sol_logon='env -u AWS_PROFILE saml2aws_wrapper --role arn:aws:iam::024247329978:role/DevOpsStartUpDOX --profile 024247329978_logon_devopsstartupdox-legacy-sol --session-duration=3600'
alias with_legacy-sol_logon='AWS_PROFILE=024247329978_logon_devopsstartupdox-legacy-sol'
alias with_artint2_devopsstartupdox='AWS_PROFILE=334720115608_startupint2-devopsstartupdox-legacy-sol'



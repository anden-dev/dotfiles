# use old cli for now
#export PATH="/usr/local/opt/awscli@1/bin:$PATH"
# config

export AWS_DEMO_MODE="true" # withhold secrets in ssm.sh

export AWS_DEFAULT_REGION="eu-central-1"

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





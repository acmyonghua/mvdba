#
# $Id: pgofa.sh 6 2006-09-10 15:35:16Z marcus $
# pgofa.sh
#
# Set POSTGRES friendly environment
#
# Created:
#    Marcus Vinicius Ferreira <marcus@mvway.com>    Out/2004
#

# PostGreSQL Variables
#
# Used by Postgres
# ----------------
#       PGDATA          PGHOST
#       PGDATABASE      PGPORT
#       PGUSER
#
# Used by Postgres-OFA (my customization)
# ---------------------------------------
#       PGBASE
#       PGHOME
#       PGADMIN
#

PGBASE=/u01/app/postgres
#PGHOME -- defined by pghome.sh
#PGDATA -- defined by pghome.sh

PGADMIN=${PGBASE}/admin
PGLOG=${PGADMIN}/${PGDATABASE}/log/alert_${PGDATABASE}.log

export PGADMIN PGLOG

alias pgadmin="cd $PGADMIN"
alias  pgdata="cd $PGDATA"
alias  pghome="cd $PGHOME"

alias  pgexp="cd ${PGADMIN}/${PGDATABASE}/exp"
alias pgconf="cd ${PGADMIN}/${PGDATABASE}/conf"


alias   pglog="tail -f $PGLOG"

function pgstart() {
    if [ "$1" == "" ]
    then
        pg_ctl start -w -D $PGDATA -l $PGLOG
    else
        pg_ctl start -w -D $PGDATA -l $PGLOG -m $1
    fi
}

function pgstop() {
    if [ "$1" == "" ]
    then
        pg_ctl stop  -w -D $PGDATA -l $PGLOG
    else
        pg_ctl stop  -w -D $PGDATA -l $PGLOG -m $1
    fi
}

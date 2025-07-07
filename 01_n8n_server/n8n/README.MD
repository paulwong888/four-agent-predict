## n8n docker 
```
导出工作流命令:
n8n export:workflow --all --output=/home/node/.n8n/backup/export-all-workflows.json

导出用户名及密码命令:
n8n export:credentials --all --output=/home/node/.n8n/backup/export-all-credentials.json

导入工作流命令:
n8n import:workflow --input=/home/node/.n8n/backup/export-all-workflows.json

导入用户名及密码命令:
n8n import:credentials --input=/home/node/.n8n/backup/export-all-credentials.json

```
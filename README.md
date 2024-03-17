

```bash
  chmod +x auto_ec2.sh
```

```bash
  crontab -e
```

```bash
# stop
0 18 * * * /caminho/para/o/script/auto_ec2.sh

# start
0 6 * * * /caminho/para/o/script/auto_ec2.sh
```

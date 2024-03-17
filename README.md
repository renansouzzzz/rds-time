

```bash
  chmod +x auto_ec2.sh
```

```bash
  crontab -e
```

```bash
# stop
0 18 * * * /path/auto_ec2.sh

# start
0 6 * * * /path/auto_ec2.sh
```

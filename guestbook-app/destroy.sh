#! /usr/bin/bash
echo "[-] Deleting k8 resources ..." &&

kubectl delete rc/redis-master rc/redis-slave rc/guestbook svc/redis-master svc/redis-slave svc/guestbook &&

echo "[v] Finished deleting k8 resources"


; <<>> DiG 9.7.3 <<>> ivydate.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 28924
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;ivydate.com.			IN	A

;; ANSWER SECTION:
ivydate.com.		60	IN	A	50.19.232.211

;; Query time: 158 msec
;; SERVER: 172.16.0.23#53(172.16.0.23)
;; WHEN: Wed Dec 28 05:03:07 2011
;; MSG SIZE  rcvd: 45



; <<>> DiG 9.7.3 <<>> ivydate.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 7801
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;ivydate.com.			IN	A

;; ANSWER SECTION:
ivydate.com.		60	IN	A	50.19.232.211

;; Query time: 199 msec
;; SERVER: 172.16.0.23#53(172.16.0.23)
;; WHEN: Tue Dec 20 03:03:42 2011
;; MSG SIZE  rcvd: 45


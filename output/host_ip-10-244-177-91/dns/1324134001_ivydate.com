
; <<>> DiG 9.7.3 <<>> ivydate.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 25127
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;ivydate.com.			IN	A

;; ANSWER SECTION:
ivydate.com.		60	IN	A	50.19.232.211

;; Query time: 85 msec
;; SERVER: 172.16.0.23#53(172.16.0.23)
;; WHEN: Sat Dec 17 15:05:28 2011
;; MSG SIZE  rcvd: 45


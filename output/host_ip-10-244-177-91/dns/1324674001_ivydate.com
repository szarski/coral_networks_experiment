
; <<>> DiG 9.7.3 <<>> ivydate.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 20926
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;ivydate.com.			IN	A

;; ANSWER SECTION:
ivydate.com.		60	IN	A	50.19.232.211

;; Query time: 98 msec
;; SERVER: 172.16.0.23#53(172.16.0.23)
;; WHEN: Fri Dec 23 21:02:03 2011
;; MSG SIZE  rcvd: 45

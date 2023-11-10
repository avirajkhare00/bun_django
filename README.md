# BUN + DJANGO_ORM -> Speed + Ease

The proposal is to utilize bun as the JavaScript runtime environment. Bun would serve as a lightweight, high-speed server with the maximum file descriptor limit. The Django ORM package would be isolated for its simplicity of use. Using bun instead of Django's default server provides superior performance and scalability through bun's capacity to handle many file descriptors. Separating the ORM allows harnessing the strengths of Django's ORM while operating on the high-performance bun server.

Rough idea:

 - web socket -> runtime engine -> bun
 - to query db -> DJANGO_ORM
 - No Puma or Gunicorn or anything

Idea is to isolate ORM package from Django.

SubProcess communication will happen from Bun to Django as shell
We will load Django ORM in shell and magic will happen there.
<br />
<br />
Django creates a table, for ex. User(authentication) table
<br />
Bun executes raw sql commands by opening sub process
<br />
User can do read queries using Django shell on either master or slave db.
<br />

PROGRESS:
 - [ ] sqlite db for now
 - [ ] Create Dockerfile

# BUN + DJANGO_ORM -> Speed + Ease

The proposal is to utilize bun as the JavaScript runtime environment. Bun would serve as a lightweight, high-speed server with the maximum file descriptor limit. The Django ORM package would be isolated for its simplicity of use. Using bun instead of Django's default server provides superior performance and scalability through bun's capacity to handle many file descriptors. Separating the ORM allows harnessing the strengths of Django's ORM while operating on the high-performance bun server.

Rough idea:

 - web socket -> runtime engine -> bun
 - to query db -> DJANGO_ORM

Idea is to isolate ORM package from Django.

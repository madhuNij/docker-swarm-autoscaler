########## apache benchmark to generate http load ##########
ab -c 1 -n 100000 -t 600  http://127.0.0.1:8080/
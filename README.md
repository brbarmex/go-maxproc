Docker linux 4cpu 8GB

# Resultado 1:

```sh
    checks.........................: 100.00% ✓ 24613     ✗ 0      
    data_received..................: 3.7 MB  46 kB/s
    data_sent......................: 6.0 MB  75 kB/s
    http_req_blocked...............: avg=533.08µs min=1µs  med=4µs   max=149.93ms p(90)=586.79µs p(95)=1.15ms  
    http_req_connecting............: avg=407.12µs min=0s   med=0s    max=149.7ms  p(90)=434µs    p(95)=852.39µs
    http_req_duration..............: avg=15.46s   min=10s  med=15.3s max=25.45s   p(90)=20s      p(95)=20.21s  
    { expected_response:true }...: avg=15.46s   min=10s  med=15.3s max=25.45s   p(90)=20s      p(95)=20.21s  
    http_req_failed................: 0.00%   ✓ 0         ✗ 24613  
    http_req_receiving.............: avg=233.62µs min=18µs med=66µs  max=114.6ms  p(90)=184µs    p(95)=333.39µs
    http_req_sending...............: avg=182.54µs min=9µs  med=48µs  max=96.53ms  p(90)=131µs    p(95)=232µs   
    http_req_tls_handshaking.......: avg=0s       min=0s   med=0s    max=0s       p(90)=0s       p(95)=0s      
    http_req_waiting...............: avg=15.46s   min=10s  med=15.3s max=25.45s   p(90)=20s      p(95)=20.21s  
    http_reqs......................: 24613   307.42569/s
    iteration_duration.............: avg=15.47s   min=10s  med=15.3s max=25.45s   p(90)=20s      p(95)=20.21s  
    iterations.....................: 24613   307.42569/s
    vus............................: 3       min=0       max=9973 
    vus_max........................: 10000   min=9252    max=10000
```

# Resultado 2:

```sh
    checks.........................: 100.00% ✓ 24276      ✗ 0      
    data_received..................: 3.6 MB  44 kB/s
    data_sent......................: 5.9 MB  72 kB/s
    http_req_blocked...............: avg=1.35ms   min=1µs  med=4µs  max=937.63ms p(90)=912µs   p(95)=1.57ms
    http_req_connecting............: avg=1.22ms   min=0s   med=0s   max=937.33ms p(90)=779µs   p(95)=1.14ms
    http_req_duration..............: avg=15.87s   min=10s  med=16s  max=27.95s   p(90)=20.1s   p(95)=20.99s
    { expected_response:true }...: avg=15.87s   min=10s  med=16s  max=27.95s   p(90)=20.1s   p(95)=20.99s
    http_req_failed................: 0.00%   ✓ 0          ✗ 24276  
    http_req_receiving.............: avg=239.16µs min=14µs med=54µs max=138.82ms p(90)=237µs   p(95)=557µs 
    http_req_sending...............: avg=178.72µs min=9µs  med=53µs max=78.56ms  p(90)=183.5µs p(95)=391µs 
    http_req_tls_handshaking.......: avg=0s       min=0s   med=0s   max=0s       p(90)=0s      p(95)=0s    
    http_req_waiting...............: avg=15.87s   min=10s  med=16s  max=27.95s   p(90)=20.09s  p(95)=20.99s
    http_reqs......................: 24276   294.788366/s
    iteration_duration.............: avg=15.87s   min=10s  med=16s  max=27.95s   p(90)=20.1s   p(95)=20.99s
    iterations.....................: 24276   294.788366/s
    vus............................: 1       min=1        max=9923 
    vus_max........................: 10000   min=10000    max=10000
```

# Resultado 3:

```sh
    checks.........................: 100.00% ✓ 25346      ✗ 0      
    data_received..................: 3.8 MB  48 kB/s
    data_sent......................: 6.2 MB  77 kB/s
    http_req_blocked...............: avg=282.28µs min=1µs  med=4µs    max=48.87ms p(90)=451µs   p(95)=647.75µs
    http_req_connecting............: avg=223.34µs min=0s   med=0s     max=48.7ms  p(90)=343.5µs p(95)=492µs   
    http_req_duration..............: avg=15.06s   min=10s  med=15.01s max=21.29s  p(90)=19.19s  p(95)=20s     
    { expected_response:true }...: avg=15.06s   min=10s  med=15.01s max=21.29s  p(90)=19.19s  p(95)=20s     
    http_req_failed................: 0.00%   ✓ 0          ✗ 25346  
    http_req_receiving.............: avg=89.43µs  min=16µs med=53µs   max=33.85ms p(90)=123µs   p(95)=168µs   
    http_req_sending...............: avg=75.69µs  min=9µs  med=37µs   max=63.33ms p(90)=96µs    p(95)=133µs   
    http_req_tls_handshaking.......: avg=0s       min=0s   med=0s     max=0s      p(90)=0s      p(95)=0s      
    http_req_waiting...............: avg=15.06s   min=10s  med=15.01s max=21.29s  p(90)=19.18s  p(95)=20s     
    http_reqs......................: 25346   316.588615/s
    iteration_duration.............: avg=15.06s   min=10s  med=15.01s max=21.29s  p(90)=19.19s  p(95)=20s     
    iterations.....................: 25346   316.588615/s
    vus............................: 54      min=0        max=9878 
    vus_max........................: 10000 
```

### Análise Comparativa

#### Checks:

Todos os testes passaram 100% dos checks, indicando que todas as respostas foram como esperado.

#### Data Received e Data Sent:

**Resultado 1:** 3.7 MB recebidos a 46 kB/s e 6.0 MB enviados a 75 kB/s.
**Resultado 2:** 3.6 MB recebidos a 44 kB/s e 5.9 MB enviados a 72 kB/s.
**Resultado 3:** 3.8 MB recebidos a 48 kB/s e 6.2 MB enviados a 77 kB/s.
**Análise:** O terceiro teste transferiu a maior quantidade de dados, seguido pelo primeiro e segundo testes.

#### http_req_blocked:

**Resultado 1:** avg=533.08µs, max=149.93ms.
**Resultado 2:** avg=1.35ms, max=937.63ms.
**Resultado 3:** avg=282.28µs, max=48.87ms.
**Análise:** O terceiro teste teve o menor tempo médio e máximo de bloqueio, seguido pelo primeiro e segundo testes.

#### http_req_connecting:

Resultado 1: avg=407.12µs, max=149.7ms.
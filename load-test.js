import http from 'k6/http';
import { check, sleep } from 'k6';


export const options = {
    stages: [
        { duration: '1m', target: 10000 },
    ],
};

export default function () {
    const url = 'http://localhost:8080/register';
    const payload = JSON.stringify({
        product_id: '123',
        customer_id: 'abc',
        quantity: 100,
        total_price: 100,
        purchase_date: '2024-06-08'
    });

    const params = {
        headers: {
            'Content-Type': 'application/json',
        },
    };

    const res = http.post(url, payload, params);

    check(res, {
        'is status 202': (r) => r.status === 202,
    });

    sleep(1 / 10000); 
}

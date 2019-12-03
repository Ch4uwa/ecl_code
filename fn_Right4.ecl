fn_Right4(STRING s) := IF(LENGTH(TRIM(s)) > 4,
                        s[LENGTH(TRIM(s))-3..],
                        s);

fn_Right4('thisismystring');
fn_Right4('33334-1502    ');

fn_LimitValue(n,maxval) := IF(n > maxval, maxval, n);

fn_LimitValue(3,10);
fn_LimitValue(30,10);
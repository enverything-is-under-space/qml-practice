function updateTimer(h,m)
{
    if(m<=59)
        m++
    else
    {
        m=0;
        h++;
    }

    return h + ":" + m;
}

function updateMinute(m)
{
    if(m<=60)
    {
        m=0;
    }

    return m;
}
function updateHour(h)
{
    return h;
}

function updateTimerWay3(h,m,s)
{
    if(s<59)
        s++;
    else
    {
        s=0;

        if(m<59)
            m++;
        else
        {
            m=0;
            h++;
        }

    }
    return '{"h":'+h+',"m":'+m+',"s":'+s+'}';
}
//    return JSON.stringify({h,m});

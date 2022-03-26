# include <Order.h>

int GetDayOfWeek(int nYear, int nMonth, int nDay)
{
    //2016-06-02 20:00~22:00
    int iWeek = 0;
    unsigned int y = 0, c = 0, m = 0, d = 0;

    if (nYear == 1 || nMonth == 2)
    {
        c = (nYear - 1) / 100;
        y = (nYear - 1) % 100;
        m = nMonth + 12;
        d = nDay;
    }
    else
    {
        c = nYear / 100;
        y = nYear % 100;
        m = nMonth;
        d = nDay;
    }
    //蔡勒公式  
    iWeek = y + y / 4 + c / 4 - 2 * c + 26 * (m + 1) / 10 + d - 1;

    iWeek = iWeek >= 0 ? (iWeek % 7) : (iWeek % 7 + 7);
    if (iWeek == 0)
    {
        iWeek = 7;
    }
    return iWeek;
}

void Order::debug() const{
    std::cout<< "user_id: "<< user_id<< '\n'<<
                "order_time: "<< order_time<< '\n'<<
                "place_number: "<< place_number<< '\n'<<
                "order_year: "<< order_year<< '\n'<<
                "order_month: "<< order_month<< '\n'<<
                "order_day: "<< order_day<< '\n'<<
                "start_time: "<< start_time<< '\n'<<
                "end_time: "<< end_time<< '\n'<<
                "week: "<< week<< '\n';
}

Order::Order(std::string id, std::string time, char place): user_id(id), order_time(time), place_number(place){
        int nRet = sscanf(order_time.c_str(), "%d-%d-%d %d:00~%d:00",
                            &order_year, &order_month, &order_day, &start_time, &end_time);
        if (5 != nRet)
            throw std::runtime_error("Fail to construct new order!");
        this->week = GetDayOfWeek(order_year, order_month, order_day);
    };
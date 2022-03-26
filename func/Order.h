# ifndef ORDER_H
# define ORDER_H

# include <string>
# include <iostream>

//订单类
class Order{
public:
    Order() = default;
    Order(std::string id, std::string time, char place);

    void setTime(int year, int month, int day, int start_time, int end_time) ;
    std::string getUerID() const {return this->user_id;}
    int getWeek() const {return this->week;}
    int getYear()const {return this->order_year;}
    int getMonth()const {return this->order_month;}
    int getDay()const {return this->order_day;}
    int getStartTime()const {return this->start_time;}
    int getEndTime()const {return this->end_time;}
    //返回正常费用
    double getPayment() const {return this->payment;}
    //设置正常费用
    void setPayment(double pay) {this->payment = pay;}
    //判断该订单是否取消
    bool isCancel() const {return this->cancel_flag;}
    void setCancelFlag (bool flag) {this->cancel_flag = flag;}
    //得到预订日期 yyyy-MM-dd
    std::string getDate()const {return this->order_time.substr(0, 10); } 
    //得到 yyyy-MM-dd HH:mm~HH:mm
    std::string getOrderTime() const {return order_time;} 

    void debug() const;

    std::string getInformation() const {return this->user_id + ' ' + this->order_time + ' ' + this->place_number;}

    ~Order() = default;
private:
    // 格式：UXXX
    std::string user_id; 
    // {预订日期 yyyy-MM-dd} {预订时间段 HH:mm~HH:mm}
    std::string order_time; 
    char place_number;
    int order_year;
    int order_month;
    int order_day;
    int start_time;
    int end_time;
    int week;
    //订单费用
    double payment;
    bool cancel_flag;
};



# endif
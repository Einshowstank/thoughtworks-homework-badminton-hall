# include <Court.h>
# include <../config.h>

std::unordered_map<int, int> Court::charge_week{{ 9, 30 }, { 10, 30 }, { 11, 30 }, { 12, 50 },
{ 13, 50 }, { 14, 50 }, { 15, 50 }, { 16, 50 }, { 17, 50 }, { 18, 80 }, { 19, 80 },
{ 20, 60 }, { 21, 60 }};

std::unordered_map<int, int> Court::charge_weekend = { { 9, 40 }, { 10, 40 }, { 11, 40 }, { 12, 50 },
{ 13, 50 }, { 14, 50 }, { 15, 50 }, { 16, 50 }, { 17, 50 }, { 18, 60 },
{ 19, 60 }, { 20, 60 }, { 21, 60 } };

double Court::fine_rate_week = 0.5;
double Court::fine_rate_weekend = 0.25;

bool Court::isConflict(const Order& od) const{

    auto itr = this->orders.equal_range(od.getDate()); //获取相同日期的订单范围
    for (auto it = itr.first; it != itr.second; it++) {
        if((od.getStartTime() >= it->second.getStartTime() && od.getStartTime() < it->second.getEndTime()) || 
            (od.getEndTime() > it->second.getStartTime() && od.getEndTime() <= it->second.getEndTime()))
            return true;
    }
    return false;
}

void Court::addOrder(const Order& od){
    this->orders.insert({od.getDate(), od});
    std::cout<< "Success: the booking is accepted!"<<'\n';
}

void Court::cancelOrder(const std::string& u_id, const std::string& date, int start_time, int end_time){

    auto itr = this->orders.equal_range(date); //获取相同日期的订单范围
    for (auto it = itr.first; it != itr.second; it++)
        if(it->second.getUerID() == u_id && it->second.getStartTime() == start_time && 
            it->second.getEndTime() == end_time){
                this->canceled_orders.push_back(it->second); //将找到的订单加入取消订单
                this->orders.erase(it);                      //从订单列表删除该订单
                std::cout<< "Success: the booking is canceled!" << "\n";
                return;
            }
    
    std::cout<< "Error: the booking being cancelled does not exist!"<< '\n';
    
}

double Court::computeSinglePayment(const Order& od){
    double pay = 0.0;
    int week = od.getWeek();
    if (week <=5){
        for(int i = od.getStartTime(); i != od.getEndTime(); ++i)
            pay += charge_week[i];
    }
    else{
        for(int i = od.getStartTime(); i != od.getEndTime(); ++i)
            pay += charge_weekend[i];
    }
    return pay;
}

void Court::computePayment(){
    for (auto w: this->orders){
        std::string time_info = w.second.getOrderTime();
        this->payments.insert({time_info, Court::computeSinglePayment(w.second)});
    }
    for (auto w: this->canceled_orders){
        std::string time_info = w.getOrderTime();
        double fine = Court::computeSinglePayment(w);
        fine *= w.getWeek() <= 5 ? fine_rate_week: fine_rate_weekend;
        this->payments.insert({time_info+ ' ' + "违约金", fine});
    }
    this->orders.clear();
    this->canceled_orders.clear();
}

double Court::printPaymentSummary() const{
    double total_pay = 0.0;
    for (auto w: this->payments){
        total_pay += w.second;
        std::cout<< w.first<< ' '<< w.second << "元"<< '\n';
    }
    std::cout<<"小计："<< total_pay << "元"<< '\n';
    return total_pay;
}
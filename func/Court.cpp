# include <algorithm>
# include <Court.h>

std::map<std::pair<std::string, std::string>, int> Court::discount_map;

std::unordered_map<int, int> Court::charge_week{{ 9, 30 }, { 10, 30 }, { 11, 30 }, { 12, 50 },
{ 13, 50 }, { 14, 50 }, { 15, 50 }, { 16, 50 }, { 17, 50 }, { 18, 80 }, { 19, 80 },
{ 20, 60 }, { 21, 60 }};

std::unordered_map<int, int> Court::charge_weekend = { { 9, 40 }, { 10, 40 }, { 11, 40 }, { 12, 50 },
{ 13, 50 }, { 14, 50 }, { 15, 50 }, { 16, 50 }, { 17, 50 }, { 18, 60 },
{ 19, 60 }, { 20, 60 }, { 21, 60 } };


double Court::fine_rate_week = 0.5;
double Court::fine_rate_weekend = 0.25;

void Court::addDiscount(const std::pair<std::pair<std::string, std::string>, int>& d){
    Court::discount_map.insert(d);
}

bool Court::isConflict(const Order& od) const{

    auto itr = this->orders.equal_range(od.getDate()); //获取相同日期的订单范围
    for (auto it = itr.first; it != itr.second; it++) {
        if(! it->second.isCancel() && ((od.getStartTime() >= it->second.getStartTime() && od.getStartTime() < it->second.getEndTime()) || 
            (od.getEndTime() > it->second.getStartTime() && od.getEndTime() <= it->second.getEndTime())))
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
        if((! it->second.isCancel()) && it->second.getUerID() == u_id && 
            it->second.getStartTime() == start_time && it->second.getEndTime() == end_time ){
                it->second.setCancelFlag(true); //将该订单设置为取消
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
            pay += Court::charge_week[i];
    }
    else{
        for(int i = od.getStartTime(); i != od.getEndTime(); ++i)
            pay += Court::charge_weekend[i];
    }
    return pay;
}

bool isEarlier(const std::pair<std::string, Order> o1, const std::pair<std::string, Order> o2){
    return o1.second.getOrderTime() < o2.second.getOrderTime();
}

void Court::computePayment(){

    for (auto &w: this->orders){
        w.second.setPayment(Court::computeSinglePayment(w.second));
        this->orders_for_print.push_back(w);
    }

    std::sort(this->orders_for_print.begin(), this->orders_for_print.end(), isEarlier);
    
}

double Court::printPaymentSummary() const{

    double total_payment = 0.0;
    bool discount_flag;

    for (auto o: this->orders_for_print){
        if (o.second.isCancel()){ //取消了
            double fine = o.second.getPayment();
            fine *= o.second.getWeek() <= 5 ? Court::fine_rate_week: Court::fine_rate_weekend;
            std::cout << o.second.getOrderTime() << ' ' << "违约金 " << fine <<"元"<< '\n';
            total_payment += fine;
            continue;
        }

        //没取消
        discount_flag = false;
        for(auto d: this->discount_map){ 
            if(o.second.getDate() >= d.first.first && o.second.getDate() <= d.first.second){ //在优惠期内
                double discount_price = o.second.getPayment() * (d.second / 10.0);
                std::cout<< o.second.getOrderTime() << ' ' << discount_price << 
                        "元 已优惠:"<<  o.second.getPayment() - discount_price << "元"<<'\n';
                total_payment += discount_price;
                discount_flag = true;
            }
        } 
        if (!discount_flag){ //没优惠
            std::cout<< o.second.getOrderTime() << ' ' << o.second.getPayment() << "元"<<'\n';  
            total_payment += o.second.getPayment(); 
        }
    }

    std::cout<< "小计："<<total_payment<<"元"<<'\n';
    return total_payment;
}
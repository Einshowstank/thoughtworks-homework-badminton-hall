# ifndef COURT_H
# define COURT_H

# include <string>
# include <unordered_map>
# include <map>
# include <vector>
# include <Order.h>

//羽毛球场类
class Court{
public:
    Court() = default;
    Court(char number): court_number(number){}

    //判断新订单时间是否与已有订单冲突，冲突返回true
    bool isConflict(const Order&) const;
    //将新订单加入orders
    void addOrder(const Order&);
    //根据用户id，日期，起止时间取消对应订单
    void cancelOrder(const std::string& u_id, const std::string& date, int start_time, int end_time);

    //计算全部订单，更新每一笔订单的正常费用，导入orders_for_print并按时间重新排序
    void computePayment(); 
    //把每笔订单的费用信息打印出来，返回总收入
    double printPaymentSummary() const; 
    //计算单个订单付款
    static double computeSinglePayment(const Order&);
    //设置优惠活动字典
    static void addDiscount(const std::pair<std::pair<std::string, std::string>, int>&);

    ~Court() = default;

private:

    //A,B,C,D
    char court_number; 

    //日期 -> 订单 键值对，方便快速判断冲突，取消订单
    std::unordered_multimap<std::string, Order> orders; 
    //用于按时间顺序打印信息
    std::vector<std::pair<std::string, Order>> orders_for_print; 

    //收费标准，hour->pay
    static std::unordered_map<int, int> charge_week;
    static std::unordered_map<int, int> charge_weekend;
    //罚金比例
    static double fine_rate_week;
    static double fine_rate_weekend;

    // 打折优惠 <yyyy-MM-dd, yyyy-MM-dd> -> promotion rate
    static std::map<std::pair<std::string, std::string>, int> discount_map;
    
};

# endif
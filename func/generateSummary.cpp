# include <iostream>
# include <string>
# include <vector>
# include <algorithm>
# include <Order.h>
# include <Court.h>

std::vector<char> nPlace{'A','B','C','D'};

Court ct_A('A');
Court ct_B('B');
Court ct_C('C');
Court ct_D('D');

//根据用户输入处理一笔新订单
//输入格式为{用户ID} {预订日期 yyyy-MM-dd} {预订时间段 HH:mm~HH:mm} {场地}
//取消格式为{用户ID} {预订日期 yyyy-MM-dd} {预订时间段 HH:mm~HH:mm} {场地} {取消标记}
void getNewOrder(const std::string& newOrder){

    std::string act_id;
    int nYear, nMonth, nDay, start_time, end_time, u_id;
    char place;
    Court* ct;

    if (newOrder.length() == 31 && *newOrder.crbegin() == 'C'){ //取消订单

        auto iter = newOrder.rfind(' ');
        if (iter != std::string::npos)
            act_id = newOrder.substr(0, iter);
        else {
            std::cout<< "Error: the booking is invalid!"<< '\n';
            return;
        }

        int nRet = sscanf(act_id.c_str(), "U%d %d-%d-%d %d:00~%d:00 %c",
                            &u_id, &nYear, &nMonth, &nDay, &start_time, &end_time, &place);

        if (7 != nRet || std::find(nPlace.begin(), nPlace.end(), place) == nPlace.end() ||
            start_time >= end_time ||  start_time < 9 || end_time > 22){
            std::cout<< "Error: the booking is invalid!"<< '\n';
            return;
        }

        auto it_1 = act_id.find(' ');

        switch (place)
            {
            case 'A':
                ct = &ct_A;
                break;
            case 'B':
                ct = &ct_B;
                break;
            case 'C':
                ct = &ct_C;
                break;
            case 'D':
                ct = &ct_D;
                break;
            default:
                break;
            }

        ct->cancelOrder(act_id.substr(0, it_1), act_id.substr(it_1+1, 10), start_time, end_time) ;

    }

    else if (newOrder.length() == 29) { //增加订单

        int nRet = sscanf(newOrder.c_str(), "U%d %d-%d-%d %d:00~%d:00 %c",
                            &u_id, &nYear, &nMonth, &nDay, &start_time, &end_time, &place);

        if (7 != nRet || std::find(nPlace.begin(), nPlace.end(), place) == nPlace.end() ||
            start_time >= end_time ||  start_time < 9 || end_time > 22){
            std::cout<< "Error: the booking is invalid!"<< '\n';
            return;
        }

        auto it_1 = newOrder.find(' ');
        auto it_2 = newOrder.rfind(' ');

        Order order_01(newOrder.substr(0, it_1), newOrder.substr(it_1+1, (it_2 - it_1 -1)), place);

        //order_01.debug();

        switch (place)
        {
        case 'A':
            ct = &ct_A;
            break;
        case 'B':
            ct = &ct_B;
            break;
        case 'C':
            ct = &ct_C;
            break;
        case 'D':
            ct = &ct_D;
            break;
        default:
            break;
        }

        if (ct->isConflict(order_01)){
            std::cout<< "Error: the booking conflicts with existing bookings!"<< '\n';
            return;
        }

        ct->addOrder(order_01);
    }

    else {
        std::cout<< "Error: the booking is invalid!"<< '\n';
        return;
    }
}

//把4个球场的收入打印出来
void printSummary(){
    double total_pay = 0.0;
    std::cout<< "收入汇总"<<'\n'
             << "---"<< '\n'<<"场地:A"<< '\n';
    
    ct_A.computePayment();
    total_pay += ct_A.printPaymentSummary();

    std::cout<< '\n'<<"场地:B"<< '\n';
    ct_B.computePayment();
    total_pay += ct_B.printPaymentSummary();

    std::cout<< '\n'<<"场地:C"<< '\n';
    ct_C.computePayment();
    total_pay += ct_C.printPaymentSummary();

    std::cout<< '\n'<<"场地:D"<< '\n';
    ct_D.computePayment();
    total_pay += ct_D.printPaymentSummary();

    std::cout << "---"<< '\n'
              << "总计："<< total_pay <<"元"<<std::endl;
}
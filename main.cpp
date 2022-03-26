// 原题：
// https://www.dreamer.im/2019/04/27/%E9%9A%8F%E7%AC%94/thoughtworks2018%E6%A0%A1%E6%8B%9B%E9%9D%A2%E8%AF%95%E9%A2%98%E2%80%94%E2%80%94%E7%BE%BD%E6%AF%9B%E7%90%83%E9%A6%86/

# include <iostream>
# include <stdio.h>
# include <vector>
# include "func\generateSummary.h"

int main(int argc, char* argv[]){
    std::string u_input ;
    
    while(getline(std::cin, u_input)){
        if (u_input == " ")
            break;
        getNewOrder(u_input);
    }

    printSummary();

    std::cin.get();
    return 0;

}
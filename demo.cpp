//测试程序
# include <iostream>
# include <fstream>
# include <stdio.h>
# include <vector>
# include "func\generateSummary.h"
# include "config.h"

int main(int argc, char* argv[]){

    std::string demo_file_name = argv[1];

    std::ifstream in;
    in.open(TEXT_DIR + demo_file_name);
    std::string u_input ;
    
    while(getline(in, u_input)){
        if (u_input == " ")
            break;
        std::cout<<u_input<<'\n';
        getNewOrder(u_input);
    }

    printSummary();

    std::cin.get();
    return 0;

}
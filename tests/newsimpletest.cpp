/* 
 * File:   newsimpletest.cpp
 * Author: cpu10664-local
 *
 * Created on Jul 2, 2018, 2:09:40 PM
 */

#include <stdlib.h>
#include <iostream>

/*
 * Simple C++ Test Suite
 */

void test1() {
    std::cout << "newsimpletest test 1" << std::endl;
}

void test2() {
    std::cout << "newsimpletest test 2" << std::endl;
    std::cout << "%TEST_FAILED% time=0 testname=test2 (newsimpletest) message=error message sample" << std::endl;
}

int main(int argc, char** argv) {
    std::cout << "%SUITE_STARTING% newsimpletest" << std::endl;
    std::cout << "%SUITE_STARTED%" << std::endl;

    std::cout << "%TEST_STARTED% test1 (newsimpletest)" << std::endl;
    test1();
    std::cout << "%TEST_FINISHED% time=0 test1 (newsimpletest)" << std::endl;

    std::cout << "%TEST_STARTED% test2 (newsimpletest)\n" << std::endl;
    test2();
    std::cout << "%TEST_FINISHED% time=0 test2 (newsimpletest)" << std::endl;

    std::cout << "%SUITE_FINISHED% time=0" << std::endl;

    return (EXIT_SUCCESS);
}

/*
         shared_ptr<TTransport> socket(new TSocket("localhost", 9876));
//        shared_ptr<TTransport> transport(new TBufferedTransport(socket));
        this->transport = boost::make_shared<TTransport>(new TBufferedTransport(socket));
        shared_ptr<TProtocol> protocol(new TBinaryProtocol(this->transport));
        this->KCClient = boost::make_shared<KC_StorageClient>(protocol);
 */
// assembly3.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>

extern "C" int CelToFar_(int c);
extern "C" int Math_(int x, int y, int z);

int main()
{
	int c = 15;
	std::cout << CelToFar_(c) << std::endl;
	int x = 2;
	int y = 4;
	int z = 8; 
	std::cout << Math_(x, y, z) << std::endl;
	system("pause");

    std::cout << "Hello World!\n"; 
}

#include <iostream>
#include <vector>

bool AppActive = true;
char userInput;
int userNumber;
 class Queue  
{
private:
std::vector<int> numbersAll= {3, 31, 29, 4, 40};



public:
    Queue()
    {
   
    }
   
    void displayVector() //displays the vector by printing each variable one by one
    {
    std::cout << " Current queue: ";
    for (auto it = numbersAll.begin(); it != numbersAll.end(); ++it)
        {
            std::cout << ' ' << *it;
        }
    }
    
    void pushBack(int number) //inserts the given number to the end of array.
    {
    numbersAll.push_back(number);  
    }
    
    void Queueone()
    {
       
    std::string userInput;
    int LastNum;
    bool queueActive = true;
    int correctGuesses = 0;
   
    while (queueActive == true)
    {
        std::cout << "A number    " << numbersAll[0] <<" has arrived. can it be divided by 2? answer:";
        std::cin >> userInput;
       
        if (numbersAll[0] % 2 == 0)  
        {
       
            if (userInput == "yes")
            {
            correctGuesses +=1;
            }
           
        std::cout << "Yes, it can be divided by two."<< "\n";
        }
        else
        {
            if (userInput == "no")
            {
            correctGuesses +=1;
            }
            std::cout << "No, it can't be divided by two." << "\n";
        }

        numbersAll.erase(numbersAll.begin());
       
        if (numbersAll.empty()) //stops the queue if it is empty
        {
            queueActive = false;
        }
       
    }
    std::cout << "\n" << "Correct guesses: " << correctGuesses;
    }
   
};


int main() {
Queue myObj;
while(AppActive == true)
 {
std::cout << "\n" <<"Press 1 to add  a number to the end, 2 to check what numbers are dividable by 2 and  press 3 to exit. " << "\n";
std::cin >> userInput;

if(userInput == '1')
    {
 
    std::cout <<  "\n "<<"Enter a number that will be pushed to the end: ";
    std::cin >> userNumber;  
    myObj.pushBack(userNumber);
    myObj.displayVector();

    }
   
    else if (userInput == '2')
    {
    myObj.Queueone();
    }
   
 
   


    }
}
